<!--#include file="Conexao.asp"-->
<!--#include file="acesso.asp"-->
<!--#include file="head.asp"-->
<!--#include file="header.asp"-->

<%
    SQL = "SELECT nome, cpf, celular, email FROM usuario where id = "& Session("user") &""
    Set Reg = Server.CreateObject("ADODB.Recordset")
    Reg.Open SQL, Con
%>

<div id="div_perfil">
    <div style="text-align:center;">
        <i class="material-icons" style="font-size: 150px;">account_circle</i>
        
        <p style="font-weight: bold; font-size:22px">
            <%= Reg("nome").Value %>
        </p>
        <br>
        <b>CPF</b>
        <p>
            <%= Reg("cpf").Value %>
        </p>
        <br>
        <b>Celular</b>
        <p>
            <%= Reg("celular").Value %>
        </p>
        <br>
        <b>E-mail</b>
        <p>
            <%= Reg("email").Value %>
        </p>
        <br>

        <a class="btn-floating pulse" href="perfil_atualizar.asp"><i class="material-icons">cached</i></a>
        <span></span>
        <a class="btn-floating pulse" href="logout.asp"><i class="material-icons">cancel</i></a>
    </div>
</div>

<%
    Reg.Close()
    Set Reg = Nothing
%>
<!--#include file="footer.asp" -->

<style>
    #div_perfil {
        background: #ede7f6 ;
        width: 50%;
        height: 650px;
        margin-left: 25%;
        border: 2px solid black;
    }

    p {
        font-size: 16px;
    }

    body {
        background-image: url("https://img.freepik.com/free-vector/pastel-vector-dull-pastel-abstract-textured-background_53876-110546.jpg?w=2000");
        background-color: #cccccc;
    }
</style>