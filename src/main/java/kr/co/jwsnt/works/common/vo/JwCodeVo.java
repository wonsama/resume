package kr.co.jwsnt.works.common.vo;

/**
 * 공통 코드 VO
 * @author parkwon
 * @since 2015.06.29
 */
public class JwCodeVo extends JwBaseVo{
	
	/**
	 * SN 
	 */
	private static final long serialVersionUID = 1L;
	
	private String grp_id;				//그룹 ID
	private String grp_nm;			//그룹명
	private String cd_id;				//코드 ID
	private String cd_nm;			//코드명
	private int cd_ord;				//코드 정렬
	private String use_yn;			//사용 여부
	
	public String getGrp_id() {
		return grp_id;
	}
	public void setGrp_id(String grp_id) {
		this.grp_id = grp_id;
	}
	public String getCd_id() {
		return cd_id;
	}
	public void setCd_id(String cd_id) {
		this.cd_id = cd_id;
	}
	public String getCd_nm() {
		return cd_nm;
	}
	public void setCd_nm(String cd_nm) {
		this.cd_nm = cd_nm;
	}
	public int getCd_ord() {
		return cd_ord;
	}
	public void setCd_ord(int cd_ord) {
		this.cd_ord = cd_ord;
	}
	public String getUse_yn() {
		return use_yn;
	}
	public void setUse_yn(String use_yn) {
		this.use_yn = use_yn;
	}
	public String getGrp_nm() {
		return grp_nm;
	}
	public void setGrp_nm(String grp_nm) {
		this.grp_nm = grp_nm;
	}
		
}
