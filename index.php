<?php

    //include("/backend/conecta.php");

?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>::: Code Dictionary |||></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">    
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.16/dist/summernote.min.css" rel="stylesheet">    
    <link rel="stylesheet" href="css/prism.css">
    <link rel="stylesheet" href="css/style.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet">
</head>
<body>




    <div class="container-fluid">





        <div class="row">      
        </div>
        <div class="row">
        
            <div class="col-md-4 col-lg-4 lado1">
                <h2>Code Dictionary .:. Add Code</h2>
                <form method="POST" action="backend/save.php">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Title:</label>
                        <input type="text" class="form-control" id="exampleInputEmail1" name='title' aria-describedby="emailHelp" required>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Description:</label>
                        <textarea id="summernote" name="description" required></textarea>                    
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlTextarea1">Syntax:</label>
                        <textarea class="form-control" id="exampleFormControlTextarea1" name='syntax' rows="3" required></textarea>
                    </div>  
                    
                    
                    <div class="row coluna-select">
                    <div class="form-group">
                        <label for="exampleFormControlSelect2">Classification:</label>
                            <select class="form-control" name="classification">
                                <option>back-end</option>
                                <option>front-end</option>
                                <option>tools</option>
                            </select>
                    </div>   
                    <div class="form-group">
                        <label for="exampleFormControlSelect2">Language:</label>
                            <select class="form-control" name="language">
                                <option>css</option>
                                <option>git</option>
                                <option>js</option>
                                <option>php</option>
                                <option>react</option>
                            </select>
                    </div>   
                    <div class="form-group">
                        <label for="exampleFormControlSelect2">Category:</label>
                            <select class="form-control" name="category">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                            </select>
                    </div>   
                    <div class="form-group">
                        <label for="exampleFormControlSelect2">Subcategory:</label>
                            <select class="form-control" name="subcategory">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                            </select>
                    </div>
                    </div>

                    <input type="hidden" value="1" name="type">
                    <button type="submit" class="btn btn-primary">Save new syntax</button>
                </form>                
            </div>

            <div class="col-md-2 col-lg-2 lado2"> 
            </div>

            
            <div class="col-md-6 col-lg-6 lado3">
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/js/all.min.js"></script>
    <script src="js/prism.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.min.js"></script>

    <script src="js/script.js"></script>



</body>
</html>