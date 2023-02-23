package kr.or.ddit.board.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import kr.or.ddit.board.dao.BoardDAO;
import kr.or.ddit.board.vo.BoardVO;
import kr.or.ddit.vo.AttachVO;
import kr.or.ddit.vo.PagingVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardDAO dao;

/*	@Inject
	private AttachDAO attachDAO;

	@Value("#{appInfo.saveFiles}")
	private File saveFiles;

	@PostConstruct
	public void init() throws IOException {
		log.info("EL로 주입된 첨부파일 저장 경로 : {}", saveFiles.getCanonicalPath());
	}*/

	/*private int processAttatchList(BoardVO board) {

		List<AttachVO> attatchList = board.getAttatchList();
		if (attatchList == null || attatchList.isEmpty())
			return 0;
		// 1. metadata 저장 - DB (ATTATCH)
		log.info("board : {}", board);
		log.info("attactchList : {}" , attatchList);
		// 2. binary 저장 - Middle Tier : (D:\saveFiles)
		try {
			for (AttachVO attatch : attatchList) {
				attatch.saveTo(saveFiles);
			}
			int rowcnt = attachDAO.insertAttatches(board);
			return rowcnt;
		} catch (IOException e) {
			throw new RuntimeException(e);
		}
	}*/

	// 상세조회
	@Override
	public BoardVO retrieveBoard(String boardNo) {
		BoardVO board = dao.selectBoard(boardNo);
		if(board==null) {
			throw new UsernameNotFoundException(String.format(boardNo+"에 해당하는 게시글 없음."));
		}
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
		/*rowcnt += processAttatchList(board);*/
		return rowcnt;
	}

	// 수정
	@Override
	public int modifyBoard(BoardVO board) {
		/*BoardVO savedBoard = dao.selectBoard(board.getBoardNo());*/
		int rowcnt = dao.updateBoard(board);
		/*rowcnt += processAttatchList(board);
		int[] delAttonos = board.getDelAttNos();
		if(delAttonos!=null && delAttonos.length>0) {
			Arrays.sort(delAttonos);
			rowcnt += attachDAO.deleteAttatchs(board);
			String[] delAttSavenames = savedBoard.getAttatchList().stream()
					.filter(attach->{
						return Arrays.binarySearch(delAttonos, attach.getAttno())>=0;
					}).map(AttachVO::getAttSavename)
					.toArray(String[]::new);
			for(String saveName:delAttSavenames) {
				FileUtils.deleteQuietly(new File(saveFiles,saveName));
			}
		}*/
		return rowcnt;
	}

	// 삭제
	@Override
	public int removeBoard(BoardVO board) {
		int rowcnt = dao.deleteBoard(board);
	/*	rowcnt += attachDAO.deleteAttatchs(board.getBoardNo());*/
		return rowcnt;
	}

	// 조회수
	@Override
	public int updateHits(String boardNo) {
		int rowcnt = dao.updateHits(boardNo);
		return rowcnt;
	}

	// 좋아요 추가
//	@Override
//	public int insertLike(Map<String, Object> m) throws Exception {
//		return dao.insertLike(m);
//	}

	// 좋아요 개수
	@Override
	public int likeCount(String boardNo) {
		return dao.likeCount(boardNo);
	}

	// 좋아요 on
	@Override
	public String likeOn(String boardNo, String memId) {
		return dao.likeOn(boardNo, memId);
	}

	@Override
	public int likeInsert(Map<String, Object> m) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public AttachVO retrieveForDownload(String attId) {
		// TODO Auto-generated method stub
		return null;
	}

}
