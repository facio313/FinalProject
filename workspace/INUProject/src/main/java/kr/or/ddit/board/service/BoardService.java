package kr.or.ddit.board.service;

import java.util.List;

import kr.or.ddit.board.vo.BoardVO;

public interface BoardService {


	public BoardVO retrieveBoard(String boardNo);

	public List<BoardVO> retrieveBoardList();

	public int createBoard(BoardVO board);
}
