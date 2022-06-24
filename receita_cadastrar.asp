<!--#include file="Conexao.asp"-->
<!--#include file="header.asp"-->

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

            <label for="valor">
                Valor
            </label> 
            <input name="valor" id="valor" type="text" style="margin-bottom: 25px;">
            
            <label for="obs">
                Observação
            </label> 
            <input name="obs" id="obs" type="text" style="margin-bottom: 25px;">
        </div> 
        <div>
            <a id="enviar" href="javascript:">Cadastrar</a>
        </div>
    </form>
</div>
<!--#include file="footer.asp" -->

<script language="javascript">
    $(document).keydown(function(e){
        if (e.keyCode == 13)
            $('#enviar').click()
    });

    $('#enviar').click(function(){
        $.ajax({
            type: "POST",
            url: 'receita_cadastrar_script.asp',
            data: $('#form1').serialize(), 
            success: function(data){
                location.href="receita_cadastrar.asp"
            }
        });
    });
</script>