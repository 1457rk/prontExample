<%@ page contentType="application/json; charset=UTF-8" %>
<%@ page import="data.person.Person" %>  
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson" %>
<%
	Person p1 = new Person("김자바", 30, "여");
	Person p2 = new Person("김디비", 20, "남");
	Person p3 = new Person("김스프링", 10,"남");
	
	Map<String,Person> map = new HashMap<>();
	map.put("p1", p1);
	map.put("p2", p2);
	map.put("p3", p3);
	
	Gson g = new Gson();
	out.print(g.toJson(map));
%>