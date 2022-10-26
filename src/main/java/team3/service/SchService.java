package team3.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import team3.dao.SchDao;
import team3.vo.SchGuitar;

@Service
public class SchService {
	@Autowired(required=false)
	private SchDao dao;
	
	public List<SchGuitar> schList(SchGuitar sch){
		return dao.schList(sch);
	}
	
	public List<SchGuitar> compare(SchGuitar com){
		return dao.compare(com);
	}


	

}
