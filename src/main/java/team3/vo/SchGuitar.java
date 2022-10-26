package team3.vo;
// team3.vo.SchGuitar
public class SchGuitar {
	/*
CREATE TABLE guitar(
	guitarid varchar2(200) PRIMARY KEY,
	brand varchar2(50) CONSTRAINT guitar_brand_ck CHECK(brand IN('깁슨','펜더','스털링','에피폰','스콰이어','바커스')),
	gname varchar2(500),
	color varchar2(500),
	neck varchar2(50) CONSTRAINT guitar_neck_ck CHECK(neck IN('로즈우드','메이플','인디안로렐')),
	bridge varchar2(500),
 	standard varchar2(100) CONSTRAINT guitar_standard_ck CHECK(standard IN('입문','중급','고급')),
 	img varchar2(4000));
	 */
	private String guitarid;
	private String guitarid1;
	private String guitarid2;
	private String brand;
	private String gname;
	private String color;
	private String neck;
	private String bridge;
	private String standard;
	private String img;
	private String standard1;
	private String standard2;
	private String neck1;
	private String neck2;
	private String brand1;
	private String brand2;
	private String brand3;
	private String brand4;
	private String brand5;
	private int price;
	public SchGuitar() {
		// TODO Auto-generated constructor stub
	}
	
	public SchGuitar(String brand, String neck, String standard, String standard1, String standard2, String neck1,
			String neck2, String brand1, String brand2, String brand3, String brand4, String brand5) {
		this.brand = brand;
		this.neck = neck;
		this.standard = standard;
		this.standard1 = standard1;
		this.standard2 = standard2;
		this.neck1 = neck1;
		this.neck2 = neck2;
		this.brand1 = brand1;
		this.brand2 = brand2;
		this.brand3 = brand3;
		this.brand4 = brand4;
		this.brand5 = brand5;
	}

	public SchGuitar(String guitarid, String guitarid1, String guitarid2, String brand, String gname, String color,
			String neck, String bridge, String standard, String img, String standard1, String standard2,
			String neck1, String neck2, String brand1, String brand2, String brand3, String brand4, String brand5) {
		this.guitarid = guitarid;
		this.guitarid1 = guitarid1;
		this.guitarid2 = guitarid2;
		this.brand = brand;
		this.gname = gname;
		this.color = color;
		this.neck = neck;
		this.bridge = bridge;
		this.standard = standard;
		this.img = img;
		this.standard1 = standard1;
		this.standard2 = standard2;
		this.neck1 = neck1;
		this.neck2 = neck2;
		this.brand1 = brand1;
		this.brand2 = brand2;
		this.brand3 = brand3;
		this.brand4 = brand4;
		this.brand5 = brand5;
	}

	/**
	 * @param guitarid
	 * @param guitarid1
	 * @param guitarid2
	 * @param brand
	 * @param gname
	 * @param color
	 * @param neck
	 * @param bridge
	 * @param standard
	 * @param img
	 */
	public SchGuitar(String guitarid, String guitarid1, String guitarid2, String brand, String gname, String color,
			String neck, String bridge, String standard, String img) {
		this.guitarid = guitarid;
		this.guitarid1 = guitarid1;
		this.guitarid2 = guitarid2;
		this.brand = brand;
		this.gname = gname;
		this.color = color;
		this.neck = neck;
		this.bridge = bridge;
		this.standard = standard;
		this.img = img;
	}
	public String getGuitarid() {
		return guitarid;
	}
	public void setGuitarid(String guitarid) {
		this.guitarid = guitarid;
	}
	public String getGuitarid1() {
		return guitarid1;
	}
	public void setGuitarid1(String guitarid1) {
		this.guitarid1 = guitarid1;
	}
	public String getGuitarid2() {
		return guitarid2;
	}
	public void setGuitarid2(String guitarid2) {
		this.guitarid2 = guitarid2;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getNeck() {
		return neck;
	}
	public void setNeck(String neck) {
		this.neck = neck;
	}
	public String getBridge() {
		return bridge;
	}
	public void setBridge(String bridge) {
		this.bridge = bridge;
	}
	public String getStandard() {
		return standard;
	}
	public void setStandard(String standard) {
		this.standard = standard;
	}

	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}

	public String getStandard1() {
		return standard1;
	}

	public void setStandard1(String standard1) {
		this.standard1 = standard1;
	}

	public String getStandard2() {
		return standard2;
	}

	public void setStandard2(String standard2) {
		this.standard2 = standard2;
	}

	public String getNeck1() {
		return neck1;
	}

	public void setNeck1(String neck1) {
		this.neck1 = neck1;
	}

	public String getNeck2() {
		return neck2;
	}

	public void setNeck2(String neck2) {
		this.neck2 = neck2;
	}

	public String getBrand1() {
		return brand1;
	}

	public void setBrand1(String brand1) {
		this.brand1 = brand1;
	}

	public String getBrand2() {
		return brand2;
	}

	public void setBrand2(String brand2) {
		this.brand2 = brand2;
	}

	public String getBrand3() {
		return brand3;
	}

	public void setBrand3(String brand3) {
		this.brand3 = brand3;
	}

	public String getBrand4() {
		return brand4;
	}

	public void setBrand4(String brand4) {
		this.brand4 = brand4;
	}

	public String getBrand5() {
		return brand5;
	}

	public void setBrand5(String brand5) {
		this.brand5 = brand5;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}
	
}
 