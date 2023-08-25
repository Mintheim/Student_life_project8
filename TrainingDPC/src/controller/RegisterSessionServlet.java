package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Course;
import model.SelectedCourseDao;
import model.SendEmail;

public class RegisterSessionServlet extends HttpServlet {

	@SuppressWarnings("static-access")
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String register_name = req.getParameter("name");
		String register_email = req.getParameter("email");
		String register_phone = req.getParameter("phone");
		String register_course = req.getParameter("course");
	
		System.out.println(" The Register Name is " + register_name);
		System.out.println(" The Register Email is " + register_email);
		System.out.println(" The Register Phone is " + register_phone);
		System.out.println(" The Register Course is " + register_course);

		SelectedCourseDao courseReg = new SelectedCourseDao();

		// Call the Method to save the register course
		Course reg_course = courseReg.saveRegisterCourse(register_name, register_email, register_phone, register_course	);

		
		// Send Email To User
		SendEmail mm=new SendEmail();
		String sub=" Detail Information About your Registered Session for the Traiing Department";
				
		if(register_course.equals("ComputerBasic (Morning)") || 
		   register_course.equals("ComputerBasic (Evening)") || 
		   register_course.equals("Photoshop (Morning)") || 
		   register_course.equals("Photoshop (Evening)") || 
		   register_course.equals("WebDevelopment (Morning)") || 
		   register_course.equals("WebDevelopment (Evening)") || 
		   register_course.equals("Programming (Morning)") || 
		   register_course.equals("Programming (Evening)")){
			
			String message="Hello, good day to you!" + "This is from the training department. Thank you for registeration to attend our course." +
					"The course you have selected is "+ register_course+ 
					". Since you choose to attend morning session, your schedule is from 9:00AM to 11:00AM " +
					"in the morning.";
			 mm.send("kminthein828@gmail.com","qqrdecfsfeewkkpi",register_email,sub,message); 
		}
		else{
			String message="Hello, good day to you!! This is from training department. Thank you for registeration to attend our course." +
					"The course youe have selected is "+ register_course+ 
					". Since you choose to attend evening session, your schedule is from 6:00PM to 8:00PM " +
					"in the evening.";
			 mm.send("kminthein828@gmail.com","qqrdecfsfeewkkpi",register_email,sub,message); 
		}
	
		req.setAttribute("register_course", reg_course);

		// Dispatch the JSP
		RequestDispatcher rd = req.getRequestDispatcher("thankyou.jsp");
		rd.forward(req, resp);
		
	}
}
