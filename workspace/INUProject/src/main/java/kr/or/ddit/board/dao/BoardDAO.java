package kr.or.ddit.board.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.board.vo.BoardVO;
import kr.or.ddit.vo.PagingVO;

@Mapper
public interface BoardDAO {
	// 상세조회
	public BoardVO selectBoard(String boardNo);

	// 전체 조회(total)
	public List<BoardVO> selectBoardList(PagingVO<BoardVO> pagingVO);

	// 전체 조회(main)
	public List<BoardVO> selectBoardList();

	// 전체레코드
	public int selectTotalRecord(PagingVO<BoardVO> pagingVO);

	// 등록
	public int insertBoard(BoardVO board);

	// 수정
	public int updateBoard(BoardVO board);

	// 삭제
	public int deleteBoard(BoardVO board);

	// 조회수
	public int updateHits(String boardNo);


}
