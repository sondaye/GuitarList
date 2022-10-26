CREATE TABLE guitar(
	guitarid varchar2(200) PRIMARY KEY,
	brand varchar2(50) CONSTRAINT guitar_brand_ck CHECK(brand IN('깁슨','펜더','스털링','에피폰','스콰이어','바커스')),
	gname varchar2(500),
	color varchar2(500),
	neck varchar2(50) CONSTRAINT guitar_neck_ck CHECK(neck IN('로즈우드','메이플','인디안로렐')),
	bridge varchar2(500),
 	standard varchar2(100) CONSTRAINT guitar_standard_ck CHECK(standard IN('입문','중급','고급')),
 	img varchar2(4000));
drop table guitar;
SELECT * FROM guitar;
DROP SEQUENCE guitarid_seq;
create sequence guitarid_seq
		start with 1
		minvalue 1
		maxvalue 999999
		increment by 1;
INSERT INTO GUITAR values(guitarid_seq.nextval,'깁슨','깁슨 피규어','Sixties Cherry','로즈우드','ABR-1 Tune-O-Matic','고급','http://www.buzzbee.co.kr/shop/data/goods/1636194018866m0.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'깁슨','깁슨 스테인','Stain Vintage Natural','로즈우드','ABR-1 Tune-O-Matic','고급','http://www.buzzbee.co.kr/shop/data/goods/1629262589121m0.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'깁슨','깁슨 파이어버드','Tobacco Burst','로즈우드','Aluminum Nashville Tune-O-Matic','고급','http://www.buzzbee.co.kr/shop/data/goods/1607354418156m0.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'깁슨','깁슨 70s 플라잉 V','Classic White','로즈우드','Aluminum Nashville Tune-O-Matic','고급','http://www.buzzbee.co.kr/shop/data/goods/1603772920750m0.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'깁슨','깁슨 399 피규어','Blueberry Burst','로즈우드','ABR-1 Tune-O-Matic','고급','http://www.buzzbee.co.kr/shop/data/goods/1629263874895m0.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'깁슨','깁슨 레스 폴 스페셜 트리뷰트','Worn Ebony','메이플','Compensated Wraparound','고급','http://www.buzzbee.co.kr/shop/data/goods/1570493506459m0.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'깁슨','깁슨 레스 폴 70s 디럭스','Gold Top','인디안로렐','Tune-O-Matic','고급','http://www.buzzbee.co.kr/shop/data/goods/1634059257746m0.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'깁슨','깁슨 SG 스페셜','Vintage Sparkling Burgundy','로즈우드','Compensated Wraparound','고급','http://www.buzzbee.co.kr/shop/data/goods/1592914951951m0.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'깁슨','깁슨 ES 335','Sixties Cherry','로즈우드','ABR-1 Tune-O-Matic','고급','http://www.buzzbee.co.kr/shop/data/goods/1603775896560m0.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'깁슨','깁슨 레스폴 스텐다드','Tabacco SunBurst Candy','로즈우드','ABR-1 Tune-O-Matic','고급','http://www.buzzbee.co.kr/shop/data/goods/1427721561_m_0.jpg');

INSERT INTO GUITAR values(guitarid_seq.nextval,'펜더','펜더 스트렉터케스터','Roasted Pine','로즈우드','2-Point Synchroized Tremolo with Bent Steel Saddles','고급','http://www.buzzbee.co.kr/shop/data/goods/1606999635118m0.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'펜더','펜더 울트라 스트렉터케스터','Cobra Blue','메이플','2-Point Deluxe Synchroized Tremolo with Pop-In Arm','고급','http://www.buzzbee.co.kr/shop/data/goods/1602677582508m0.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'펜더','펜더 50s 스트렉터케스터','White Blonde','메이플','Pure Vintage 6-Saddle Synchronized Tremolo','고급','http://www.buzzbee.co.kr/shop/data/goods/1597145449253m0.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'펜더','펜더 트렉케스터','Shoreline Gold','메이플','3-Saddle Top-Load/String-Throuh Tele','고급','http://www.buzzbee.co.kr/shop/data/goods/1636724732628m0.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'펜더','펜더 럭시 스트렉터케스터 플로이드','Silver Burst','메이플','Floyed Rose','고급','http://www.buzzbee.co.kr/shop/data/goods/1649246794111m0.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'펜더','펜더 멈스틴 스트렉터케스터','Vintage White Maple','메이플','American Vintage Synchronized Tremolo','고급','http://www.buzzbee.co.kr/shop/data/goods/1354806059_m_0.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'펜더','펜더 짐 루트 스트렉터케스터','Black Ebony','메이플','Strings-Thru-Body-Hardtail','고급','http://www.buzzbee.co.kr/shop/data/goods/1329369344_m_0.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'펜더','펜더 엘리트 스트렉터케스터 Thinline','Natural','메이플','New Elite Suspension Bridge','고급','http://www.buzzbee.co.kr/shop/data/goods/1464259756_m_0.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'펜더','펜더 오리지널 60S 제규어','Candy Apple Red','메이플','Vintage-Style Floating Tremolo Lock Button and Push In Tremolo Arm','고급','http://www.buzzbee.co.kr/shop/data/goods/1519641654820m0.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'펜더','펜더 마호가니 탑 텔레케스터','Natural','메이플','3-Saddle American Vintage Strings-Through-Body Tele','고급','http://www.buzzbee.co.kr/shop/data/goods/1568086819839m0.jpg');

INSERT INTO GUITAR values(guitarid_seq.nextval,'스털링','스털링 CT30HSS','Vintage Cream','메이플','Fulcrum Tremolo','중급','http://www.buzzbee.co.kr/shop/data/goods/1556935494675m0.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'스털링','스털링 AX3FM','Trans Gold','메이플','Fulcrum Tremolo','중급','http://www.buzzbee.co.kr/shop/data/goods/164267946941m0.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'스털링','스털링 RICHARDSON6','Natural Poplar','메이플','Fulcrum Tremolo','중급','http://www.buzzbee.co.kr/shop/data/goods/1617443121639m0.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'스털링','스털링 CT50','Olympic White','로즈우드','Vintage Tremolo','중급','http://www.buzzbee.co.kr/shop/data/goods/1459937046_m_0.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'스털링','스털링 SILO3','WH','로즈우드','Chrome Tremolo','중급','http://www.buzzbee.co.kr/shop/data/goods/1358337421_m_0.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'스털링','스털링 JP100D','Ruby Red','메이플','Fulcrum Tremolo','중급','http://www.buzzbee.co.kr/shop/data/goods/1368102892_m_0.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'스털링','스털링 JP150','Neptune Blue','메이플','Vintage Tremolo','중급','http://www.buzzbee.co.kr/shop/data/goods/1523303862232m0.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'스털링','스털링 JP157','Neptune Blue','메이플','Vintage Tremolo','중급','http://www.buzzbee.co.kr/shop/data/goods/1510141890_m_0.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'스털링','스털링 MAJ100 마제스티','Neptune Blue','메이플','Stealth Black','중급','http://www.buzzbee.co.kr/shop/data/goods/1496136865_m_0.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'스털링','스털링 AX4','TBK','메이플','Vintage Tremolo','중급','http://www.buzzbee.co.kr/shop/data/goods/1457434483_m_0.jpg');


-- 에피폰															'로즈우드','메이플','인디안로렐')
INSERT INTO GUITAR values(guitarid_seq.nextval,'에피폰','에피폰 일렉기타 리베라','Royal Tan','인디안로렐','LookTone-Tune-O-Matic','중급','http://www.buzzbee.co.kr/shop/data/goods/1606236940860m0.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'에피폰','에피폰 일렉기타 레스폴 스텐다드 50s','Heritage Cherry Sunburst','인디안로렐','ABR Tune-o-matic','중급','http://www.buzzbee.co.kr/shop/data/goods/1579852282499m0.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'에피폰','에피폰 일렉기타 파이어버드','Vintage Sunburst','인디안로렐','LookTone-Tune-O-Matic','중급','http://www.buzzbee.co.kr/shop/data/goods/1579838945192m0.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'에피폰','에피폰 일렉기타 1961 레스폴 SG 스탠다드','Aged Classic White','인디안로렐','LookTone-Tune-O-Matic','중급','http://www.buzzbee.co.kr/shop/data/goods/1642571302583m0.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'에피폰','에피폰 일렉기타 쉐라톤 2 프로','EBONY','메이플','LookTone-Tune-O-Matic','중급','http://www.buzzbee.co.kr/shop/data/goods/1435669045_m_0.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'에피폰','에피폰 일렉기타 ES-335','Cherry','인디안로렐','LookTone-Tune-O-Matic','중급','http://www.buzzbee.co.kr/shop/data/goods/1607484747962m0.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'에피폰','에피폰 일렉기타 레스폴 스튜디오','Wine Red','로즈우드','ABR Tune-o-matic','중급','http://www.buzzbee.co.kr/shop/data/goods/1627317783741m0.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'에피폰','에피폰 일렉기타 빌리 조 암스트롱 레스폴 주니어','Classic White','인디안로렐','Lightning Bar Wrap Around','중급','http://www.buzzbee.co.kr/shop/data/goods/1642570763699m0.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'에피폰','에피폰 일렉기타 조안 제트 올림픽 스페셜','Classic White','인디안로렐','Adjustable Wraparound','중급','http://www.buzzbee.co.kr/shop/data/goods/164316529844m0.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'에피폰','에피폰 일렉기타 슬래시 빅토리아 레스폴 스탠다드 골드탑','Gold','인디안로렐','LookTone-Tune-O-Matic','중급','http://www.buzzbee.co.kr/shop/data/goods/1634057551777m0.jpg');


-- 스콰이어																'로즈우드','메이플','인디안로렐')
INSERT INTO GUITAR values(guitarid_seq.nextval,'스콰이어','스콰이어 일렉기타 클래식 바이브 70s 스트라토캐스터 HSS','Black','메이플','6-Saddle Vintage-Style Synchronized Tremolo','입문','http://www.buzzbee.co.kr/shop/data/goods/156338709268m0.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'스콰이어','스콰이어 일렉기타 클래식 바이브 50s 텔레캐스터','ButterScotch Blonde','메이플','3-Saddle Vintage-Style String-Through-Body Tele','입문','http://www.buzzbee.co.kr/shop/data/goods/1621774066646m0.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'스콰이어','스콰이어 일렉기타 클래식 바이브 50s 스트라토캐스터','Fiesta Red','메이플','6-Saddle Vintage-Style Synchronized Tremolo','입문','http://www.buzzbee.co.kr/shop/data/goods/1621774206453m0.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'스콰이어','스콰이어 일렉기타 어피니티 시리즈 텔레캐스터','ButterScotch Blonde','메이플','6-Saddle Strings-Through-Body Tele','입문','http://www.buzzbee.co.kr/shop/data/goods/1634649562303m0.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'스콰이어','스콰이어 일렉기타 어피니티 시리즈 스트레오캐스터','Olympic White','메이플','2-Point synchronized Tremolo with Block Saddles','입문','http://www.buzzbee.co.kr/shop/data/goods/1634649936898m0.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'스콰이어','스콰이어 일렉기타 클래식 바이브 60s 스트라토캐스터','Lake Placid Blue','메이플','6-Saddle Vintage-Style Synchronized Tremolo','입문','http://www.buzzbee.co.kr/shop/data/goods/1621774296428m0.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'스콰이어','스콰이어 일렉기타 컨템포러리 스트레토캐스터 HH FR','Shell Pink Pearl','메이플','Floyd Rose by Floyd Rose Double Locking Tremolo','입문','http://www.buzzbee.co.kr/shop/data/goods/1637686771100m0.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'스콰이어','스콰이어 일렉기타 클래식 바이브 70s 스트라토캐스터','Olympic White','메이플','6-Saddle Vintage-Style Synchronized Tremolo','입문','http://www.buzzbee.co.kr/shop/data/goods/1563387225977m0.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'스콰이어','스콰이어 일렉기타 컨템포러리 스트라토캐스터 스페셜','Sky Burst Metallic','메이플','2-Point Synchronized Tremolo with Block Saddles','입문','http://www.buzzbee.co.kr/shop/data/goods/1637686416909m0.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'스콰이어','스콰이어 일렉기타 컨템포러리 재규어 HH ST','Yellow Brown','메이플','6-Saddle Adjustable Bridge','입문','http://www.buzzbee.co.kr/shop/data/goods/1637685646866m0.jpg');


--
INSERT INTO GUITAR values(guitarid_seq.nextval,'바커스','바커스 유니버스 시리즈BTE-3-RSM','Black','메이플','TE Type Bridge','입문','http://musicforce.co.kr/web/product/big/202205/70c2b0cfcf4b0b70882e574aff353088.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'바커스','바커스 글로벌 시리즈 BSH-750-RSM','Candy Apple Red','메이플','Wilkinson WV2-CR','입문','http://musicforce.co.kr/web/product/big/202203/9b8717d47e7281e5b238dba082b75598.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'바커스','바커스 유니버스 시리즈 BST-2-RSM','Surf Green','메이플','Synchronized Trem','입문','http://musicforce.co.kr/web/product/big/202206/af323156602283a6ed21a8804947828e.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'바커스','바커스 유니버스 시리즈 BJM-3-RSM','Candy Apple Red','메이플','Synchronized Trem','입문','http://musicforce.co.kr/web/product/big/202205/22d789c0478ec8d6c4c007567cdea96d.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'바커스','바커스 유니버스 시리즈 BST-3-RSM','Shell Pink','메이플','Synchronized Trem','입문','http://musicforce.co.kr/web/product/big/202205/73a8b9331f3a96e235405043274899c3.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'바커스','바커스 유니버스 시리즈 BJM-1-RSM','Black','메이플','Synchronized Trem Bridge','입문','http://musicforce.co.kr/web/product/big/202204/1bda2326aaacbf545d5afe89de7184b2.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'바커스','바커스 유니버스 시리즈 BJM-1R','Dark Lake Placid Blue','로즈우드','Synchronized Trem','입문','http://musicforce.co.kr/web/product/big/202204/3d9c92fda4028056dc506b1e79dac771.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'바커스','바커스 크래프트 시리즈 BST-1600','Special-Natural(Ash)','메이플','Gotoh GE108TS','입문','http://musicforce.co.kr/web/product/big/20191125/d0af1f791b5fce92563a9b99e4c15ab3.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'바커스','바커스 크래프트 시리즈 G-Studio-Ash','DK-Blue Gradation','메이플','WVPSB-CR','입문','http://musicforce.co.kr/web/product/big/201907/8e4d7704c7bc9dc676510380860ac6a8.jpg');
INSERT INTO GUITAR values(guitarid_seq.nextval,'바커스','바커스 글로벌 시리즈 BSH-800ASH ','RSM-See Thru Blue','메이플','Wilkinson WV2-CR','입문','http://musicforce.co.kr/web/product/big/202203/620ff7230b84432f90d078366b40eadf.jpg');
SELECT*FROM guitar;

SELECT*
FROM guitar 
WHERE 1=1
AND gname LIKE '%'||'깁슨'||'%'
and( neck LIKE '%'||'로즈우드'||'%'and neck LIKE '%'||''||'%' and neck LIKE '%'||'인디안로렐'||'%');
