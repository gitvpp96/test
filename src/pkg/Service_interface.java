package pkg;

import java.util.List;

import Tables.comments;
import Tables.experience;
import Tables.timeline;
import Tables.user_log;

public interface Service_interface {
	public void insert(user_log p);
	public List user();
	public List user_profile();
	public void insert(experience p);
	public List experience();
	
	public List timeline(int id);
	public void insert(timeline p);
	
	public List profilename(int id);
	public void delete(timeline p);
	
	public void insert(comments p);
	public void delete(comments p);
	public List comments(int p_id);



}
