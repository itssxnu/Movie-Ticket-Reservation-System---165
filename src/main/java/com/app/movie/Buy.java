package com.app.movie;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class Buy extends HttpServlet {

    protected void doGet(HttpServletRequest rq, HttpServletResponse res) throws ServletException, IOException {
        rq.getRequestDispatcher("buy").forward(rq, res);
    }
}
