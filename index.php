<?php

    //include("/backend/conecta.php");

?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/prism.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

    <div class="container-fluid">
        <div class="row">      
        </div>
        <div class="row">
        
            <div class="col-md-2 col-lg-2 lado1">  
            </div>

            <div class="col-md-10 col-lg-10 lado2">
                        



            </div>
        </div>




      <!-- Modal -->
        <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalCenterTitle">New Snippet</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body p-5">
                    <div class="form-group">
                        <div class="row">
                            <label for="titulo">Description:</label>
                            <input type="text" class="form-control" id="titulo" name="titulo" />   
                        </div>                     
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label for="comment">Snippet:</label>
                            <textarea class="form-control" rows="5" id="snippets" name="snippets"></textarea>
                            <!--<textarea name="editor1" id="snippets"></textarea> -->                           
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
                </div>
            </div>
        </div>
    
    
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="js/prism.js"></script>
    <script src="js/script.js"></script>


</body>
</html>