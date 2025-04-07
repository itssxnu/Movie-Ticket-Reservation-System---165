package com.app.movie.controller;

import com.app.movie.model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.*;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {

    private static final String FILE_PATH = "D:\\Details\\users.txt"; // Update this path or use relative path

    @Override
    public void init() throws ServletException {
        super.init();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String name = request.getParameter("username");
        String email = request.getParameter("email");
        String phone = request.getParameter("mobile");

        User user = new User(name, email, phone);

        try (FileWriter fw = new FileWriter(FILE_PATH, true);
             BufferedWriter bw = new BufferedWriter(fw);
             PrintWriter out = new PrintWriter(bw)) {

            out.println("Name: " + user.getName());
            out.println("Email: " + user.getEmail());
            out.println("Phone: " + user.getPhoneNumber());
            out.println("----");

        } catch (IOException e) {
            throw new ServletException("Error writing user data to file", e);
        }

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.println("<html><body style='text-align:center;'>");
        out.println("<h2 style='color:green;'>Thank you! Your information has been saved.</h2>");
        out.println("</body></html>");
    }
}
