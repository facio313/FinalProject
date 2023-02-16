package kr.or.ddit.board.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.board.vo.BoardVO;
import kr.or.ddit.vo.PagingVO;

/**
 * @author 임채리
 * @since 2023. 2. 6.
 * @version 1.0
 * @see javax.servlet.http.HttpServlet
 * <pre>
 * [[개정이력(Modification Information)]]
 * 수정일        수정자        수정내용
 * --------     --------    ----------------------
 * 2023. 2. 8.   임채리       최초작성
 * Copyright (c) 2023 by DDIT All right reserved
 *
 * 커뮤니티 게시판
 * </pre>
 */
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

	// 좋아요 추가
	public int likeInsert(Map<String, Object> m);

	// 좋아요 개수
	public int likeCount(String boardNo);

}
