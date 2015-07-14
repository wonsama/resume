package kr.co.jwsnt.works.common.service;

import java.util.List;

import kr.co.jwsnt.works.common.vo.JwUserVo;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class JwCommonUserServiceImpl implements JwCommonUserService {

	/**
	 * SQL 세션
	 */
	@Autowired
	SqlSession sqlSession;
	
	private final String NAME_SPACE = "kr.co.jwsnt.works.common.user.";
	
	@SuppressWarnings("unused")
	private static final Logger logger = LoggerFactory.getLogger(JwCommonUserServiceImpl.class);

	@Override
	public List<JwUserVo> selectList(JwUserVo p) {
		List<JwUserVo> list = sqlSession.selectList( NAME_SPACE + "selectList", p);
		return list;
	}

}
