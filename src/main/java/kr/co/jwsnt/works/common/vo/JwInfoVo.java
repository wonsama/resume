package kr.co.jwsnt.works.common.vo;

import java.util.List;

/**
 * 각종 처리 결과에 대한 데이터 정보를 넘겨준다. 
 * @author parkwon
 * @since 2015.07.14
 */
public class JwInfoVo extends JwBaseVo{
	
	public static final int SUCCESS = 1;
	public static final int FAIL = -1;

	/**
	 * SN
	 */
	private static final long serialVersionUID = 1L;
	
	private int code;		//코드
	private int count;		//갯수 
	private String msg;		//메시지 
	private Object data;	//데이터
	private List<Object> datas;	//데이터 목록

	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public Object getData() {
		return data;
	}
	public void setData(Object data) {
		this.data = data;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public List<Object> getDatas() {
		return datas;
	}
	public void setDatas(List<Object> datas) {
		this.datas = datas;
	}
}
