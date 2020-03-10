(function(){            
    $('#ok').on('click',function(e){
        Prism.highlightAll();
        var conteudo = $("#snippets").val();
        console.log('entrou: ' + conteudo);
        $('code').html(conteudo);
        Prism.highlightAll();                
        $("#snippets").val('');        
        $('code').show();

    })           
    $('#limpa').on('click',function(){
        //Prism.highlightAll();
        $("#snippets").val('');
        $('code').hide();
    })

    $('.badge-group .badge').on('click', function(){
        console.log('dfsdfdsf');
        $(this).toggleClass('badge-clicado');
    });


    var elemento_prism = $('.code');
    $(elemento_prism).remove();
    $.ajax({
        url: "backend/lista.php",
        method: 'GET',
        dataType: "html",
        success: function (data) {
            var lista = JSON.parse(data);
            $('.lado1').append('<a href=""><h4>All</h4></a>');
            lista.map(registro => {
                //$(elemento_prism).find('code').html(registro.syntax_sni);
                $('.lado1').append('<a href=""><h4>'+registro.title_sni+'</h4></a>');
                $('.lado2').append('<h4>'+registro.title_sni+'</h4>');
                Prism.highlightAll();
                $('.lado2').append('<pre class="code"><code class="brush: js line-numbers language-js">'+registro.syntax_sni+'</code></pre><hr>');
                Prism.highlightAll();

                console.log(registro.title_sni);
                //$('.lado2').append(elemento_prism);
            });
            console.log(lista);
            console.log(typeof lista);
            console.log(data);
            //$('code').html(data);
            //Prism.highlightAll();
            $('code').show();
        },
        error: function () {
            console("Deu erro na requisição da página!");
        }
    });    

})();