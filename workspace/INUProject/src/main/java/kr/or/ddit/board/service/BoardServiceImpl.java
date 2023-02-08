package kr.or.ddit.board.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.board.dao.BoardDAO;
import kr.or.ddit.board.vo.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardDAO dao;

	@Override
	public BoardVO retrieveBoard(String boardNo) {
		BoardVO board = dao.selectBoard(boardNo);
		return board;
	}

	@Override
	public List<BoardVO> retrieveBoardList() {
		List<BoardVO> boardList = dao.selectBoardList();
		return boardList;
	}

	@Override
	public int createBoard(BoardVO board) {
		int rowcnt = dao.insertBoard(board);
		return rowcnt;
	}


}
