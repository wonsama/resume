package kr.co.jwsnt.works.common.service;

import java.util.List;

import kr.co.jwsnt.works.common.vo.JwUserVo;

/**
 * 사용자 관련 서비스  
 * @author parkwon
 * @since 2015.07.06 
 */
public interface JwCommonUserService {
	
	/**
	 * 사용자 목록을 조회한다  
	 * @param p 파라미터 
	 * @return 조회 결과
	 * @since 2015.07.06
	 */
	List<JwUserVo> selectList(JwUserVo p);
}
