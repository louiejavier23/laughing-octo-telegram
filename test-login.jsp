<%@ page import ="java.sql.*,java.util.*" %>

<%
	
	String user = "";
	String pass = "";
	
    user = request.getParameter("uname");    
    pass = request.getParameter("pword");
   
	Connection conn = null;
    String url = "jdbc:mysql://localhost:3306/";
	String dbName = "lordofmu";
	String driver = "com.mysql.jdbc.Driver";
	String userName = "root";
	String password = "";
	
	String sessionId = "";
	
	try {
		Class.forName(driver).newInstance();
		conn = DriverManager.getConnection(url + dbName, userName, password);
		Statement st = conn.createStatement();
		
		ResultSet rs = st.executeQuery("SELECT * FROM accounts_tbl WHERE username='"+user+"' AND password='"+pass+"'");
		
		int cnt = 0;
		while(rs.next()){
			cnt=1;
			sessionId = rs.getString("user_id");
		}
		
		if(cnt == 1){
			session.setAttribute("user",sessionId);	
			
			List<String> pname = new ArrayList<String>();
			List<String> pqty = new ArrayList<String>();
			List<String> pimg = new ArrayList<String>();
			List<String> pamt = new ArrayList<String>();
			
			session.setAttribute("pname",pname);
			session.setAttribute("pqty",pqty);
			session.setAttribute("pimg",pimg);
			session.setAttribute("pamt",pamt);
	
			response.sendRedirect("home.jsp");
		}
		else{
			out.print("Incorrect username or password!");
		}
		
		conn.close();
	}
	catch (Exception e) {
		//e.printStackTrace
		out.print("Error occured!");
	}
	

%>