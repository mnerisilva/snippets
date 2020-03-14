(function(){  

    list();
    $('.lado3').css('opacity', 0);

    $('body').on('click', '.link-code', function(e){
        e.preventDefault();
        event.returnValue = false;
        $('.lado3').removeClass('mostra-lado3');
        var id_sni = $(this).attr('id');
        filter(id_sni);
    });


    $('.btn-add').on('click', function(){
        var margin = $('.lado1').css('margin-left');
        margin = parseInt(margin.replace("px",""));
        console.log('margin-left: '+margin);
        if(margin < 0){
            $('.btn-add').find('.svg').removeClass('fa-plus-circle');
            $('.btn-add').find('.svg').addClass('fa-times');
            $('.lado1').css('margin-left', 0);
            $('.lado3').css(
                {
                    //'overflow' : 'hidden',
                    'opacity' : .3
                }
            );            
        } else {
            $('.btn-add').find('.svg').addClass('fa-plus-circle');
            $('.btn-add').find('.svg').removeClass('fa-times');
            $('.lado1').css('margin-left','-600px');
            
            $('.lado3').css(
                {
                    //'overflow' : 'auto',
                    'opacity' : 1
                }
            );
        }
    });
    
    $('#summernote').summernote({
        height: 200,                 // set editor height hfhfhfhfh
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
    
                                        // VERIFICAR MAIS PARA FRENTE PORQUE NÃO ESTÁ FUNCIONANDO ///
                                        /*var links = $('.lado3 a');
                                        console.log('links: ' + typeof links);
                                        for (var i=0; i<links.length; i++) {
                                            $(links[i]).attr('target','_blank');
                                            }*/

    function list(){
        $.ajax({
            url: "backend/list.php",
            method: 'GET',
            dataType: "html",
            success: function (data) {
                console.log(data);
                var lista = JSON.parse(data);
                //$('.lado2').append('<a href=""><h4 class="all">all</h4></a>');
                lista.map((registro, index) => {
                    var language_class = 'language-'+registro.language_sni;
                    var icon = registro.language_sni === 'git' ? '<i class="fab fa-git-square"></i>':'<i class="fab fa-js-square"></i>';
                    if(registro.language_sni === 'php'){
                        icon = '<i class="fab fa-php"></i>';
                    }                
                    if(registro.language_sni === 'jsx'){
                        icon = '<i class="fab fa-react"></i>';
                    }
                    $('.lado2').append('<a href="" id="'+registro.id_sni+'" class="link-code"><h4>'+registro.title_sni+'  '+icon+'</h4></a>');
                        if(index === 0){
                            $('.lado3').append('<h4 style="border-bottom: solid thin;">'+registro.title_sni+'  '+icon+'</h4>');
                            $('.lado3').append('<h5 class="description" style="color: #544e4e">'+registro.description_sni);
                            Prism.highlightAll();
                            $('.lado3').append('<pre class="code"><code class="brush: js line-numbers '+language_class+'">'+registro.syntax_sni+'</code></pre><hr>');
                            Prism.highlightAll();
                       }
                });
                $('code').show();
                $('.lado3').addClass('mostra-lado3');
            },
            error: function () {
                console("Deu erro na requisição da página!");
            }
        });         
    }

    function filter(id){
        console.log(typeof id);
        $.ajax({
            url: "backend/filter.php?id_sni="+id,
            method: 'GET',
            dataType: "html",
            success: function (data) {
                console.log(data);
                var lista = JSON.parse(data);
                //$('.lado2').append('<a href=""><h4 class="all">all</h4></a>');
                lista.map((registro, index) => {
                    console.log('R-> '+registro);
                    var language_class = 'language-'+registro.language_sni;
                    var icon = registro.language_sni === 'git' ? '<i class="fab fa-git-square"></i>':'<i class="fab fa-js-square"></i>';
                    if(registro.language_sni === 'php'){
                        icon = '<i class="fab fa-php"></i>';
                    }                
                    if(registro.language_sni === 'jsx'){
                        icon = '<i class="fab fa-react"></i>';
                    }
                    //$('.lado2').append('<a href="" id="'+registro.id_sni+'" class="link-code"><h4>'+registro.title_sni+'  '+icon+'</h4></a>');
                        //if(registro.id_sni == 29){
                            $('.lado3').empty();
                            $('.lado3').append('<h4 style="border-bottom: solid thin;">'+registro.title_sni+'  '+icon+'</h4>');
                            $('.lado3').append('<h5 class="description" style="color: #544e4e">'+registro.description_sni);
                            Prism.highlightAll();
                            $('.lado3').append('<pre class="code"><code class="brush: js line-numbers '+language_class+'">'+registro.syntax_sni+'</code></pre><hr>');
                            Prism.highlightAll();
                       //}
                });
                $('code').show();
                $('.lado3').addClass('mostra-lado3');
            },
            error: function () {
                console("Deu erro na requisição da página!");
            }
        }); 
    }
    
    

})();