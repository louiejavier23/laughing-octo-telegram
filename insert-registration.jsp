<%@ page import="java.sql.*" %>

<%
	
	String user = request.getParameter("uname"); 
	String pass = request.getParameter("password"); 
	String conPass = request.getParameter("confirmpass");
	String email = request.getParameter("email");
	
	Connection conn = null;
    String url = "jdbc:mysql://localhost:3306/";
	String dbName = "lordofmu";
	String driver = "com.mysql.jdbc.Driver";
	String userName = "root";
	String passwords = "";
	
	try{
	
		Class.forName(driver).newInstance();
		conn = DriverManager.getConnection(url + dbName, userName, passwords);
		Statement st = conn.createStatement();
		"
		int i = st.executeUpdate("INSERT INTO accounts_tbl(username,password,email,gcoin) VALUES ('"+ user +"','"+ pass +"','"+ email +"','1000')");
			
		response.sendRedirect("login.jsp");
		
		conn.close();
	}
	catch (Exception e) {
		//e.printStackTrace
		out.print(e);
	}
	

%>