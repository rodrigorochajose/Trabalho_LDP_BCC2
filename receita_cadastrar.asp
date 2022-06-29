<!--#include file="Conexao.asp"-->
<!--#include file="acesso.asp"-->
<!--#include file="head.asp"-->
<!--#include file="header.asp"-->

<table style="border-collapse: unset; margin-left: 200px;">
	<tr>
		<td>
            <a href="receita_listar.asp" class="waves-effect light-blue lighten-1 btn-small">
                <i class="material-icons left">keyboard_backspace</i>
                Voltar
            </a>
		</td>
  	</tr>
</table>

<div id="titulo">
    Cadastrar Receita
</div>

<div id="main">
    <form action="javascript:" method="post" name="form1" id="form1" class="">
        <div class="">
            <label for="nome">
                Nome 
            </label> 
            <input name="nome" id="nome" type="text" style="margin-bottom: 25px;">
                
            <label for="desc">
                Descrição
            </label> 
            <input name="desc" id="desc" type="text" style="margin-bottom: 25px;">
            
            <label for="obs">
                Observação
            </label> 
            <input name="obs" id="obs" type="text" style="margin-bottom: 25px;">

            <label for="valor">
                Valor
            </label> 
            <input name="valor" id="valor" type="text" style="margin-bottom: 25px;">

            <label for="competencia">
                Competência
            </label> 
            <!--#include file="check_mes.asp" -->
        </div> 
        <a id="enviar" href="javascript:">Cadastrar</a>
    </form>
</div>

<!--#include file="footer.asp" -->

<script language="javascript">
    $(document).keydown(function(e){
        if (e.keyCode == 13)
            $('#enviar').click()
    });

    $('#enviar').on("click", function(){
        if ($('#nome').val().length == 0){
            alert("O campo 'Nome' precisa ser preenchido.")
        }else if ($('#desc').val().length == 0){
            alert("O campo 'Descrição' precisa ser preenchido.")
        }else if ($('#valor').val().length == 0){
            alert("O campo 'Valor' precisa ser preenchido.")
        }
        else {
            $.ajax({
                type: "POST",
                url: 'receita_cadastrar_script.asp',
                data: $('#form1').serialize(), 
                success: function(data){
                    location.href="receita_cadastrar.asp"
                }
            });
        }
    });
</script>