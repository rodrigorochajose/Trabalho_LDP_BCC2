<%
    If Session("user") <> 1 Then
        Response.redirect("index.asp")
    End IF
%>