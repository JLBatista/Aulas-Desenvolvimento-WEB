CREATE DATABASE sisescolar;

USE sisescolar;

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    tipo ENUM('administrador', 'professor', 'aluno') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - SISESCOLAR</title>
    <link href="Assets/css/style.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header bg-primary text-white">
                        <h4 class="text-center">Login</h4>
                    </div>
                    <div class="card-body">
                        <?php
                        if (isset($_SESSION['login_error'])) {
                            echo "<div class='alert alert-danger'>" . $_SESSION['login_error'] . "</div>";
                            unset($_SESSION['login_error']);  // Limpa a mensagem de erro
                        }
                        ?>
                        <form method="POST" action="view/login.php">
                            <div class="mb-3">
                                <label for="email" class="form-label">Email</label>
                                <input type="email" class="form-control" id="email" name="email" required>
                            </div>
                            <div class="mb-3">
                                <label for="senha" class="form-label">Senha</label>
                                <input type="password" class="form-control" id="senha" name="senha" required>
                            </div>
                            <button type="submit" class="btn btn-primary w-100">Entrar</button>
                        </form>
                        <div class="mt-3 text-center">
                            <a href="View/recuperar_senha.php" class="text-decoration-none">Esqueci minha senha</a>
                            <br>
                            <a href="View/cadastro.php" class="text-decoration-none">Cadastrar novo usuário</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
