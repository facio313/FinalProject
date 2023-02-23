package kr.or.ddit.selfpr.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.selfpr.dao.LikeDAO;
import kr.or.ddit.selfpr.vo.LikeVO;
import kr.or.ddit.vo.PagingVO;

@Service
public class LikeServiceImpl implements LikeService {

	@Inject
	private LikeDAO likeDAO;
	
	@Override
	public void retrieveLikeList(PagingVO<LikeVO> pagingVO) {
		pagingVO.setTotalRecord(likeDAO.selectTotalRecord(pagingVO));
		pagingVO.setDataList(likeDAO.selectLikeList(pagingVO));
	}

	@Override
	public int createLike(LikeVO like) {
		int rowcnt = likeDAO.insertLike(like);
		return rowcnt;
	}

}
