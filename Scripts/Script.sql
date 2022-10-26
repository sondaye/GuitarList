--SELECT g.*,p.PRICE 
--FROM guitar g, price p
--WHERE 1=1
--AND  g.GUITARID = p.GUITARID 
--<if test="guitarid !=null">
--or guitarid = #{guitarid}
--</if>
--<if test="guitarid1 !=null">
--OR guitarid = #{guitarid1}
--</if>
--<if test="guitarid2 !=null">
--OR guitarid = #{guitarid2};
SELECT min(price) FROM price WHERE ;

SELECT g.*, p.price
FROM guitar g, price p
where  g.GUITARID = p.GUITARID
AND price = (
	SELECT min(p.price)
	FROM guitar g, price p
	GROUP BY g.GUITARID 
);
SELECT * FROM price;

--SELECT g.GUITARID  ,min(p.price)
--FROM guitar g, price p
--WHERE 1=1
--and g.GUITARID = p.GUITARID
--GROUP BY g.GUITARID
--<if test="guitarid !=null">
--HAVING g.guitarid = 1
--</IF>
--<if test="guitarid1 !=null">
--OR g.guitarid = 2 
--</IF>
--<if test="guitarid2 !=null">
--OR g.guitarid = 3;
--</IF>

SELECT g.GUITARID, min(p.price)
FROM guitar g, price p
WHERE 1=1
and g.GUITARID = p.GUITARID
GROUP BY p.GUITARID;
HAVING g.guitarid = 1
OR g.guitarid = 2 
OR g.guitarid = 3;

SELECT g.* , p.price
FROM guitar g, price p
WHERE (g.GUITARID,p.PRICE) in (
	SELECT g.GUITARID ,max(p.PRICE)
	FROM guitar g, price p
	WHERE g.GUITARID = p.GUITARID
	GROUP BY p.GUITARID
	HAVING g.guitarid = 1
	OR g.guitarid = 2 
	OR g.guitarid = 3);

