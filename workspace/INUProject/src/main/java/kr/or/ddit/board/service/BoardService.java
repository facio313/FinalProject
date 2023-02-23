package kr.or.ddit.board.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import kr.or.ddit.board.vo.BoardVO;
import kr.or.ddit.vo.AttachVO;
import kr.or.ddit.vo.PagingVO;

public interface BoardService {

	/**
	 * @param boardNo
	 * @return 존재여부(NotExistBoardException)
	 */
	// 상세조회
	public BoardVO retrieveBoard(String boardNo);

	// 전체 조회(total)
	public void retrieveBoardList(PagingVO<BoardVO> pagingVO);

	// 전체 조회(main)
	public List<BoardVO> retrieveBoardList();

	// 등록
	public int createBoard(BoardVO board);

	/**
	 * @param board
	 * @return 존재여부(NotExistBoardException), 인증성공여부(AuthenticationException), rowcnt
	 */
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

	// 좋아요 on
	public String likeOn(@Param("boardNo") String boardNo, @Param("memId") String memId);

	// 첨부파일
	public AttachVO retrieveForDownload(String attId);
}
