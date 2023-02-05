package kr.or.ddit.api;

import org.springframework.stereotype.Service;

import kr.or.ddit.api.dao.ApiDAO;
import kr.or.ddit.api.vo.CommonCodeVO;
import kr.or.ddit.api.vo.JobCodeVO;
import kr.or.ddit.api.vo.RegionCodeVO;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ApiService {
	private final ApiDAO apiDao;
	
	public void insertCommonCode(CommonCodeVO vo) {
		apiDao.insertCommonCode(vo);
	}
	public void insertRegionCode(RegionCodeVO vo) {
		apiDao.insertRegionCode(vo);
	}
	public void insertJobCode(JobCodeVO vo) {
		apiDao.insertJobCode(vo);
	}
	
}
