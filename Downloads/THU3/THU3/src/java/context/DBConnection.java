/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package context;

import entity.Product;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import static javax.swing.text.html.FormSubmitEvent.MethodType.POST;

/**
 *
 * @author Danh
 */
public class DBConnection {

//    private static final String HOST = "139.162.11.234";
//    private static final String DBNAME = "lab1";
//    private static final String PORT = "3306";
//    private static final String USERNAME = "lab1";
//    private static final String PASSWORD = "MPB622xrLAwJnGLw";
    private static final String HOST = "localhost";
    private static final String PORT ="3306";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "";
    private static final String DBNAME = "shoe_shop";

    public static Connection getConnection() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        String url = "jdbc:mysql://" + HOST + ':' + PORT + '/' + DBNAME;
        return DriverManager.getConnection(url, USERNAME, PASSWORD);

    }

    public static ResultSet querySet(String query) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        try {
            connection = getConnection();
            preparedStatement = connection.prepareStatement(query);
            resultSet = preparedStatement.executeQuery();
        } catch (Exception e) {
        }
        return resultSet;
    }
  
// public static ResultSet querySet(String query, Object... values) {
//        try {
//            Connection connection = getConnection();
//            PreparedStatement preparedStatement = connection.prepareStatement(query);
//            for (int i = 0; i < values.length; i++) {
//                preparedStatement.setObject(i + 1, values[i]);
//            }
//            return preparedStatement.executeQuery();
//        } catch (Exception e) {
//            e.printStackTrace();
//            return null;
//        }
//    }
 
 
    public static void main(String[] args) {

        try {
            String query = "select * from product";
            ResultSet resultSet = querySet(query);
            System.out.println(getConnection());
        } catch (Exception e) {
        }
    }
}
