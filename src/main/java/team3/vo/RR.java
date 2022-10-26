package team3.vo;

public class RR {
	private String product;
	private String star;
	private String rcont;
	/**
	 * 
	 */
	public RR() {
		// TODO Auto-generated constructor stub
	}
	/**
	 * @param product
	 * @param star
	 * @param rcont
	 */
	public RR(String product, String star, String rcont) {
		super();
		this.product = product;
		this.star = star;
		this.rcont = rcont;
	}
	public String getProduct() {
		return product;
	}
	public void setProduct(String product) {
		this.product = product;
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
	

}
