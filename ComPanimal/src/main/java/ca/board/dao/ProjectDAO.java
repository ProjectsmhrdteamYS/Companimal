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
	// 회원 수정 메소드
	public void user_update(userVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		session.update("user_update",vo);
		session.commit();
		session.close();
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
	public void cupdate(cboardVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		session.update("cupdate",vo);
		session.commit();
		session.close();
	}
	// 커뮤니티 게시판 삭제 메소드
	public void cboardDelete(int c_seq) {
		SqlSession session = sqlSessionFactory.openSession();
		int vo = session.delete("cboardDelete", c_seq);
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
	public fboardVO fdetail(int f_seq) {
		SqlSession session = sqlSessionFactory.openSession();
		fboardVO vo = session.selectOne("fdetail", f_seq);
		session.close();
		return vo;
	}
	// 찾아주세요 게시판 조회수 증가 메소드
	public void countf(int f_seq) {
		SqlSession session = sqlSessionFactory.openSession();
		session.update("countf",f_seq);
		session.commit();
		session.close();
	}
	// 찾아주세요 게시판 수정 메소드
	public void fUpdate(fboardVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		session.update("fUpdate",vo);
		session.commit();
		session.close();
	}
	// 찾아주세요 게시판 삭제 메소드
	public void fboardDelete(int idx) {
		SqlSession session = sqlSessionFactory.openSession();
		int vo = session.delete("fboardDelete", idx);
		session.commit();
		session.close();
	}
	
	
	
	// 동물 등록 메소드
	public void petinsert(petVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		session.insert("petinsert",vo);
		session.commit();
		session.close();
	}
	// 댓글 쓰기 메소드
		public void insertcomment(mentVO vo) {
			SqlSession session =sqlSessionFactory.openSession();
			session.insert("insertcomment", vo);
			session.commit();
			session.close();
		}
	// 댓글 전체 보기
		public List<mentVO> mentList() {  
			SqlSession session=sqlSessionFactory.openSession();
			List<mentVO> list = session.selectList("mentList");  
			session.close();
			return list;
		}
	// 댓글 삭제
		public void mentDelete(int idx) {
			SqlSession session = sqlSessionFactory.openSession();
			int vo = session.delete("mentDelete", idx);
			session.commit();
			session.close();
		}
	// 동물 db 부르기
			public petVO search(petVO vo) {
				SqlSession session = sqlSessionFactory.openSession();
				petVO pvo = session.selectOne("search", vo);
				session.close();
				return pvo;
		}
			//본인 댓글 삭제 
			public void commentDelete(int cmt_seq) {
				SqlSession session = sqlSessionFactory.openSession();
				int vo = session.delete("commentDelete", cmt_seq);
				session.commit();
				session.close();
}
			public List<petVO> petlist(petVO vo){
				SqlSession session = sqlSessionFactory.openSession();
				List<petVO> list = session.selectList("petlist",vo);
				session.close();
				return list;
			}
}