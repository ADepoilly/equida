<%-- 
    Document   : consulterClient
    Created on : 19 août 2021, 15:17:27
    Author     : Zakina
--%>

<%@page import="model.Client"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Equida</title>
    </head>
    <body>
         <h1>Infos clients</h1>
        
         <%
        Client unClient = (Client)request.getAttribute("pClient");
        %>
        
        
         <table class="table table-bordered table-striped table-condensed">
            <tr><td>ID :</td><td><% out.println(unClient.getId());%></td></tr>
            <tr><td>NOM :</td><td><% out.println(unClient.getNom());%></td></tr>
            <tr><td>PRENOM :</td><td><%  out.println(unClient.getPrenom());%></td></tr>
            <tr><td>Rue :</td><td><%  out.println(unClient.getAdrRue());%></td></tr>
            <tr><td>Code Postal :</td><td><%  out.println(unClient.getCodePostal());%></td></tr>
            <tr><td>Ville :</td><td><%  out.println(unClient.getVille());%></td></tr>
            <tr><td>Email :</td><td><%  out.println(unClient.getAdresseMessagerie());%></td></tr>
            <tr><td>Pays :</td><td><%  out.println((unClient.getLePays().getCode()));%></td></tr>
          <tr><td> Catégories selectionnées</td><td>
          <% for (int i=0; i<unClient.getLesCategVente().size(); i++){
               out.println(unClient.getLesCategVente().get(i).getCode() + "</br>");
             
          }
          %>
              </td></tr>
        </table>
        
    </body>
</html>
