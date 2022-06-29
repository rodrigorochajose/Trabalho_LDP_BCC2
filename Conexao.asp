<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>

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