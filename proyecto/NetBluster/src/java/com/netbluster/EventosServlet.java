/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.netbluster;

import com.netbluster.beans.Producto;
import com.netbluster.beans.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Joseluis Gonzalez
 */ 
@WebServlet(name = "EventosServlet", urlPatterns = {"/eventos"})
public class EventosServlet extends HttpServlet {
    
    // JDBC driver
    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://localhost/netbluster";

    //  Datos db
    static final String USER = "root";
    static final String PASS = "";
    Connection dbConnection = null;

    @Override
    public void init() throws ServletException {
        super.init();
        connectDB();
    }
    void connectDB(){
        try {
            Class.forName(JDBC_DRIVER);

            System.out.println("Conectando a la base de datos...");
            dbConnection = DriverManager.getConnection(DB_URL, USER, PASS);
        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println("Error?");
            System.out.println(ex.getMessage());
        }
    }
   
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        RequestDispatcher dispatcher = null;
        Statement stmt;
        try {
            if(dbConnection == null)
                connectDB();
            stmt = dbConnection.createStatement();

            String sql;
            if (session != null) {
                Usuario datos = (Usuario) session.getAttribute("usuario");
                System.out.println("probando" + datos.getId());
                sql = "SELECT * FROM arriendos WHERE id_usuario = '" + datos.getId() + "'";
                ResultSet rs = stmt.executeQuery(sql);
                ArrayList<Producto> productos = new ArrayList<>();
                while (rs.next()) {
                    Producto p = new Producto();
                    p.setId(rs.getInt("id"));
                    p.setNombre(rs.getString("nombre"));
                    p.setValor(rs.getInt("valor"));
                    productos.add(p);
                }

                for (int i = 0; i < productos.size(); i++) {
                    System.out.print(productos.get(i).getNombre());
                }
                request.setAttribute("productos", productos); 
                dispatcher = request.getRequestDispatcher("EventosJSP.jsp");
            } else {
                
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        if (dispatcher != null) {
            dispatcher.forward(request, response);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
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
