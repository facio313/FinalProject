package kr.or.ddit.board.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.board.dao.BoardDAO;
import kr.or.ddit.board.vo.BoardVO;
import kr.or.ddit.board.vo.InterviewVO;
import kr.or.ddit.vo.PagingVO;

@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardDAO dao;

	// 상세조회
	@Override
	public BoardVO retrieveBoard(String boardNo) {
		BoardVO board = dao.selectBoard(boardNo);
		return board;
	}

	// 전체 조회(total)
	@Override
	public void retrieveBoardList(PagingVO<BoardVO> pagingVO) {
		pagingVO.setTotalRecord(dao.selectTotalRecord(pagingVO));
		pagingVO.setDataList(dao.selectBoardList(pagingVO));
	}

	// 전체 조회(main)
	@Override
	public List<BoardVO> retrieveBoardList() {
//		PagingVO<BoardVO> pagingVO = new PagingVO<BoardVO>(4,5);
//		pagingVO.setCurrentPage(1);
		List<BoardVO> boardList = dao.selectBoardList();
		return boardList;
	}

	// 등록
	@Override
	public int createBoard(BoardVO board) {
		int rowcnt = dao.insertBoard(board);
		return rowcnt;
	}

	// 수정
	@Override
	public int modifyBoard(BoardVO board) {
		int rowcnt = dao.updateBoard(board);
		return rowcnt;
	}

	// 삭제
	@Override
	public int removeBoard(BoardVO board) {
		int rowcnt = dao.deleteBoard(board);
		return rowcnt;
	}

	// 조회수
	@Override
	public int updateHits(String boardNo) {
		int rowcnt = dao.updateHits(boardNo);
		return rowcnt;
	}

	// 좋아요 추가
	@Override
	public int likeInsert(Map<String, Object> m) throws Exception {
		return dao.likeInsert(m);
	}

	// 좋아요 개수
	@Override
	public int likeCount(String boardNo){
		return dao.likeCount(boardNo);
	}

}
