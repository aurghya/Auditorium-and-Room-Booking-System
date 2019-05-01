/*
 * @author H.O.V.A.
 */

package Source;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class Booking {
    public int booking_id;
    public String room_id, applicant_id, dept,authority, security,av_cell ;
    public String applicant_name, applicant_phone, applicant_email, building ;
    public int floor;  
    
    public Booking(int booking_id,String room_id,String applicant_id,String dept,
                        String authority,String security,String av_cell,
                        String applicant_name,String applicant_phone,
                        String applicant_email,String building,int floor){
        
        this.booking_id=booking_id;
        this.room_id=room_id;
        this.applicant_id=applicant_id;
        this.dept=dept;
        this.authority=authority;
        this.security=security;
        this.av_cell=av_cell;
        this.applicant_name=applicant_name;
        this.applicant_phone=applicant_phone;
        this.applicant_email=applicant_email;
        this.floor=floor;
        this.building=building;
    }
    
    
    public static List<Booking> getPendingForAuthority(){
        try{
            Connection conn=Connect.returnConnection();
            Statement stmt=conn.createStatement();
            ResultSet rs=stmt.executeQuery("SELECT * FROM Booking natural join Room join Applicant using(applicant_id)"
                    + " WHERE authority='PENDING' AND Booking.dept!='PENDING' AND Booking.dept!='REJECTED'");
            List<Booking> res=new ArrayList<>();
            
            while(rs.next()){
                res.add(new Booking(rs.getInt("booking_id"),rs.getString("room_id"),rs.getString("applicant_id"),
                        rs.getString("dept"),rs.getString("authority"),rs.getString("security"),rs.getString("av_cell"),
                        rs.getString("name"),rs.getString("phone"),rs.getString("email"),
                                rs.getString("building"),rs.getInt("floor")));
            }
            return res;
            

        }
        catch(Exception e){
            System.out.println(e);
        }
        return new ArrayList<>();
    }
    
    
    public static List<Booking> getApprovedForAuthority(){
        try{
            Connection conn=Connect.returnConnection();
            Statement stmt=conn.createStatement();
            ResultSet rs=stmt.executeQuery("SELECT * FROM Booking natural join Room join Applicant using(applicant_id)"
                    + " WHERE authority!='PENDING' AND authority!='REJECTED'");
            List<Booking> res=new ArrayList<>();
            
            while(rs.next()){
                res.add(new Booking(rs.getInt("booking_id"),rs.getString("room_id"),rs.getString("applicant_id"),
                        rs.getString("dept"),rs.getString("authority"),rs.getString("security"),rs.getString("av_cell"),
                        rs.getString("name"),rs.getString("phone"),rs.getString("email"),
                                rs.getString("building"),rs.getInt("floor")));
            }
            return res;
            

        }
        catch(Exception e){
            System.out.println(e);
        }
        return new ArrayList<>();
    }
    
    
    public static List<Booking> getPendingForSecurity(){
        try{
            Connection conn=Connect.returnConnection();
            Statement stmt=conn.createStatement();
            ResultSet rs=stmt.executeQuery("SELECT * FROM Booking natural join Room join Applicant using(applicant_id)"
                    + " WHERE security='PENDING' AND authority!='PENDING' AND authority!='REJECTED'");
            List<Booking> res=new ArrayList<>();
            System.out.println(rs);
            while(rs.next()){
                res.add(new Booking(rs.getInt("booking_id"),rs.getString("room_id"),rs.getString("applicant_id"),
                        rs.getString("dept"),rs.getString("authority"),rs.getString("security"),rs.getString("av_cell"),
                        rs.getString("name"),rs.getString("phone"),rs.getString("email"),
                                rs.getString("building"),rs.getInt("floor")));
            }
            return res;
            

        }
        catch(Exception e){
            System.out.println(e);
        }
        return new ArrayList<>();
    }
    public static List<Booking> getApprovedForSecurity(){
        try{
            Connection conn=Connect.returnConnection();
            Statement stmt=conn.createStatement();
            ResultSet rs=stmt.executeQuery("SELECT * FROM Booking natural join Room join Applicant using(applicant_id)"
                    + " WHERE security!='PENDING' AND security!='REJECTED'");
            List<Booking> res=new ArrayList<>();
            
            while(rs.next()){
                res.add(new Booking(rs.getInt("booking_id"),rs.getString("room_id"),rs.getString("applicant_id"),
                        rs.getString("dept"),rs.getString("authority"),rs.getString("security"),rs.getString("av_cell"),
                        rs.getString("name"),rs.getString("phone"),rs.getString("email"),
                                rs.getString("building"),rs.getInt("floor")));
            }
            return res;
            

        }
        catch(Exception e){
            System.out.println(e);
        }
        return new ArrayList<>();
    }
    
    public static List<Booking> getPendingForAVCell(){
        try{
            Connection conn=Connect.returnConnection();
            Statement stmt=conn.createStatement();
            ResultSet rs=stmt.executeQuery("SELECT * FROM Booking natural join Room join Applicant using(applicant_id)"
                    + " WHERE av_cell='PENDING' AND authority!='PENDING' AND authority!='REJECTED' ");
            List<Booking> res=new ArrayList<>();
            
            while(rs.next()){
                res.add(new Booking(rs.getInt("booking_id"),rs.getString("room_id"),rs.getString("applicant_id"),
                        rs.getString("dept"),rs.getString("authority"),rs.getString("security"),rs.getString("av_cell"),
                        rs.getString("name"),rs.getString("phone"),rs.getString("email"),
                                rs.getString("building"),rs.getInt("floor")));
            }
            return res;
            

        }
        catch(Exception e){
            System.out.println(e);
        }
        return new ArrayList<>();
    }
    
    public static List<Booking> getApprovedForAVCell(){
        try{
            Connection conn=Connect.returnConnection();
            Statement stmt=conn.createStatement();
            ResultSet rs=stmt.executeQuery("SELECT * FROM Booking natural join Room join Applicant using(applicant_id)"
                    + " WHERE av_cell!='PENDING' AND av_cell!='NA' AND av_cell!='REJECTED'");
            List<Booking> res=new ArrayList<>();
            
            while(rs.next()){
                res.add(new Booking(rs.getInt("booking_id"),rs.getString("room_id"),rs.getString("applicant_id"),
                        rs.getString("dept"),rs.getString("authority"),rs.getString("security"),rs.getString("av_cell"),
                        rs.getString("name"),rs.getString("phone"),rs.getString("email"),
                                rs.getString("building"),rs.getInt("floor")));
            }
            return res;
            

        }
        catch(Exception e){
            System.out.println(e);
        }
        return new ArrayList<>();
    }
    
    public static List<Booking> getPendingForDept(String dept){
        try{
            Connection conn=Connect.returnConnection();
           
            PreparedStatement stmt=conn.prepareStatement("SELECT * FROM Booking natural join Room join Applicant using(applicant_id)"
                    + " WHERE Applicant.dept=? AND Booking.dept='PENDING'");
            stmt.setString(1,dept);
            ResultSet rs=stmt.executeQuery();
            List<Booking> res=new ArrayList<>();
            while(rs.next()){
                res.add(new Booking(rs.getInt("booking_id"),rs.getString("room_id"),rs.getString("applicant_id"),
                        rs.getString("dept"),rs.getString("authority"),rs.getString("security"),rs.getString("av_cell"),
                        rs.getString("name"),rs.getString("phone"),rs.getString("email"),
                                rs.getString("building"),rs.getInt("floor")));
            }
            return res;
            

        }
        catch(Exception e){
            System.out.println(e);
        }
        return new ArrayList<>();
    }
    
    public static List<Booking> getApprovedForDept(String dept){
        try{
            Connection conn=Connect.returnConnection();
           
            PreparedStatement stmt=conn.prepareStatement("SELECT * FROM Booking natural join Room join Applicant using(applicant_id)"
                    + " WHERE Applicant.dept=? AND Booking.dept!='PENDING' AND Booking.dept!='REJECTED'");
            stmt.setString(1,dept);
            ResultSet rs=stmt.executeQuery();
            List<Booking> res=new ArrayList<>();
            while(rs.next()){
                res.add(new Booking(rs.getInt("booking_id"),rs.getString("room_id"),rs.getString("applicant_id"),
                        rs.getString("dept"),rs.getString("authority"),rs.getString("security"),rs.getString("av_cell"),
                        rs.getString("name"),rs.getString("phone"),rs.getString("email"),
                                rs.getString("building"),rs.getInt("floor")));
            }
            return res;
            

        }
        catch(Exception e){
            System.out.println(e);
        }
        return new ArrayList<>();
    }
    
    public static String getSlot(int booking_id){
        try{
            Connection conn=Connect.returnConnection();
            PreparedStatement stmt=conn.prepareStatement("SELECT * FROM Booking_slot WHERE booking_id=?");
            stmt.setInt(1, booking_id);
            ResultSet rs=stmt.executeQuery();
            String slot="";
            while(rs.next()){
                slot+=rs.getString("date")+" "+rs.getString("time_slot")+"<br/><br/>";
            }
            return slot;
        }
        catch(Exception e){
            return null;
        }
    }
    
    
    public static List<String> getRooms(){
        try{
            Connection conn=Connect.returnConnection();
            Statement stmt=conn.createStatement();
            ResultSet rs=stmt.executeQuery("SELECT * FROM Room");
            List<String> res=new ArrayList<>();
            while(rs.next()){
                res.add(rs.getString("room_id"));
            }
            return res;
        }
        catch(Exception e){
            System.out.println(e);
        }
        return new ArrayList<>();
    }
    
    
    
    public static List<Booking> getBookingsForApplicant(String id){
        try{
            Connection conn=Connect.returnConnection();
           
            PreparedStatement stmt=conn.prepareStatement("SELECT * FROM Booking natural join Room"
                    + " WHERE applicant_id=?");
            stmt.setString(1,id);
            ResultSet rs=stmt.executeQuery();
            List<Booking> res=new ArrayList<>();
            while(rs.next()){
                res.add(new Booking(rs.getInt("booking_id"),rs.getString("room_id"),id,
                        rs.getString("dept"),rs.getString("authority"),rs.getString("security"),rs.getString("av_cell"),
                        "","","",
                                rs.getString("building"),rs.getInt("floor")));
            }
            return res;
            

        }
        catch(Exception e){
            System.out.println(e);
        }
        return new ArrayList<>();
    }
    
    
    public static boolean actionByAuthority(int booking_id,String user_id,int action){
        try{
            Connection conn=Connect.returnConnection();
           
            PreparedStatement stmt=conn.prepareStatement("UPDATE Booking "
                    + "SET authority=?"
                    + " WHERE booking_id=?");
            String authority="REJECTED";
            if(action==1)
                authority=user_id;
            stmt.setString(1,authority);
            stmt.setInt(2,booking_id);
            stmt.executeUpdate();
            if(action==0){
                stmt=conn.prepareStatement("UPDATE Booking_slot"
                        + " SET status='REJECTED' WHERE booking_id=?");
                stmt.setInt(1,booking_id);
                stmt.executeUpdate();
            }
            return true;
        }
        catch(Exception e){
            System.out.println(e);
            return false;
        }
    }
    
    
    public static boolean actionByDept(int booking_id,String user_id,int action){
        try{
            Connection conn=Connect.returnConnection();
           
            PreparedStatement stmt=conn.prepareStatement("UPDATE Booking "
                    + "SET dept=?"
                    + " WHERE booking_id=?");
            String dept="REJECTED";
            if(action==1)
                dept=user_id;
            stmt.setString(1,dept);
            stmt.setInt(2,booking_id);
            stmt.executeUpdate();
            return true;
        }
        catch(Exception e){
            System.out.println(e);
            return false;
        }
    }
    
    public static boolean actionByAVCell(int booking_id,String user_id,int action){
        try{
            Connection conn=Connect.returnConnection();
           
            PreparedStatement stmt=conn.prepareStatement("UPDATE Booking "
                    + "SET av_cell=?"
                    + " WHERE booking_id=?");
            String av_cell="REJECTED";
            if(action==1)
                av_cell=user_id;
            stmt.setString(1,av_cell);
            stmt.setInt(2,booking_id);
            stmt.executeUpdate();
            return true;
        }
        catch(Exception e){
            System.out.println(e);
            return false;
        }
    }
    public static boolean actionBySecurity(int booking_id,String user_id,int action){
        try{
            Connection conn=Connect.returnConnection();
           
            PreparedStatement stmt=conn.prepareStatement("UPDATE Booking "
                    + "SET security=?"
                    + " WHERE booking_id=?");
            String security="REJECTED";
            if(action==1)
                security=user_id;
            stmt.setString(1,security);
            stmt.setInt(2,booking_id);
            stmt.executeUpdate();
            return true;
        }
        catch(Exception e){
            System.out.println(e);
            return false;
        }
    }
    
    
    public static List<String> getAvailableSlots(String room_id,String date){
        try{
            Connection conn=Connect.returnConnection();
            PreparedStatement stmt=conn.prepareStatement("SELECT * FROM Booking_slot"
                    + " WHERE room_id=? AND date=? AND status!='REJECTED'");
                    
            stmt.setString(1,room_id);
            stmt.setString(2,date);
            ResultSet rs=stmt.executeQuery();
            List<String> filled=new ArrayList<>();
            while(rs.next()){
                filled.add(rs.getString("time_slot"));
            }
            String[] total={"6:00-7:00","7:00-8:00","8:00-9:00","9:00-10:00","10:00-11:00","11:00-12:00"};
            List<String> available=new ArrayList<>();
            for(int i=0;i<total.length;i++){
                boolean avail=true;
                for(String j:filled){
                    if(total[i].equals(j))
                        avail=false;
                }
                if(avail)
                    available.add(total[i]);
            }
            return available;
        }
        catch(Exception e){
            System.out.println(e);
        }
        return new ArrayList<>();
    }
    
    public static boolean createBooking(String room_id,String user_id,String date,String time_slots,int role,int av_cell_req){
        try{
          Connection conn=Connect.returnConnection();
          String dept="PENDING";
          String av_cell="PENDING";

          if(role==1)
              dept="NA";
          if(av_cell_req==0)
              av_cell="NA";
          PreparedStatement stmt=conn.prepareStatement("INSERT INTO Booking"
                  + " (room_id,applicant_id,dept,av_cell)"
                         + "VALUES (?,?,?,?);",Statement.RETURN_GENERATED_KEYS);
          stmt.setString(1,room_id);
          stmt.setString(2,user_id);
          stmt.setString(3,dept);
          stmt.setString(4,av_cell);
          stmt.executeUpdate();
          ResultSet rs=stmt.getGeneratedKeys();
          int booking_id=0;
          if(rs.next()){
              booking_id=rs.getInt(1);
          }
          String slots[]=time_slots.split(",");
         
          for(String slot:slots){
              stmt=conn.prepareStatement("INSERT INTO Booking_slot VALUES(?,?,?,?,'ACCEPTED')");
              stmt.setInt(1,booking_id);
              stmt.setString(2,room_id);
              stmt.setString(3, date);
              stmt.setString(4,slot);
              stmt.executeUpdate();
          }
          return true;
       }
       catch(Exception e){
           System.out.println(e);
          return false;
       }
    
    }
    
    public static boolean cancelBooking(int booking_id){
        try{
            Connection conn=Connect.returnConnection();
            PreparedStatement stmt=conn.prepareStatement("DELETE FROM Booking_slot WHERE booking_id=?");
            stmt.setInt(1,booking_id);
            stmt.executeUpdate();
            stmt=conn.prepareStatement("DELETE FROM Booking WHERE booking_id=?");
            stmt.setInt(1,booking_id);
            stmt.executeUpdate();
            return true;
        }
        catch(Exception e){
           System.out.println(e);
          return false;
       }
    }
    
    
}
