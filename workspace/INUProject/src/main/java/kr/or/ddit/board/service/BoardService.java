package kr.or.ddit.board.service;

import java.util.List;
import java.util.Map;

import kr.or.ddit.board.vo.BoardVO;
import kr.or.ddit.board.vo.InterviewVO;
import kr.or.ddit.vo.PagingVO;

public interface BoardService {

	// 상세조회
	public BoardVO retrieveBoard(String boardNo);

	// 전체 조회(total)
	public void retrieveBoardList(PagingVO<BoardVO> pagingVO);

	// 전체 조회(main)
	public List<BoardVO> retrieveBoardList();

	// 등록
	public int createBoard(BoardVO board);

	// 수정
	public int modifyBoard(BoardVO board);

	// 삭제
	public int removeBoard(BoardVO board);

	// 조회수
	public int updateHits(String boardNo);

	// 좋아요 추가
	public int likeInsert(Map<String, Object> m) throws Exception;

	// 좋아요 개수
	public int likeCount(String boardNo);
}
