package controller;
import java.io.IOException;
import java.io.PrintWriter;

import model.demo;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@WebServlet("/Event_management")

public class Event_management extends HttpServlet {
   
	 protected void doPost(HttpServletRequest request,HttpServletResponse response)
			 throws ServletException, IOException {
			 response.setContentType("text/html;charset=UTF-8");
			 // type of the response sent to the client or browser
			 PrintWriter out = response.getWriter();
			 HttpSession session = request.getSession();
			 demo reg = new demo(session);
			 try {
				 if (request.getParameter("register") != null) {
				 String name = request.getParameter("name");
				 String email = request.getParameter("email");
				 String phone = request.getParameter("phone");
				 String pw = request.getParameter("password");
				 String cp = request.getParameter("confirmPassword");
				 if (pw.equals(cp)) {
				 String status = reg.Registration(name, phone, email, pw);


				 if (status.equals("existed")) {
				 request.setAttribute("status", "Existed record");
				 RequestDispatcher rd1 =request.getRequestDispatcher("register.jsp");
				 rd1.forward(request, response);
				 } else if (status.equals("success")) {
				 request.setAttribute("status", "Successfully Registered");
				 RequestDispatcher rd1 =request.getRequestDispatcher("login.jsp");
				 rd1.forward(request, response);
				 } else if (status.equals("failure")) {
				 request.setAttribute("status", "Registration failed");
				 RequestDispatcher rd1 =request.getRequestDispatcher("register.jsp");
				 rd1.forward(request, response);
				 }
				 }
				 } 
				 //else if (request.getParameter("login") != null) {
//				 String email = request.getParameter("email");
//				 String pass = request.getParameter("pw");
//				 String status = reg.login(email, pass);
//				 if (status.equals("success")) {
//				 RequestDispatcher rd1 = request.getRequestDispatcher("index.jsp");
//				 rd1.forward(request, response);
//				 } else if (status.equals("failure")) {
//				 request.setAttribute("status", "Login failed");
//				 RequestDispatcher rd1 = request.getRequestDispatcher("Login.jsp");
//				 rd1.forward(request, response);
//				 }
//				 } else if (request.getParameter("logout") != null) {
//				 session.invalidate();
//				 RequestDispatcher rd1 = request.getRequestDispatcher("index.jsp");
//				 rd1.forward(request, response);
//				 }
//				 else if (session.getAttribute("uname") != null &&
//						 request.getParameter("submit") != null) {
//						  String name = request.getParameter("name");
//						  String pno = request.getParameter("pno");
//						  String email = request.getParameter("email");
//						  Registration u = new Registration(session);
//						  String status = u.update(name, pno, email);
//						  if (status.equals("success")) {
//						  request.setAttribute("status", "Profile successfully Updated");
//						  RequestDispatcher rd1 = request.getRequestDispatcher("index.jsp");
//						  rd1.forward(request, response);
//						  } else {
//						  request.setAttribute("status", "Updation failure");
//						  RequestDispatcher rd1 = request.getRequestDispatcher("index.jsp");
//						  rd1.forward(request, response);
//						  }
//						  }
//				 
//				//Forgot Password ----------------------
//				else if (request.getParameter("forgotPass") != null) {
//				String mail = request.getParameter("email");
//				String pw = request.getParameter("pw");
//				String cp = request.getParameter("cpw");
//				if (pw.equals(cp)) {
//				String status = reg.ForgotPassword(mail, pw);
//				if (status.equals("success")) {
//				request.setAttribute("status", "Password Reset Successfully");
//				RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
//				rd.forward(request, response);
//				} else if (status.equals("failure")) {
//				request.setAttribute("status", "Password Reset Failed");
//				RequestDispatcher rd = request.getRequestDispatcher("forgot.jsp");
//				rd.forward(request, response);
//				}
//				} else {
//				request.setAttribute("status", "Password mismatch");
//				RequestDispatcher rd = request.getRequestDispatcher("forgot.jsp");
//				rd.forward(request, response);
//				}
//
//				}

				 
				 } catch (Exception e) {
				 e.printStackTrace();
				 }
				 }
			 
	
	
	
	
	
	

//	@Override
//	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		super.doPost(req, resp);
		
	    
	
	public String getServletInfo() {
		 return "Short description";
		 }
}