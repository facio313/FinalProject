package kr.or.ddit.help.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.help.vo.AskVO;

@Mapper
public interface AskDAO {
	public AskVO selectAsk(String askNo);
	public List<AskVO> selectAskList();
	public int insertAsk(AskVO ask);
}
