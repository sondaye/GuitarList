package team3.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import team3.dao.RecDao;
import team3.vo.Guitar;
import team3.vo.Review1;

@Service
public class RecService {
	@Autowired(required = false)
	private RecDao dao;
	
	public List<Guitar> listAllGuitar(){
		return dao.listAllGuitar();
	}
	public Guitar getGuitar(String guitarid) {
		return dao.getGuitar(guitarid);
	}
	public List<Review1> getGuitarReview(String guitarid) {
		return dao.getGuitarReview(guitarid);
	}
}
