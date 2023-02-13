package kr.or.ddit.lab.service;

import java.util.List;
import javax.inject.Inject;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import kr.or.ddit.lab.dao.NewsDAO;
import kr.or.ddit.lab.vo.NewsVO;
import kr.or.ddit.vo.PagingVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class NewsServiceImpl implements NewsService {
	@Inject
	private NewsDAO NewsDAO;
	
	@Override
	public void retrieveNewsList(PagingVO<NewsVO> pagingVO) {
		pagingVO.setTotalRecord(NewsDAO.selectTotalRecord(pagingVO));
		pagingVO.setDataList(NewsDAO.selectNewsList(pagingVO));
	}

	@Override
	public NewsVO retrieveNews(int newsNo) {
		NewsVO news = NewsDAO.selectNews(newsNo);
		NewsDAO.incrementHit(newsNo);
		return news;
	}

	@Override
	public int createNews(NewsVO news) {
		int rowcnt = NewsDAO.insertNews(news);
		return rowcnt;
	}

	@Override
	public int modifyNews(NewsVO news) {
		NewsVO savedNews = NewsDAO.selectNews(news.getNewsNo());
		int rowcnt = NewsDAO.updateNews(news);
		return rowcnt;
	}

	@Override
	public int removeNews(int newsNo) {
		int rowcnt = NewsDAO.deleteNews(newsNo);
		return rowcnt;
	}

}
