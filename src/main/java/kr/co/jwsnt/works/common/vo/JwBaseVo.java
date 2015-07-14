package kr.co.jwsnt.works.common.vo;

import java.io.Serializable;

import org.apache.commons.lang3.builder.ToStringBuilder;

/**
 * 기본 VO
 * @author parkwon
 * @since 2015.06.24
 */
public class JwBaseVo implements Serializable{
	
	private int no; //row index
	
	/**
	 * SN
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * 개체 정보를 출력
	 */
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

}
