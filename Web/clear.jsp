<%

    
Cookie cookie = null;
Cookie[] cookieArray = request.getCookies();
if( cookieArray != null )
{
    
    for (int i = 0; i < cookieArray.length; i++)
    {
       cookie = cookieArray[i];
       
       cookie.setMaxAge(0);
       request.getSession().removeAttribute("UserType");
       request.getSession().removeAttribute("UserName");
       response.addCookie(cookie);
       out.print("Deleted cookie : "+ cookie.getName()+"<br>");
       
    }
}
else
{
	out.println("cookies Not Found");
}

response.sendRedirect("http://localhost:8080/VSS/index.jsp");
%>
    
   
    
    
    
%>