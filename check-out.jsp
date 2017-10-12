<%@page import="java.sql.*,java.util.*"%>

<%
try{
	
	
	
	List<String> pname = (List<String>)session.getAttribute("pname");
	List<String> pqty = (List<String>)session.getAttribute("pqty");
	List<String> pimg = (List<String>)session.getAttribute("pimg");
	List<String> pamt = (List<String>)session.getAttribute("pamt");
	
	for(int a=0;a<pname.size();a++){
		
		String name = (String)pname.get(a);
		String qty = (String)pqty.get(a);
		String img = (String)pimg.get(a);
		String amt = (String)pamt.get(a);
		
		int subtot = Integer.parseInt(qty) * Integer.parseInt(amt);
		int grand += subtot
		
	}
}
catch(Exception e){
	
}

%>
