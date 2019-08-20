<%@ page contentType="text/html;charset=utf-8"%>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
	boolean isScriptTag = false;


    String cb = request.getParameter("callback");
	
	if(cb != null){
		isScriptTag = true;
		response.setContentType("text/javascript");
	}else{
		response.setContentType("applocation/x-json");
	}
    System.out.println(cb);
	if(isScriptTag){
		response.getWriter().write(cb + "(");
	}
	response.getWriter().print("{success:true,msg: 'Ok'}");
	
	if(isScriptTag){
		response.getWriter().write(");");
	}
	
	String resultMsg = "{success:true,msg: '" + cb +"'}";

    
%>
