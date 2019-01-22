package pkg;

import java.util.List;

import Tables.comments;
import Tables.experience;
import Tables.user_log;



public class Service_implementation implements Service_interface{
	Dao_interface ser;

	public void setSer(Dao_interface ser) {
		this.ser = ser;
	}

	@Override
	public void insert(user_log p) {
		ser.insert(p);
		
	}

	@Override
	public List user() {
		List li = ser.user();
		return li;
	}

	@Override
	public List user_profile() {
		List li = ser.user_profile();
		return li;
	}

	@Override
	public void insert(experience p) {
		ser.insert(p);
		
	}

	@Override
	public List experience() {
		List li = ser.experience();
		return li;
	}

	@Override
	public List timeline(int id) {
		List li =  ser.timeline(id);
		return li;
	}

	@Override
	public void insert(Tables.timeline p) {
		ser.insert(p);
		
	}

	@Override
	public List profilename(int id) {
		List li = ser.profilename(id);
		return li;
	}

	@Override
	public void delete(Tables.timeline p) {
		ser.delete(p);
		
	}

	@Override
	public void insert(comments p) {
		ser.insert(p);
		
	}

	@Override
	public void delete(comments p) {
		ser.delete(p);
		
	}

	@Override
	public List comments(int p_id) {
		List li = ser.comments(p_id);
		return li;
	}



	
	
}
