<%
    If Session("user") = "" Then
        Response.redirect("index.asp")
    End IF
%>