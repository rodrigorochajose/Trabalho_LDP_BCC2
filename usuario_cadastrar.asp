<%@ LANGUAGE = "VBSCRIPT" %>
<!--#include file="header.asp"-->

<div id="titulo">
    Cadastrar Usuário
</div>

<div id="main">
    <form action="javascript:" method="post" name="form1" id="form1" class="">
        <div class="">
            <label for="user">
                Login
            </label>
            <input name="user" id="user" type="text" style="margin-bottom: 25px;">
                
            <label for="pwd">
                Senha 
            </label>
            <input name="pwd" id="pwd" type="text" style="margin-bottom: 25px;">
                
            <label for="nome">
                Nome Completo
            </label> 
            <input name="nome" id="nome" type="text" style="margin-bottom: 25px;">
                
            <label for="cpf">
                CPF
            </label> 
            <input name="cpf" id="cpf" type="text" style="margin-bottom: 25px;">

            <label for="celular">
                Celular
            </label> 
            <input name="celular" id="celular" type="text" style="margin-bottom: 25px;">
            
            <label for="email">
                E-mail
            </label> 
            <input name="email" id="email" type="text" style="margin-bottom: 25px;">
        </div> 
        <div>
            <a id="enviar" href="usuario_cadastrar_script.asp">Cadastrar</a>
        </div>
    </form>
</div>
<!--#include file="footer.asp" -->