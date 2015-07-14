package kr.co.jwsnt.works.common.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * <pre>
 * CORS : Cross Origin Resource Sharing
 * 교차 기원에서의 자원 공유 => 쉽게 풀면 로컬에서 스크립트를 통해 자원접근을 제어하는 것
 * </pre>
 * @author PA1411039
 * @since 2015.01.07
 */
public class JwCorsFilter implements Filter{

	/**
	 * 로거 
	 */
	private static final Logger logger = LoggerFactory.getLogger(JwCorsFilter.class);
	
	/**
	 * Allow-Origin 적용
	 * => 로컬에서 스크립트를 통해 rest 서비스 호출이 가능해 진다.
	 */
	@Override
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException 
	{
		HttpServletResponse response = (HttpServletResponse) res;
		response.setHeader("Access-Control-Allow-Origin", "*");
		response.setHeader("Access-Control-Allow-Methods", "POST, GET");
		response.setHeader("Access-Control-Max-Age", "3600");
		response.setHeader("Access-Control-Allow-Headers", "Content-Type");		
		
		chain.doFilter( req, res );
	}
	
	/**
	 * 초기화
	 */
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {}
	
	/**
	 * 소멸자
	 */
	@Override
	public void destroy() {}
	
}
