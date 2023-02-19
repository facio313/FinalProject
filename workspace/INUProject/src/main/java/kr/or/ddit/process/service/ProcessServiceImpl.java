package kr.or.ddit.process.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.enumpkg.ServiceResult;
import kr.or.ddit.process.dao.ProcessDAO;
import kr.or.ddit.process.vo.ProcessVO;

@Service
public class ProcessServiceImpl implements ProcessService {

	@Inject
	private ProcessDAO dao; 
	
	@Override
	public List<ProcessVO> retrieveProcessList(String cmpId) {
		List<ProcessVO> processList = dao.selectProcessList(cmpId);
		return processList;
	}
	
	@Override
	public ProcessVO retrieveProcess(String daNo, String pc) {
		ProcessVO process = dao.selectProcess(daNo, pc);
		return process;
	}

	@Override
	public ServiceResult createProcess(ProcessVO process) {
		int rowcnt = dao.insertProcess(process);
		return rowcnt > 0 ? ServiceResult.OK : ServiceResult.FAIL;
	}

	@Override
	public ServiceResult modifyProcess(ProcessVO process) {
		int rowcnt = dao.updateProcess(process);
		return rowcnt > 0 ? ServiceResult.OK : ServiceResult.FAIL;
	}

	@Override
	public ServiceResult removeProcess(String daNo) {
		int rowcnt = dao.deleteProcess(daNo);
		return rowcnt > 0 ? ServiceResult.OK : ServiceResult.FAIL;
	}

}
