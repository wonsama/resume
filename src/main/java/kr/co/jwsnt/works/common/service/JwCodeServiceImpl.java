package kr.co.jwsnt.works.common.service;

import java.util.List;

import kr.co.jwsnt.works.common.vo.JwCodeVo;
import kr.co.jwsnt.works.common.vo.JwInfoVo;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 서비스 : 공통코드 관련  
 * @author parkwon
 * @since 2015.07.13
 */
@Service
public class JwCodeServiceImpl implements JwCodeService {

	/**
	 * SQL 세션
	 */
	@Autowired
	SqlSession sqlSession;
	
	private final String NAME_SPACE = "kr.co.jwsnt.works.common.code.";
	
	@SuppressWarnings("unused")
	private static final Logger logger = LoggerFactory.getLogger(JwCodeServiceImpl.class);
	
	@Override
	public List<JwCodeVo> selectCodeList(JwCodeVo p) {
		List<JwCodeVo> list = sqlSession.selectList( NAME_SPACE + "selectCodeList", p);
		return list;
	}

	@Override
	public int insertCode(JwCodeVo p) {
		
		int count = sqlSession.insert( NAME_SPACE + "insertCode", p);
		return count;
	}

	@Override
	public List<JwCodeVo> selectGroupList(JwCodeVo p) {
		
		List<JwCodeVo> list = sqlSession.selectList( NAME_SPACE + "selectGroupList", p);
		return list;
	}

	@Override
	public int selectInsertIdx(JwCodeVo p) {
		int index = sqlSession.selectOne( NAME_SPACE + "selectInsertIdx", p);
		return index;
	}

	@Override
	public int deleteCode(JwInfoVo p) {
		int count = sqlSession.delete( NAME_SPACE + "deleteCode", p);
		return count;
	}

}
