package kr.or.ddit.process.service;

import java.util.List;

import kr.or.ddit.enumpkg.ServiceResult;
import kr.or.ddit.process.vo.ProcessVO;

/**
 * @author 최경수
 * @since 2023. 2. 18.
 * @version 1.0
 * @see javax.servlet.http.HttpServlet
 * <pre>
 * [[개정이력(Modification Information)]]
 * 	    수정일               수정자                                     수정내용
 * --------     --------    ----------------------
 * 2023. 2. 17.     최경수        최초작성
 * 2023. 2. 18.     최경수        목록 찾기 세분화 
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
public interface ProcessService {
	
	/**
	 * 한 회사가 가진 모든 공고에 대한 모든 채용과정
	 * @param cmpId
	 * @return
	 */
	public List<ProcessVO> retrieveProcessList(String cmpId);
	
	/**
	 * 하나의 채용과정
	 * @param daNo
	 * @param pc
	 * @return
	 */
	public ProcessVO retrieveProcess(String daNo, String pc);
	
	/**
	 * 채용과정 입력(2개 ~ 8개) - 입사지원서와 임원면접은 고정 
	 * @param process지만 ProcessVO가 가진 processList가 들어감
	 * @return입력된 채용과정 수
	 */
	public ServiceResult createProcess(ProcessVO process);
	
	/**
	 * 채용과정 수정(1개 ~ 8개) - 컨트롤러에서 기존 것과 같은지 확인 후 다른 것만 담아서 보내온 processList
	 * @param process지만 ProcessVO가 가진 processList가 들어감
	 * @return 수정된 채용과정 수
	 */
	public ServiceResult modifyProcess(ProcessVO process);
	
	/**
	 * 채용과정 삭제 - 여러 개로 할지 한 개로 할지 안 정함, 지금은 한 개
	 * @param daNo
	 * @return 삭제된 채용과정 수
	 */
	public ServiceResult removeProcess(String daNo);
}
