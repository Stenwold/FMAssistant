package org.eryk.database.testConnection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;

@WebServlet("/ConnectionTestServlet")
public class ConnectionTestServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException{

        //connection data to be checked
        String user = "fmadmin";
        String passowrd = "fmadmin";
        String jdbcUrl = "jdbc:mysql://localhost:3306/fm_assistant_scheme?useSSL=false&serverTimezone=UTC";
        String driver = "com.mysql.cj.jdbc.Driver";

        //actual test
        try{
            PrintWriter out = response.getWriter();

            out.println("Connecting to db: " + jdbcUrl);

            Class.forName(driver);

            Connection connection = DriverManager.getConnection(jdbcUrl,user,passowrd);

            out.println("Successful");

            connection.close();
        }
        catch (Exception exc){
            exc.printStackTrace();
            throw new ServletException();
        }
    }
}
