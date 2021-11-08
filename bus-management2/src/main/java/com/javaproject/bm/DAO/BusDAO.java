package com.javaproject.bm.DAO;

import java.util.List;
import com.javaproject.bm.api.Bus;
import com.javaproject.bm.api.BusDTO;

public interface BusDAO {

	List<Bus> loadBuses();
	
	void saveBus(BusDTO busDTO);
	
	Bus getBus(int busID);

	void update(BusDTO busDTO);

	void deleteBus(int busID);

	/* Bus searchBus(int id); */

}
