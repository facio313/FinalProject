package kr.or.ddit.commons;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;

import javax.inject.Inject;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.ddit.announcement.service.AnnoService;
import kr.or.ddit.announcement.vo.AnnoVO;
import kr.or.ddit.member.service.MemberService;
import kr.or.ddit.vo.IncruiterVO;
import kr.or.ddit.vo.SeekerVO;

@Controller
public class IndexController{
	
	@Inject
	private MemberService memService;
	
	@Inject
	private AnnoService annoService;
	
	@RequestMapping("/index.do")
	public String index(Model model, Authentication auth) throws ParseException {
		
		try {
			String memId = auth.getName();
			String role = auth.getAuthorities().toString();
			if (role.contains("SEEKER")) {
//				SeekerVO seeker = memService.retrieveSeeker(memId);
//				model.addAttribute("seeker", seeker);
			} else if (role.contains("INCRUITER")) {
				List<AnnoVO> list = annoService.retrieveMyAnnoList(memId);
				String now = LocalDate.now().toString().replace("-", "");
				model.addAttribute("now", now);
				model.addAttribute("list", list);				
			}
			
		} catch (NullPointerException e) {
			return "index";
		}
		
		return "index";
	}
}
