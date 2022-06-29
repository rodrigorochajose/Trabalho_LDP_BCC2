<!--#include file="Conexao.asp"-->
<!--#include file="acesso_admin.asp"-->
<!--#include file="head.asp"-->
<!--#include file="header.asp"-->
<%

    SQL = "SELECT nome, cpf, celular, email, ativo FROM usuario WHERE id="& Session("user") &""

    Set Reg = Server.CreateObject("ADODB.Recordset")
    Reg.Open SQL, Con
%>

<div id="titulo">
    Atualizar Perfil
</div>

<div id="main">
    <form action="perfil_atualizar_script.asp" method="get" name="form1" id="form1">
        <div>
            <label for="nome">
                Nome Completo
            </label> 
            <input name="nome" id="nome" type="text" value="<%= Reg.Fields.Item("nome").Value %>" style="margin-bottom: 25px;">
                
            <label for="cpf">
                CPF
            </label> 
            <input name="cpf" id="cpf" type="text" maxlength="11" value="<%= Reg.Fields.Item("cpf").Value %>" style="margin-bottom: 25px;">

            <label for="celular">
                Celular
            </label> 
            <input name="celular" id="celular" type="text" maxlength="11" value="<%= Reg.Fields.Item("celular").Value %>" style="margin-bottom: 25px;">
            
            <label for="email">
                E-mail
            </label> 
            <input name="email" id="email" type="text" value="<%= Reg.Fields.Item("email").Value %>" style="margin-bottom: 25px;">

            <input name="id" id="id" type="hidden" value="<%= Session("user") %>" style="margin-bottom: 25px;">
        </div> 

        <input id="enviar" type="submit" value="Atualizar">
        </div>
    </form>
</div>

<%
    Reg.Close()
    Set Reg = Nothing
%>

<!--#include file="footer.asp" -->
<style>
    #enviar {
        border: 1px solid #9e9e9e;
        border-radius: 5px;
        padding: 7px;
        background: #26a69a;
        color: white !important;
        margin-left: 250px;
        font-weight: bold;
    }
    
</style>