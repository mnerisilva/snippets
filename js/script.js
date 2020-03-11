(function(){  
    
    $('#summernote').summernote({
        height: 200,                 // set editor height
        minHeight: null,             // set minimum height of editor
        maxHeight: null,             // set maximum height of editor
        focus: false                  // set focus to editable area after initializing summernote
      });

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
        url: "backend/conect.php",
        method: 'GET',
        dataType: "html",
        success: function (data) {
            console.log(data);
            var lista = JSON.parse(data);
            $('.lado2').append('<a href=""><h4 class="all">all</h4></a>');
            lista.map(registro => {
                var language_class = 'language-'+registro.language_sni;
                var icon = registro.language_sni === 'git' ? '<i class="fab fa-git-square"></i>':'<i class="fab fa-js-square"></i>';
                if(registro.language_sni === 'php'){
                    icon = '<i class="fab fa-php"></i>';

                }
                //$(elemento_prism).find('code').html(registro.syntax_sni);
                $('.lado2').append('<a href=""><h4>'+registro.title_sni+'</h4></a>');
                $('.lado3').append('<h4>'+registro.title_sni+'  '+icon+'</h4>');
                $('.lado3').append('<h5 style="color: #544e4e">'+registro.description_sni);
                Prism.highlightAll();
                $('.lado3').append('<pre class="code"><code class="brush: js line-numbers '+language_class+'">'+registro.syntax_sni+'</code></pre><hr>');
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