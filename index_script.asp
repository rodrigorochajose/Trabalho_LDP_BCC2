<!--#include file="Conexao.asp"-->

<%
    where = "login = '"& Trim(Request.Form("usuario")) &"' AND password = '"& Trim(Request.Form("senha")) &"' "

    Set Reg = Server.CreateObject("ADODB.recordset")

    SQL = "SELECT login, password FROM usuario WHERE "& where &" "

    Reg.Open SQL, Con

    If NOT Reg.EOF Then 
        Session("user") = Request.Form("usuario")
    Else 
       Session("user") = ""
    End If

    Reg.Close()
    Set Reg = Nothing

%>