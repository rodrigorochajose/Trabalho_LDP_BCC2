<!--#include file="Conexao.asp"-->
<!--#include file="acesso_admin.asp"-->
<!--#include file="head.asp"-->
<!--#include file="header.asp"-->

<table style="border-collapse: unset; margin-left: 200px;">
	<tr>
		<td>
            <a href="usuario_listar.asp" class="waves-effect light-blue lighten-1 btn-small">
                <i class="material-icons left">keyboard_backspace</i>
                Voltar
            </a>
		</td>
  	</tr>
</table>

<div id="titulo">
    Cadastrar Usuário
</div>

<div id="main">
    <form action="javascript:" method="post" name="form1" id="form1">
        <div>
            <label for="user">
                Login
            </label>
            <input name="user" id="user" type="text" style="margin-bottom: 25px;">
            
            <label for="pwd">
                Senha 
            </label>
            <input name="pwd" id="pwd" type="password" style="margin-bottom: 25px;">
                
            <label for="nome">
                Nome Completo
            </label> 
            <input name="nome" id="nome" type="text" style="margin-bottom: 25px;">
                
            <label for="cpf">
                CPF
            </label> 
            <input name="cpf" id="cpf" type="text" maxlength="11" style="margin-bottom: 25px;">

            <label for="celular">
                Celular
            </label> 
            <input name="celular" id="celular" type="text" maxlength="11" style="margin-bottom: 25px;">
            
            <label for="email">
                E-mail
            </label> 
            <input name="email" id="email" type="text" style="margin-bottom: 25px;">
        </div> 
        <div>
            <a id="enviar" href="javascript:">Cadastrar</a>
        </div>
    </form>
</div>

<a href="#" id="show_password" name="show_password">
    <i class="material-icons">remove_red_eye</i>
</a>  

<!--#include file="footer.asp" -->
<script language="javascript">
    $(document).keydown(function(e){
        if (e.keyCode == 13)
            $('#enviar').click()
    });

    $('#enviar').on("click", function(){
        if ($('#user').val().length == 0){
            alert("O campo 'Login' precisa ser preenchido.")
        }else if ($('#pwd').val().length == 0){
            alert("O campo 'Senha' precisa ser preenchido.")
        }else if ($('#nome').val().length == 0){
            alert("O campo 'Nome Completo' precisa ser preenchido.")
        }else if ($('#cpf').val().length == 0){
            alert("O campo 'CPF' precisa ser preenchido.")
        }else if ($('#celular').val().length == 0){
            alert("O campo 'Celular' precisa ser preenchido.")
        }else if ($('#email').val().length == 0){
            alert("O campo 'E-mail' precisa ser preenchido.")
        }
        else {
            $.ajax({
                type: "POST",
                url: 'usuario_cadastrar_script.asp',
                data: $('#form1').serialize(), 
                success: function(data){
                    location.href="usuario_cadastrar.asp"
                }
            });
        }
    });

    $('#show_password').hover(function() {
        if ( $('#pwd').attr('type') == 'password' ) {
            $('#pwd').attr('type', 'text');
        } else {
            $('#pwd').attr('type', 'password');
        }
    });

</script>


<style>
    #enviar {
        border: 1px solid #9e9e9e;
        border-radius: 5px;
        padding: 5px;
        background: #26a69a;
        color: white !important;
        margin-left: 250px;
    }

    #show_password {
        position: absolute;
        left: 1076px;
        top: 315px;
    }
</style>