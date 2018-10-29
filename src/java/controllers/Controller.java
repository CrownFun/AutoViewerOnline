/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import dao.SqlCarDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Car;


public class Controller extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String vin = request.getParameter("vin");
        String marka = request.getParameter("marka");
        String model = request.getParameter("model");
        String rok = request.getParameter("rok");
        String opis = request.getParameter("opis");
        String option = request.getParameter("option");

        String operation=null;
        boolean result = false;
        Car car = null;
        SqlCarDAO dao = new SqlCarDAO();
        
        if (option.equals("add")) {
            car = new Car(vin, marka, model, rok, opis);
            result = dao.create(car);
            operation="Dodaj";
        } else if (option.equals("search")) {
            car = dao.read(vin);
            result = true;
            operation="Szukaj";
        } else if (option.equals("update")) {
            car = new Car(vin, marka, model, rok, opis);
            result = dao.update(car);
            operation="Modyfikuj";
        } else if (option.equals("delete")) {
            car = new Car(vin, marka, model, rok, opis);
            result = dao.delete(car);
            operation="Usuń";
        }

        if (result) {
            request.setAttribute("car", car);
            request.setAttribute("option", operation);
            request.getRequestDispatcher("show.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
