<html>
	<body>
	
	
	<%@page import="java.sql.*" %>
	<%
	
	String name=request.getParameter("name");
	
	String pass=request.getParameter("pass");
       session.setAttribute("usern",name);
       
       		Class.forName("com.mysql.jdbc.Driver");
			//Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","eexhibition","jagraj");
			
		
			java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eexhibition", "root", "admin");
		     Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from login");
			 
			int flag=0,a=0;
			/*a=
			1.Admin
			2.Organizer
			3.Exhibitor
			4.Registered User
			*/
					while(rs.next())
					{
					        
					        if((rs.getString(1).equals(name))&&(rs.getString(2).equals(pass)))
							{
							  flag=1;
							  if(rs.getString(3).equals("admn"))
							  {
							  a=1 ;
							  }
							  if(rs.getString(3).equals("orgn"))
							  {
							  a=2;
							  }
							  if(rs.getString(3).equals("exbt"))
							  {
							  a=3 ;
							  }
							  if(rs.getString(3).equals("rusr"))
							  {
							  a=4;
							  }
						      break;
							}
					}
					st.close();
					rs.close();
					con.close();
					if(flag==1)
					{
					if(a==1)
					{
					%>
							<jsp:forward page="AdminHomePage.jsp" />
					<%	
					}
					
					else if(a==2)
					{
					
					%>
							<jsp:forward page="OrganiserHomePage.jsp" />
					<%	
					}
					else if(a==3){
					%>
							<jsp:forward page="ExhibitorHomePage.jsp" />
					<%	
					}else{
					%>
							<jsp:forward page="RegisteredUserHomePage.jsp" />
					<%	
					}
					
					}
					
				   else{
					%>
							<jsp:forward page="ErrorMessage.jsp" />
					<%	
				   }
					 
			%>
	
	</body> 
	 
</html>
