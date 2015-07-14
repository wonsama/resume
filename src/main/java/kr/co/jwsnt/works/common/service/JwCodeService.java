package kr.co.jwsnt.works.common.service;

import java.util.List;

import kr.co.jwsnt.works.common.vo.JwCodeVo;
import kr.co.jwsnt.works.common.vo.JwInfoVo;

/**
 * 서비스 : 공통코드 관련  
 * @author parkwon
 * @since 2015.07.13
 */
public interface JwCodeService {
	
	/**
	 * 삭제 : 공통코드를 삭제 한다  
	 * @param p 파라미터 
	 * @return 결과 
	 * @since 2015.07.14
	 */
	int deleteCode( JwInfoVo p );
	
	/**
	 * 조회 : 공통 그룹 코드 목록을 조회한다 
	 * @param p 파라미터  
	 * @return 결과
	 * @since 2015.07.13
	 */
	List<JwCodeVo> selectGroupList(JwCodeVo p);
	
	/**
	 * 조회 : 공통코드 목록을 조회한다 
	 * @param p 파라미터  
	 * @return 결과
	 * @since 2015.07.13
	 */
	List<JwCodeVo> selectCodeList(JwCodeVo p);
	
	/**
	 * 등록 : 공통 코드를 등록한다 
	 * @param p 등록 정보 
	 * @return 등록 갯수
	 * @since 2015.07.13
	 */
	int insertCode(JwCodeVo p);
	
	/**
	 * 조회 : 등록 용 인덱스 정보를 얻어온다 
	 * @param p 파라미터 
	 * @return 인덱스 
	 * @since 2015.07.14
	 */
	int selectInsertIdx( JwCodeVo p );
		
}
