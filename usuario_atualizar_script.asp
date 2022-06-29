<!--#include file="Conexao.asp"-->

<%
    If Request.Form("result") = 1 Then
        SQL = "DELETE usuario WHERE id="& Request.Form("id") &""
    Else
        SQL = "UPDATE usuario set nome='"& Request.Form("nome") &"', cpf="& Request.Form("cpf") &", celular="& Request.Form("celular") &", email='"& Request.Form("email") &"', ativo="& Request.Form("ativo") &" WHERE id ="& Request.Form("id") &""
    End if

    Set Reg = Server.CreateObject("ADODB.Recordset")

    Reg.Open SQL, Con
    Set Reg = Nothing
%>