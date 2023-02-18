package kr.or.ddit.process.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.process.vo.ProcessVO;

@Mapper
public interface ProcessDAO {
	public List<ProcessVO> selectProcessList(String memId);
	public ProcessVO selectProcess(String daNo);
	public int insertProcess(List<ProcessVO> processList);
	public int updateProcess(ProcessVO process);
	public int deleteProcess(String daNo);
}
