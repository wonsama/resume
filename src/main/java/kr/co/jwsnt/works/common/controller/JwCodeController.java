package kr.co.jwsnt.works.common.controller;

import java.util.ArrayList;
import java.util.List;

import kr.co.jwsnt.works.common.service.JwCodeService;
import kr.co.jwsnt.works.common.vo.JwCodeVo;
import kr.co.jwsnt.works.common.vo.JwInfoVo;

import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 공통 코드 관련 컨트롤러 
 * @author parkwon 
 * @since 2015.07.13
 */
@Controller
public class JwCodeController {
	
	private static final Logger logger = LoggerFactory.getLogger(JwCodeController.class);	
	
	/**
	 * 서비스 : 공통코드 
	 */
	@Autowired
	JwCodeService jwCodeService;
	
	/**
	 * 삭제 : 공통코드 목록을 삭제한다  
	 * @param p 파라미터  
	 * @return 결과
	 * @since 2015.07.13
	 */
	@RequestMapping(value="/common/code/delete")
	public @ResponseBody JwInfoVo deleteCode(@ModelAttribute JwInfoVo p)
	{
		//로그 : 입력 파라미터 
		logger.info("p =====>" + p );
		
		//조회 값 설정
		String[] data = ((String) p.getData()).split(",");
		List<Object> datas = new ArrayList<Object>();
		for(String d : data){
			datas.add(d);
		}
		p.setDatas(datas);
		
		int count = jwCodeService.deleteCode(p);
		p.setCount(count);
		p.setMsg(count>0?"success":"fail");
		
		//결과 리턴
		return p;
	}
	
	/**
	 * 조회 : 공통코드 목록을 조회한다 
	 * @param p 파라미터 
	 * @return 결과
	 * @since 2015.07.13
	 */
	@RequestMapping(value="/common/code/list")
	public @ResponseBody List<JwCodeVo> selectCodeList(@ModelAttribute JwCodeVo p)
	{
		//로그 : 입력 파라미터 
		logger.info("p =====>" + p);
		
		//조회 : 공통코드 목록 조회 
		List<JwCodeVo> list = jwCodeService.selectCodeList(p);
		
		//결과 리턴
		return list;
	}
	
	
	
	/**
	 * 등록 : 공통코드 목록을 조회한다 
	 * @param p 파라미터  
	 * @return 결과
	 * @since 2015.07.13
	 */
	@RequestMapping(value="/common/code/insert")
	public @ResponseBody JwInfoVo insertCode(@ModelAttribute JwCodeVo p)
	{
		//로그 : 입력 파라미터 
		logger.info("p =====>" + p);
		
		//조회 : 공통코드 목록 조회 
		int index = jwCodeService.selectInsertIdx(p);
		
		//등록 : 		
		String cd_id = p.getGrp_id() +  StringUtils.leftPad(String.valueOf(index), 4, "0");
		
		//값 추가 설정
		p.setCd_id(cd_id);
		p.setCd_ord(index);
		
		//등록
		JwInfoVo info = new JwInfoVo();
		int count = jwCodeService.insertCode(p);
		info.setCount(count);
		info.setMsg(count==1?"success":"fail");
		
		//결과 리턴
		return info;
	}
	
	/**
	 * 조회 : 공통 그룹 목록을 조회한다 
	 * @param p 파라미터  
	 * @return 결과
	 * @since 2015.07.13
	 */
	@RequestMapping(value="/common/group/list")
	public @ResponseBody List<JwCodeVo> selectGroupList(@ModelAttribute JwCodeVo p)
	{
		//로그 : 입력 파라미터 
		logger.info("p =====>" + p);
		
		//조회 : 공통코드 목록 조회 
		List<JwCodeVo> list = jwCodeService.selectGroupList(p);
		
		//결과 리턴
		return list;
	}
	
	
	
}
