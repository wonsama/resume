package kr.co.jwsnt.works.common.controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import kr.co.jwsnt.works.common.service.JwCommonUserService;
import kr.co.jwsnt.works.common.vo.JwUserVo;

import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 사용자 관련 컨트롤러 
 * @author parkwon 
 * @since 2015.07.06
 */
@Controller
public class JwCommonUserController {
	
	/**
	 * 로거 
	 */
	private static final Logger logger = LoggerFactory.getLogger(JwCommonUserController.class);	
	
	@Autowired
	JwCommonUserService jwCommonUserService;
	
	@RequestMapping(value="/common/user/list")
	public String codeList(Model model, @ModelAttribute JwUserVo p)
	{
		//로그
		logger.info("common - user - list");
		logger.info("p =====>" + p);
		
		//목록 조회 
		List<JwUserVo> list = jwCommonUserService.selectList(p);
		
		//화면 값 설정 
		model.addAttribute("list", list);
		
		//조회 값 설정
		model.addAttribute("search", p);
		
		return "common/user/list";
	}
	
	@RequestMapping(value="/common/user/list/json", method={RequestMethod.POST, RequestMethod.GET})
	public @ResponseBody List<JwUserVo> codeListJson(@ModelAttribute JwUserVo p, HttpServletRequest req)
	{
		logger.info( inputStreamToString( req ) );
		logger.info( "p :::: " + p );
		
		List<JwUserVo> list = jwCommonUserService.selectList(p);
		return list;
	}
	
	/**
	 * 요청정보에 존재하는 InputStream정보를 문자열로 바꿔 가져온다.
	 * @param request 요청정보
	 * @since 2015.03.24
	 */
	private String inputStreamToString(HttpServletRequest request)
	{
		InputStream is;
		try {
			is = request.getInputStream();
			return new String(IOUtils.toByteArray(is));
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
}
