<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
<link rel="stylesheet" href="style.css">

<%
    Set Con = Server.CreateObject("ADODB.Connection")
    Con.Open("Provider=SQLNCLI11;Server=DESKTOP-6KKVUQM\SQLEXPRESS;Database=master;Trusted_Connection=yes") 
%>

<script>
    function msgSucesso(mostra, msg){
        if (mostra==1){
            jQuery('#msg-ok').remove();
            jQuery('body').append('<div id="msg-ok"><i class="icon-ok icon-2x"></i> '+msg+'</div>');
            jQuery('#msg-ok').fadeIn('slow');
            setTimeout(function(){
                msgSucesso(0);
            }, 3000);
        }else{
            jQuery('#msg-ok').fadeOut('slow', function(){
                jQuery('#msg-ok').remove();
            });
        }
    }

</script>