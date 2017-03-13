<%-- 
    Document   : error
    Created on : 29/12/2011, 03:58:28 AM
    Author     : Intel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>     
        
        <style>
            fieldset{   
            width: 50%;
            color: red;                      
            border: 1px solid #a4a4a4;
            border-color: #0063DC;
            border-radius: 5px;
            }
        </style>
    </head>
    <body>
    <center>
        <fieldset >
        <div>
            <%
            String mensaje=request.getParameter("message")==null?"":request.getParameter("message");
            int profund=Integer.parseInt(request.getParameter("profund")==null?"0":request.getParameter("profund"));            
            String nivelProfun="";
            if(profund==0){nivelProfun="";}
            if(profund==1){nivelProfun="../";}
            if(profund==2){nivelProfun="../../";}
            if(profund==3){nivelProfun="../../../";}
            if(profund==4){nivelProfun="../../../../";}
            if(profund==5){nivelProfun="../../../../../";}
            %>
         <h3> <img style="border: 0px" src="<%=nivelProfun%>Recursos/img/alerta.png"/> Error!!!</h3>
        <p>   
            <%

            out.print(mensaje);
            %>   
        </p>
        </div>
        </fieldset>
        </center>
    </body>
</html>
