<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manage Notes</title>
        <link rel="stylesheet" href="<c:url value='styles/notes.css' />" />
    </head>
    <body>
        <div class="bg">
            <video class="bg_vid" preload="auto" autoplay="true" loop="loop"> 
               <source src="res/heman.mp4" type="video/mp4">
               Video not supported
           </video>
        
        <h1>Manage Notes</h1>
        <h2>Notes</h2>
        <p>${errorMessage}</p>
        <table>
            <tr>
                <th>Note id</th>
                <th>Date Created</th>
                <th>Content</th>
            </tr>
            <c:forEach var="note" items="${notes}">
                <tr>
                    <td>${note.noteID}</td>
                    <td>${note.dateCreated}</td>
                    <td>${note.content}</td>
                    <td>
                        <form action="notes" method="post" >
                            <input type="submit" value="Delete">
                            <input type="hidden" name="action" value="delete">
                            <input type="hidden" name="selectedNoteID" value="${note.noteID}">
                        </form>
                    </td>
                    <td>
                        <form action="notes" method="get">
                            <input type="submit" value="Edit">
                            <input type="hidden" name="action" value="view">
                            <input type="hidden" name="selectedNoteID" value="${note.noteID}">
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <c:if test="${selectedNoteID == null}">
            <h3>Add Note</h3>
            <form action="notes" method="POST">
                Contents: <input type="text" name="content"><br>
                <input type="hidden" name="action" value="add">
                <input type="submit" value="Save">
            </form>
        </c:if>
        <c:if test="${selectedNoteID != null}">
            <h3>Edit Note</h3>
            <form action="notes" method="POST">
                Note id: <input type="text" name="noteID" value="${selectedNoteID.noteID}" readonly><br>
                Date Created: <input type="text" name="dateCreated" value="${selectedNoteID.dateCreated}" readonly><br>
                Content: <input type="text" name="content" value="${selectedNoteID.content}"><br>
                <input type="hidden" name="action" value="edit">
                <input type="submit" value="Save">
            </form>
        </c:if>
 </div>
        </body>
</html>
