<%-- 
    Document   : index
    Created on : 17/12/2021, 11:29:13
    Author     : Rafael
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../componentes/login/header.jspf"%>
    <title>Login</title>
</head>
<body>
    <div class="container">
        <div class="row py-5 mt-4 align-items-center" style="background-color: #fff;">
            <div class="col-md col-lg ml-auto">
                <div class="card card-outline card-primary">
                    <div class="card-header text-center h1">
                        <p class="login-box-msg h4">Fa&ccedil;a seu login</p>
                    </div>
                    
                    <div class="card-body">
                        <form action="${pageContext.request.contextPath}/auth" id="login" method="POST">
                            <div class="input-group mb-3 ">
                                <label for="exampleFormControlSelect1">Tipo de Acesso</label>
                                <select id="perfil" name="perfil" class=" form-select form-select-lg mb-3 select2 select2-hidden-accessible"
                                        style="width: 100%;" tabindex="-1" aria-hidden="true">
                                    <option value="not-user" selected readonly>Selecionar acesso</option>
                                    <option value="aluno">Aluno</option>
                                    <option value="professor">Professor</option>
                                    <option value="gente-gestao">Gente e Gest&atilde;o</option>

                                </select>
                            </div>
                            <div class="input-group mb-3">
                                <input type="email" id="email" name="email" class="form-control" placeholder="Email">
                                <input type="text" id="civa" name="civa" style="display: none;" class="form-control" placeholder="civa">
                                <div class="input-group-append" id="user-logo">
                                    <div class="input-group-text">
                                        <span class="fas fa-envelope"></span>
                                    </div>
                                </div>
                                <div class="input-group-append" style="display: none;" id="civa-logo">
                                    <div class="input-group-text">
                                        <span class="fas fa-passport"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="input-group mb-3">
                                <input type="password" id="senha" name="senha" class="form-control" placeholder="Senha" >
                                <div class="input-group-append">
                                    <div class="input-group-text">
                                        <span class="fas fa-lock"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col d-flex justify-content-center"">
                                    <button type="Submit" form="login" class="btn btn-primary btn-block">Entrar</button>
                                </div>
                                <!-- /.col -->
                            </div>
                        </form>
                        <div class="mb-3 d-flex justify-content-center my-4">
                            <p class="mb-1">
                                <a href="./recuperar-senha.jsp">Esqueceu sua senha?</a>
                            </p>
                        </div>

                    </div>
                    <!-- /.card-body -->
                </div>
                <!-- /.card -->
            </div>
        </div><!-- /.login-page -->
</body>
</html>
