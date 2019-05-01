/*
 * @author H.O.V.A.
 */

package Source;
import java.sql.*;

public class Connect {
    public static  Connection returnConnection(){
        Connection conn=null;
        String JDBC_DRIVER="com.mysql.jdbc.Driver";
        String DB_URL="jdbc:mysql://localhost:3306/dbmslab";
        try{
            Class.forName(JDBC_DRIVER);
            conn=DriverManager.getConnection(DB_URL,"root","");
            
            return conn;
        }
        catch(Exception e){
            System.out.println(e);
            return conn;
        }
    }
}
