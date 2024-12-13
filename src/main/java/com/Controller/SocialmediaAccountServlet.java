package com.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/socialmediaAccount")
public class SocialmediaAccountServlet extends HttpServlet {
	 @Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 resp.setContentType("text/html");
	        resp.getWriter().write("<html><head><title>Social Media Links</title></head><body>");

	        resp.getWriter().write("<h1>Choose a Social Media Platform</h1>");

	        // Adding buttons to redirect to social media platforms
	        resp.getWriter().write("<a href='https://www.facebook.com' target='_blank'><button>Facebook</button></a><br><br>");
	        resp.getWriter().write("<a href='https://www.instagram.com' target='_blank'><button>Instagram</button></a><br><br>");
	        resp.getWriter().write("<a href='https://www.snapchat.com' target='_blank'><button>Snapchat</button></a><br><br>");
	        resp.getWriter().write("<a href='https://www.linkedin.com' target='_blank'><button>LinkedIn</button></a><br><br>");
	        resp.getWriter().write("</body></html>");
	}

}