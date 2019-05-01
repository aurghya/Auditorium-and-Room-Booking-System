/*
 * @author H.O.V.A.
 */

package Source;
import java.sql.*;


public class User {
    public String id,name,department,phone,email;
    public int role;
    public User(String id,String name,String deprtment,String phone,String email,int role){
        this.id=id;
        this.name=name;
        this.department=deprtment;
        this.phone=phone;
        this.email=email;
        this.role=role;
    }
    public static User loginCheck(String userid,String password,int type){
        try{
            Connection conn=Connect.returnConnection();
            PreparedStatement stmt;
            String tables[]={"Applicant","Authority","AV_cell","Dept_office","Security"};
            String username[]={"applicant_id","emp_id","emp_id","emp_id","security_id"};
            stmt = conn.prepareStatement("SELECT * FROM "+tables[type]+""
                    + " WHERE "+username[type]+"=? AND password=md5(?)");
            stmt.setString(1,userid);
            stmt.setString(2,password);
            ResultSet rs=stmt.executeQuery();
            if(rs.next()){
                
                String dept="";
                int role=-1;
                if(type==0||type==3)
                    dept=rs.getString("dept");
                if(type==0)
                    role=rs.getInt("role");
                User u = new User(rs.getString(username[type]),rs.getString("name"),dept,
                        String.valueOf(rs.getInt("phone")),rs.getString("email"),role);
                return u;
                
            }
            else{
                return null;
            }
        }
        catch(Exception e){
            System.out.println(e);
        }
        return null;
    }
}
