package kr.or.ddit.commons;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.vo.AttachVO;


@Mapper
public interface AttachDAO {
//	public int insertAttatches(BoardVO board);
	public List<AttachVO> selectAttatchList(int boNo);
	public AttachVO selectAttatch(int attNo);
//	public int deleteAttatches(BoardVO board);
}
