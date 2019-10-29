package Controller;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.DriverManager;

public class ConnectionDataBase {
    public static Connection getConnection () {
        Connection myConnection = null;
        
        // Configuracao do servidor
        String server = "oracle12c.cin.ufpe.br";
        String port = "1521";
        String database = "Instance01";
        String url = "jdbc:oracle:thin:@" + server + ":" + port + ":" + database;
        
        // Dados do usuario
        String username = "";
        String password = "";
        
        try {
        	Class.forName("oracle.jdbc.driver.OracleDriver");
        	myConnection = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException e) {
        	e.printStackTrace();
        } catch (SQLException e) {
        	e.printStackTrace();
        }
        
        return myConnection;
    }
}