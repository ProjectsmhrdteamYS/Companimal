package ca.board.dao;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import ca.board.dao.cboardVO;

public class ProjectDAO {
	private static SqlSessionFactory sqlSessionFactory;
	
	static {
		try {
			String resource="ca/board/dao/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// 회원가입 메소드
	public void signupMethod(userVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		session.insert("signupMethod", vo);
		session.commit();
		session.close();
	}
	
	// 로그인 메소드
	public userVO loginMethod(userVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		userVO uvo = session.selectOne("loginMethod", vo);
		session.close();
		return uvo;
	}
	// 커뮤니티 게시판 전체 리스트 가져오기 메소드

	public List<cboardVO> cList() {
		SqlSession session = sqlSessionFactory.openSession();
		List<cboardVO> list = session.selectList("cList");
		session.close();
		return list;
	}
	// 커뮤니티 게시판 글쓰기 메소드
	public void insertc(cboardVO vo) {
		SqlSession session =sqlSessionFactory.openSession();
		session.insert("insertc", vo);
		session.commit();
		session.close();
	}
	// 커뮤니티 게시판 상세보기 메소드
	public cboardVO cdetail(int c_seq) {
		SqlSession session = sqlSessionFactory.openSession();
		cboardVO vo = session.selectOne("cdetail", c_seq);
		session.close();
		return vo;
	}
	// 커뮤니티 게시판 조회수 증가 메소드
	public void countc(int c_seq) {
		SqlSession session = sqlSessionFactory.openSession();
		session.update("countc",c_seq);
		session.commit();
		session.close();
	}
	// 커뮤니티 게시판 수정 메소드
	public void cUpdate(int c_seq) {
		SqlSession session = sqlSessionFactory.openSession();
		session.update("cUpdate",c_seq);
		session.commit();
		session.close();
	}
	// 커뮤니티 게시판 삭제 메소드
	public void cboardDelete(int c_seq) {
		SqlSession session = sqlSessionFactory.openSession();
		cboardVO vo = session.selectOne("cboardDelete", c_seq);
		session.commit();
		session.close();
	}
	// 찾아주세요 게시판 전체 리스트 가져오기 메소드
	public List<fboardVO> fList() {  
		SqlSession session=sqlSessionFactory.openSession();
		List<fboardVO> list = session.selectList("fList");  
		session.close();
		return list;
	}
	// 찾아주세요 게시판 글쓰기 메소드
		public void insertf(fboardVO vo) {
			SqlSession session =sqlSessionFactory.openSession();
			session.insert("insertf", vo);
			session.commit();
			session.close();
		}
	// 찾아주세요 게시판 상세보기 메소드
	public fboardVO fdetail(int idx) {
		SqlSession session = sqlSessionFactory.openSession();
		fboardVO vo = session.selectOne("fdetail", idx);
		session.close();
		return vo;
	}
	// 찾아주세요 게시판 조회수 증가 메소드
	public void countf(int idx) {
		SqlSession session = sqlSessionFactory.openSession();
		session.update("countf",idx);
		session.commit();
		session.close();
	}
	// 찾아주세요 게시판 수정 메소드
	public void fUpdate(int idx) {
		SqlSession session = sqlSessionFactory.openSession();
		session.update("fUpdate",idx);
		session.commit();
		session.close();
	}
	// 찾아주세요 게시판 삭제 메소드
	public void fboardDelete(int idx) {
		SqlSession session = sqlSessionFactory.openSession();
		fboardVO vo = session.selectOne("fboardDelete", idx);
		session.commit();
		session.close();
	}
	
}
