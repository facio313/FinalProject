package kr.or.ddit.board.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.board.vo.BoardVO;

@Mapper
public interface BoardDAO {
	public BoardVO selectBoard(String boardNo);
	public List<BoardVO> selectBoardList();
	public int insertBoard(BoardVO board);

}
