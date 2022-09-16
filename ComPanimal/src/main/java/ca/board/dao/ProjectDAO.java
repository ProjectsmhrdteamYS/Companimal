package ca.board.dao;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


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
	
	
}
