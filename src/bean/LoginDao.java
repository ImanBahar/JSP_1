package bean;  
import java.sql.*;  
public class LoginDao {  
  
public static boolean validate(LoginBean bean){  

	boolean status=false;  
	
	try{  
		Connection con=ConnectionProvider.getCon();  
		              
		PreparedStatement ps=con.prepareStatement("select * from student where id =1 and password =123");  
		  
		ps.setString(1,bean.getId());  
		ps.setString(2, bean.getPass());  
		              
		ResultSet rs=ps.executeQuery();  
			status=rs.next();  
			              
			}catch(Exception e){}  
		  
		return status;  
	  
	}  
}  