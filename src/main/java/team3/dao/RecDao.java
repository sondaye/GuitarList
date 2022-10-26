package team3.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import team3.vo.Guitar;
import team3.vo.Review1;

@Repository
public interface RecDao {
	public List<Guitar> listAllGuitar();
	public Guitar getGuitar(String guitarid);
	public List<Review1> getGuitarReview(String guitarid);
}
