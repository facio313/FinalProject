package kr.or.ddit.process.service;

import java.util.List;

import kr.or.ddit.enumpkg.ServiceResult;
import kr.or.ddit.process.vo.ProcessVO;

public interface ProcessService {
	public List<ProcessVO> retrieveProcessList(String memId);
	public ProcessVO retrieveProcess(String daNo);
	public ServiceResult createProcess(List<ProcessVO> processList);
	public ServiceResult modifyProcess(ProcessVO process);
	public ServiceResult removeProcess(String daNo);
}
