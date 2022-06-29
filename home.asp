<!--#include file="Conexao.asp"-->
<!--#include file="acesso.asp"-->
<!--#include file="head.asp"-->
<!--#include file="header.asp"-->

<%
    SQLD = "SELECT SUM(valor) as Total, competencia FROM receita WHERE id_usuario = "& Session("user") &" AND Ativo = 1 AND competencia = month(getdate()) GROUP BY competencia"
    SQLR = "SELECT SUM(valor) as Total, competencia FROM receita WHERE id_usuario = "& Session("user") &" AND Ativo = 1 AND competencia = month(getdate()) GROUP BY competencia"

    Set Regd = Server.CreateObject("ADODB.Recordset")
    Set Regr = Server.CreateObject("ADODB.Recordset")
    Regd.Open SQLD, Con 
    Regr.Open SQLR, Con 

    TotalD = CDbl(Regd("Total").Value)
    TotalR = CDbl(Regr("Total").Value)
    R = TotalD - TotalR
%>

<div id="welcome">
    Olá, Seja Bem Vindo!
    <br>
    Abaixo estão as informações do mês atual (0<%=Regd("competencia").Value%>/2022)
</div>
<table>
    <tr>
        <td>
            <div class="info_mes">
            Totalizador (Despesa)
            <br>
            <%= "R$ "& TotalD %>
            </div>
        </td>
        <td>
            <div class="info_mes">
            Totalizador (Receita)
            <br>
            <%= "R$ "& TotalR %>
            </div>
        </td>
        <td>
            <div class="info_mes">
            Dinheiro Restante
            <br>
            <%= "R$ "& R %>
            </div>
        </td>
    </tr>
<table>


<%
    Regd.Close()
    Regr.Close()
    Set Regd = Nothing
    Set Regr = Nothing
%>
<!--#include file="footer.asp" -->

<style>
    #welcome {
        width: 50%;
        margin: 150px 350px;
        padding: 5px;
        text-align: center;
        margin-bottom: 100px;
        font-size: 22px;
        font-weight: bold;
    }

    table {
        margin-left: 150px;
    }

    .info_mes {
        border: 1px solid black;
        border-radius: 5px;
        text-align: center;
        width: 175px;
        margin-bottom: 150px;
        font-weight: bold;
        background: #ffa000;
    }

    body {
        background-image: url("https://img.freepik.com/free-vector/pastel-vector-dull-pastel-abstract-textured-background_53876-110546.jpg?w=2000");
        background-color: #cccccc;
    }
</style>