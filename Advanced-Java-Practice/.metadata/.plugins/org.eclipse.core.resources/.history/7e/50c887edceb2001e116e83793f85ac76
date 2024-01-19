package com.app;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.dao.StudentDao;
import com.app.model.Student;

/**
 * Servlet implementation class MyServlet
 */
@WebServlet("/MyServlet")
public class MyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		int prn = Integer.parseInt(request.getParameter("txtPRN"));
		Student s = StudentDao.getData(prn);
			 
			 out.print("<table border=1 width=50% height=50%>");  
		     out.print("<caption>Student Result :</caption>");	
		        
		        
		        
		        out.print("<tr>");
		        
		        
		        out.print("<th>"+"Prn"+"</th><th>"+"Name"+"</th><th>"+"Mark1"+"</th><th>"+"Mark2"+"</th><th>"+"Marks2"+"</th>"+"<th>"+"Total"+"</th><th>"+"Percentage"+"</th><th>"+"Result"+"</th>");
		        
		        out.print("</tr>");
		        
		        
		        	int m = s.getM1();
					int m1 =  s.getM2();
					int m2 = s.getM3();
			        double total=m+m1+m2;
			        double per = ((total/300)*100);
			        
			        String res;
			        if(per > 40.99)
			        	res="pass";
			        else
			        	res = "fail";
			        	
			        
		        	out.print("<tr><td>"+s.getPrn()+"</td><td>"+s.getName()+"</td><td>"+s.getM1()+"</td><td>"+s.getM2()+"</td><td>"+s.getM3()+"</td><td>"+total+"</td><td>"+per+"</td><td>"+res+"</td></tr>");
		        	
		        	
		        	
		        out.print("</table>");
		        
		        
		 
		

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
