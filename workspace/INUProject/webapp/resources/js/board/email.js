(function ($) {
    var sendCodeTimer = null;
    var $btnPop = $('.btn_cert_pop'),
        $channel = $('#channel'),//
        clearId = '',
        $emailConfirmMsg = $('#email_confirm_msg'),
        $emailCode = $('#email_code'),
        $confirmRemainMailTimeArea = $('#confirm_remain_mail_time_area'),
        $smsConfirmComplete = $('#sms_confirm_complete'),
        $confirmStatus = $('#confirm_status'),//
        $emailId = $('#help_email'),
        $layerPopByEmail = $('#layer_pop_byemail'),
        $mailConfirmComplete = $('#mail_confirm_complete');//


    $btnPop.on('click', function () {
        var email_str = $emailId.val();
        if ($emailId.val() === '') {
            alert("이메일 주소를 입력해주세요.");
            $emailId.focus();
            return;

        }

        //메일정상여부
        if(!/^[0-9a-z_+-]+([\.]*[0-9a-z_+-])*@([0-9a-z_-]+\.)+[a-z]{2,10}$/i.test(email_str)) {
            $emailId.focus();
            alert("잘못된 이메일 주소입니다. 이메일 주소를 정확하게 입력해주세요.");
            return;
        }

        $btnPop.removeClass('active');
        $(this).addClass('active');

        $('#' + $(this).data('popupid')).addClass('open');

        if ($('#' + $(this).data('popupid')).css("display") === 'none') {
            $('#' + $(this).data('popupid')).css("display", '')
        }

        $mailConfirmComplete.val('n');

        if ($mailConfirmComplete.val() === 'y') {
            $layerPopByEmail.removeClass('open');
            alert("인증이 이미 완료되었습니다.");
            return;
        }

        if (sendCodeAction()) {
            layerPopupText();
        } else {
            $('#sms_layer_sub_title').text('인증번호를 보낼 수가 없습니다.');
            $('#email_layer_sub_title').text('인증번호를 보낼 수가 없습니다.');
        }
    });

    // 인증 번호 발송 후 텍스트 처리
    layerPopupText = function () {
        var email = $emailId.val();
        $('#email_layer_sub_title').html(email + '로 인증번호가 발송되었습니다.' + '<br />' + '이메일로 전달받은 인증번호를 입력해주세요.');
        $emailCode.focus();
    };


    // 인증번호 발송.
    sendCodeAction = function () {

        $emailConfirmMsg.hide();

        if ($mailConfirmComplete.val() === 'y') {
            alert("인증이 이미 완료되었습니다. 인증완료 버튼을 눌러주세요.");
            return;
        }

        var email = $emailId.val();

        var returnBool = true;

        if (sendCodeTimer) {
            clearTimeout(sendCodeTimer);
        }

        sendCodeTimer = setTimeout(function() {
            $.ajax('/zf_user/persons/send-code', {
                type: 'POST',
                data: {
                    email: email,
                    channel: $channel.val(),
                    needCheckLimit : 'y'
                },
                async : false,
                dataType: 'json',
                success: function (json) {

                    if (json.code === 'limit.send') {
                        alert(json.msg);
                        returnBool = false;
                        return changeConfirmText('warning_txt', json.msg);
                    }
                    if (json === "invalid_email") {
                        returnBool = false;
                        return changeConfirmText('warning_txt', '이메일주소가 올바르지 않습니다.');
                    }
                    if (json.code === "certification_notice") {
                        returnBool = false;
                        return changeConfirmText('warning_txt', "일시적인 오류로 인하여 " + json.message + " 이용이 불가능합니다. 잠시 후 다시 이용해주세요.");
                    }
                    startConfirmTimer();
                    return true;
                }

            })},300);

        return returnBool;
    };


    function startConfirmTimer() {
        var minute = 3;
        var second = 0;


        $confirmRemainMailTimeArea.html('남은시간 (<span id="confirm_mail_remain_time"></span>)');

        setTimeText(minute, second);

        stopConfirmTimer();

        clearId = setInterval(lap, 1000);

        function setTimeText(minute, second) {
            var second_text = (second / 10) < 1 ? "0" + second : second;
            $('#confirm_mail_remain_time').html(minute + ':' + second_text);
        }

        function lap() {
            if (second == 0 && minute > 0) {
                second = 59;
                minute -= 1;
            } else {
                second -= 1;
            }

            setTimeText(minute, second);

            if (minute == 0 && second == 0) {
                changeConfirmText('warning_txt', '입력시간이 만료되었습니다. 인증번호를 다시 발송해주세요.');
                $confirmRemainMailTimeArea.html('');
                stopConfirmTimer();
            }
        }
    }

    function stopConfirmTimer() {
        if (clearId) {
            clearInterval(clearId);
            clearId = '';
        }
    }

    confirm_layer_close = function (obj) {
        if(!confirm('인증을 하지 않으면 문의하기를 사용 할 수 없어요.\n그래도 창을 닫으시겠어요?\n(창을 닫으시면 현재 발송된 인증번호는 더 이상 사용하실 수 없습니다.)')){
            return;
        }
        stopConfirmTimer();
        $btnPop.removeClass('on');
        $mailConfirmComplete.val('n');
        $emailId.attr('readonly', false);
        $confirmRemainMailTimeArea.html('');
        $emailConfirmMsg.hide();
        $emailCode.val('');
        $(obj).closest('.layer_identify').removeClass('open');

    };

    $('.confirm-action.person').on('click', function (e) {

        if ($mailConfirmComplete.val() === 'y') {
            alert("인증이 이미 완료되었습니다. 인증완료 버튼을 눌러주세요.");
            return;
        }

        var email = '',
            send_code = '';

        email = $emailId.val();
        $emailCode.val($.trim($emailCode.val()));
        send_code = $emailCode.val();

        if (send_code === '') {
            changeConfirmText('warning_txt', '인증번호를 입력해주세요.');
            return;
        }

        $.ajax({
            url: '/zf_user/persons/validate-code',
            type: 'POST',
            data: {
                category: 'join',
                seq: $('#seq').val(),
                code: send_code,
                channel: $channel.val(),
                email: email
            },
            dataType: 'json',
            success: function (json) {
                if (json === 'limit.cert') {
                    alert('본인 인증이 5회 이상 실패하여 24시간 동안 인증이 제한됩니다.\n제한해제를 원하실 경우, 고객센터로 문의해주세요.');
                    stopConfirmTimer();
                    return false;
                }

                if (json === 'confirms.verified') {
                    stopConfirmTimer();
                    $smsConfirmComplete.val('n');
                    $mailConfirmComplete.val('y');
                    $emailCode.attr('readonly', true);
                    $confirmRemainMailTimeArea.html('');
                    $emailId.attr('readonly', true);
                    $btnPop.addClass('on');
                    changeConfirmText('good_txt', '인증되었습니다.');
                    return;
                }
                // confirms.invalid_token
                $mailConfirmComplete.val('n');

                changeConfirmText('warning_txt', '인증번호가 틀렸습니다. 다시 입력해주세요.');
            },
            error: function (error) {
                stopConfirmTimer();
                changeConfirmText('warning_txt', '인증번호 확인 오류. 다시 확인해주세요.');
            }

        });
    });


    function changeConfirmText(type, text) {
        if ($emailConfirmMsg.attr('class') === type) {
            $emailConfirmMsg.html(text);
            $emailConfirmMsg.show();
        } else {
            $emailConfirmMsg.removeClass().addClass(type).html(text);
            $emailConfirmMsg.show();
        }
    }

    changeConfirmCell = function () {
        if ($mailConfirmComplete.val() === 'y') {
            $emailId.attr('readonly', true);
            $('.layer_identify.open').removeClass('open');
            $confirmStatus.val('complete');
        } else {
            alert('인증을 완료하세요.');
        }
    };
})(jQuery);