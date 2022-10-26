package team3.vo;

public class receipt {
	private String rctid;
	private String product;
	/**
	 * 
	 */
	public receipt() {
		// TODO Auto-generated constructor stub
	}
	/**
	 * @param rctid
	 * @param product
	 */
	
	public receipt(String rctid, String product) {
		super();
		this.rctid = rctid;
		this.product = product;
	}
	/**
	 * @param rctid
	 */
	public receipt(String rctid) {
		super();
		this.rctid = rctid;
	}
	public String getRctid() {
		return rctid;
	}
	public void setRctid(String rctid) {
		this.rctid = rctid;
	}
	public String getProduct() {
		return product;
	}
	public void setProduct(String product) {
		this.product = product;
	}
	

}
