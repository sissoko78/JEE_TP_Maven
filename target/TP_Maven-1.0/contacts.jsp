<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Liste des Contacts</title>
</head>
<body>
    
    <h2>Ajouter un nouveau contact :</h2>
    <form action="contacts" method="post">
        <label for="nom">Nom:</label>
        <input type="text" id="nom" name="Nom"><br><br>
        <label for="prenom">Prénom:</label>
        <input type="text" id="prenom" name="Prenom"><br><br>
        <label for="email">Email:</label>
        <input type="email" id="email" name="Email"><br><br>
        <label for="competence">Compétence Favorite:</label>
        <input type="text" id="competence" name="Comptence_favorie"><br><br>
        <input type="submit" value="Ajouter">
    </form>
    
    <h1>Liste des Contacts</h1>
    <table border="1">
        <tr>
            <th>Nom</th>
            <th>Prénom</th>
            <th>Email</th>
            <th>Compétence Favorite</th>
        </tr>
        <tbody>
             <c:forEach var="contact" items="${contacts}">
             <tr>

               <td>${contact.Nom}</td>
               <td>${contact.Prenom}</td>
               <td>${contact.Email}</td>
               <td>${contact.Comptence_favorie}</td>
           </tr>
             </c:forEach>
           </tbody>
        <%-- Afficher les contacts ici en utilisant Java --%>
    </table>
    
   
</body>
</html>