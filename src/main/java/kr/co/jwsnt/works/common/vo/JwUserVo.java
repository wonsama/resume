package kr.co.jwsnt.works.common.vo;

/**
 * 인력 기본 정보 테이블 
 * @author parkwon
 *
 */
public class JwUserVo extends JwBaseVo{

	/**
	 * SN
	 */
	private static final long serialVersionUID = 1L;

	private int idx;		//인덱
	
	private String nm;		//이름 
	private String tel;		//연락처 
	private String rnk;		//등급 
	private int carr;		//연차 
	private String lang;	//언어 
	private String cont;	//최근 연락한 날 yyyymmdd
	private String sche;	//일정 yyyymmddyyyymmdd 시작일종료일, 없으면 놀고 있음 
	private String ref;		//비고 
	private String lnk;		//링크 정보 
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getNm() {
		return nm;
	}
	public void setNm(String nm) {
		this.nm = nm;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getRnk() {
		return rnk;
	}
	public void setRnk(String rnk) {
		this.rnk = rnk;
	}
	public int getCarr() {
		return carr;
	}
	public void setCarr(int carr) {
		this.carr = carr;
	}
	public String getLang() {
		return lang;
	}
	public void setLang(String lang) {
		this.lang = lang;
	}
	public String getCont() {
		return cont;
	}
	public void setCont(String cont) {
		this.cont = cont;
	}
	public String getSche() {
		return sche;
	}
	public void setSche(String sche) {
		this.sche = sche;
	}
	public String getRef() {
		return ref;
	}
	public void setRef(String ref) {
		this.ref = ref;
	}
	public String getLnk() {
		return lnk;
	}
	public void setLnk(String lnk) {
		this.lnk = lnk;
	}
	
}
