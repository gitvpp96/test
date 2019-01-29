package pkg;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate3.HibernateTemplate;

import Tables.*;

public class Dao_implementation implements Dao_interface {
	
	HibernateTemplate temp;

	public void setTemp(HibernateTemplate temp) {
		this.temp = temp;
	}

	@Override
	public void insert(user_log p) {
		temp.save(p);
		
	}

	@Override
	public List user() {
		List li = temp.loadAll(user_log.class);
		return li;
	}

	@Override
	public List user_profile() {
		List li = temp.loadAll(user_profile.class);
		return li;
	}

	@Override
	public void insert(experience p) {
		temp.save(p);
		
	}

	@Override
	public List experience() {
		List li = temp.loadAll(experience.class);
		return li;
	}

	@Override
	public List timeline(int id) {
		List li = temp.find("from timeline c where c.user_id=?",id);
		return li;
	}

	@Override
	public void insert(Tables.timeline p) {
		temp.save(p);
		
	}

	@Override
	public List profilename(int id) {
		List li = temp.find("from user_profile c where c.id=?",id);
		return li;
	}

	@Override
	public void delete(Tables.timeline p) {
		temp.delete(p);
		SessionFactory sf=temp.getSessionFactory();
		Session ses=sf.openSession();
		Transaction t=ses.beginTransaction();
		String qry="DELETE FROM comments WHERE p_id=?";
		Query q=ses.createQuery(qry);
		q.setParameter(0, p.getId());
		q.executeUpdate();
		t.commit();
		ses.close();
		
	}

	@Override
	public void insert(comments p) {
		temp.save(p);
		
	}

	@Override
	public void delete(comments p) {
		temp.delete(p);
		
	}

	@Override
	public List comments(int p_id) {
		List li = temp.find("from comments c where c.p_id=?",p_id);
		return li;
	}



	


}
