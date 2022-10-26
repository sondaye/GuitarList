package team3.vo;

import org.springframework.web.multipart.MultipartFile;

public class review {
	private String rid;
	private String rctid;
	private String star;
	private String rcont;
	private MultipartFile report;
	/**
	 * 
	 */
	public review() {
		// TODO Auto-generated constructor stub
	}
	/**
	 * @param rid
	 * @param rctid
	 * @param star
	 * @param rcont
	 */
	public review(String rctid, String star, String rcont) {
		super();
		this.rctid = rctid;
		this.star = star;
		this.rcont = rcont;
	}
	public review(String rid, String rctid, String star, String rcont) {
		super();
		this.rid = rid;
		this.rctid = rctid;
		this.star = star;
		this.rcont = rcont;
	}
	public String getRid() {
		return rid;
	}
	public void setRid(String rid) {
		this.rid = rid;
	}
	public String getRctid() {
		return rctid;
	}
	public void setRctid(String rctid) {
		this.rctid = rctid;
	}
	public String getStar() {
		return star;
	}
	public void setStar(String star) {
		this.star = star;
	}
	public String getRcont() {
		return rcont;
	}
	public void setRcont(String rcont) {
		this.rcont = rcont;
	}
	public MultipartFile getReport() {
		return report;
	}
	public void setReport(MultipartFile report) {
		this.report = report;
	}
	
	
	

	
}

