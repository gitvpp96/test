package pkg;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.ws.Response;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import Tables.comments;
import Tables.experience;
import Tables.timeline;
import Tables.user_log;
import Tables.user_profile;

@Controller
public class Controller_class {
	@Autowired
	Service_interface ser;

	@RequestMapping(value = "/Login.html", method = RequestMethod.GET) // ------------------------------------------Login
	public String getLogin() {
		System.out.println("------");

		return "log";
	}

	@RequestMapping(value = "/log.html", method = RequestMethod.POST) // ------------------------------------------Log
	public String getlogform(HttpSession session, 
		                 	@RequestParam String username, 
		                 	@RequestParam String password) {

		user_log p = new user_log();

		List li = ser.user();
		Iterator itr = li.iterator();

		while (itr.hasNext()) {

			user_log u = (user_log) itr.next();
			String u_name = u.getUser_name();
			String u_pass = u.getUser_pass();
			String u_type = u.getUser_type();
			int u_id = u.getUser_id();
			
			if (username.equals(u_name) && password.equals(u_pass)) {
				
				List li2 = ser.user_profile();
				Iterator it2 =li2.iterator();
				while(it2.hasNext()) {
					
					user_profile up= (user_profile) it2.next();
					String name = up.getName();
					session.setAttribute("profilename", name);
				}
				session.setAttribute("u_name", u_name);
				session.setAttribute("id", u_id);
				
				return "test1";
			} else {

				return "log";
			}
		}
		return "log";
	}

	@RequestMapping(value = "/home.html", method = RequestMethod.GET) // ------------------------------------------home
	public ModelAndView gethome(HttpSession session) {

		int id = (int) session.getAttribute("id");
		System.out.println(id);
		List li = ser.timeline(id);

	
		
		Iterator it = li.iterator();	
		HashMap m = new HashMap();
		m.put("list", li);
		
		while(it.hasNext()) {
			timeline t = (timeline)it.next();
			System.out.println(t.getId());
			
			
		}


		return new ModelAndView("home", "List", m);

	}

	@RequestMapping(value = "/about.html", method = RequestMethod.GET) // ------------------------------------------about
	public ModelAndView getabout() {


		List li = ser.user_profile();
		List li1 = ser.experience();

		HashMap m = new HashMap();
		m.put("list1", li);
		m.put("list2", li1);

		return new ModelAndView("about", "List", m);
	}

	@RequestMapping(value = "/contact.html", method = RequestMethod.GET) // ------------------------------------------contact
	public String gecontact() {
		return "contact";
	}

	@RequestMapping(value = "/hack.html", method = RequestMethod.GET) // ------------------------------------------hack
	public String gehack() {
		return "hack";
	}

	@RequestMapping(value = "/logout.html", method = RequestMethod.GET) // ------------------------------------------logout
	public String getlogout() {
		return "logout";
	}
	@RequestMapping(value = "/newpost.html", method = RequestMethod.POST) // ------------------------------------------newpost
	public String newpost(HttpSession session,
			              @RequestParam String head,
			              @RequestParam String message,
			              @RequestParam CommonsMultipartFile image) {
		
		 int id = (int) session.getAttribute("id");
		 DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		 Date date = new Date();
		 
		 String path=session.getServletContext().getRealPath("/"); 
         String filename=image.getOriginalFilename(); 
         
         try{ 
         byte[] barr=image.getBytes(); 
         BufferedOutputStream bout=new BufferedOutputStream(new FileOutputStream(path+"/"+filename)); 
         bout.write(barr); 
         bout.flush(); 
         bout.close(); 
         }
         catch(Exception e)
         {System.out.println(e);
         }
         timeline t = new timeline();
         t.setContent(message);
         t.setHead(head);
         t.setImg(filename);
         t.setUser_id(id);
         t.setDate( date);
         
         ser.insert(t);
         
		return "test1";
	}
	@RequestMapping(value = "/deletepost.html", method = RequestMethod.GET) // ------------------------------------------delete post
	public String deletepost(@RequestParam int id) {
		timeline t = new timeline();
		t.setId(id);
		ser.delete(t);
		return "test1";
	}
	@RequestMapping(value = "/ajax.html", method = RequestMethod.GET) // ------------------------------------------ajax post entry
	public ModelAndView cmnt_ajax(@RequestParam int t_id,
							@RequestParam String cmnt,
			                HttpSession session) {
		
	    System.out.println(t_id+"--()--"+cmnt); 
		
		int u_id =(int) session.getAttribute("id"); 
		String u_name = (String) session.getAttribute("profilename");
		comments c = new comments();
		c.setU_name(u_name);
		c.setCmt(cmnt);
		c.setP_id(t_id);
		c.setU_id(u_id);
		
		ser.insert(c);
	    
		List li = ser.comments(t_id);

		HashMap m = new HashMap();
		m.put("list1",li);
	
	
		return new ModelAndView("ajax", "List", m);
	}
	
	@RequestMapping(value = "/ajax1.html", method = RequestMethod.GET) // ------------------------------------------ajax post entry
	public ModelAndView cmnt_view_ajax( @RequestParam int p_id) {
	
	    System.out.println(p_id+"p_id");
		
		List li = ser.comments(p_id);
		HashMap m = new HashMap();
		m.put("list1",li);
	
	
		return new ModelAndView("ajax1", "List", m);
	}
	@RequestMapping(value = "/cmntdlt.html", method = RequestMethod.GET) // ------------------------------------------ajax show comments
	public ModelAndView dltcmnt( @RequestParam int c_id,int p_id) {
	
	    System.out.println(p_id+"p_id");
	    System.out.println(c_id+"c_id");
	    comments c = new comments();
	    c.setId(c_id);
	    ser.delete(c);
		
		List li = ser.comments(p_id);
		HashMap m = new HashMap();
		m.put("list1",li);

		return new ModelAndView("ajax1", "List", m);
	}

}
