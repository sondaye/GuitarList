package team3.dao;

import java.util.List;

// board.dao.BoardDao
import org.springframework.stereotype.Repository;

import team3.vo.SchGuitar;
//  team3.dao.SchDao
@Repository
public interface SchDao {
	public List<SchGuitar> schList(SchGuitar sch);

	public List<SchGuitar> schList3(SchGuitar sch);
	
	
	
	public List<SchGuitar> compare(SchGuitar com);

}
