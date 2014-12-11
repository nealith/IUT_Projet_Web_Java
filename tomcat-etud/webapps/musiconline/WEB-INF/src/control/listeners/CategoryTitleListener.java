package control.listeners;

import javax.servlet.http.*;
import db.*;
import control.*;
import java.sql.*;

public class CategoryTitleListener implements ActionListener {

  public void handle(HttpServletRequest request){

	HttpSession session = request.getSession();
	String user = (String) session.getAttribute("user");   

	if(user != null){

		try{
			String catChoix = (String) request.getParameter("catChoix");
			catChoix = catChoix.replaceAll("[\r\n]+", "");

			session.setAttribute("catChoix", catChoix);
			TitreDAO titreDB = TitreDAO.getInstance();


			ResultSet music_cat = titreDB.findCatMusic(catChoix);
		
			session.setAttribute("music_cat", music_cat); 	
		}
		catch(Exception ex){
			System.out.println("ERROR BDD");
		}	

	}
  }
  
}

