<%@ page contentType="text/html;charset=utf-8"%>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");

    String name = request.getParameter("name");
	String age = request.getParameter("age");
	String birthday = request.getParameter("birthday");
	String combox = request.getParameter("combo");
    System.out.println(name);
	String result = name  + "-" + age + "-" + birthday + "-" + combox;
	String resultMsg = "{success:true,msg: '" + result +"'}";

    response.getWriter().print(resultMsg);
%>
