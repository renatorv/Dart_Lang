class Usuario {
  String user, senha, nome, cargo;
  int idade;

  Usuario(this.user, this.senha, {this.nome, String cargo}) {
    this.nome = (nome == null) ? 'semnome' : nome;
    this.cargo = (cargo == null) ? 'Usuario' : cargo;

    print('Construtor resumido com parametros nomeados default! ${this.toString()}');
  }

  // Construtor nomeado - personalizado
  // cargo pré configurado para administrados
  Usuario.admin(this.user, this.senha, {this.nome}) {
    this.nome = (nome == null) ? 'semnome' : nome;
    this.cargo = 'Administrador';

    print('Construtor resumido com parametros nomeados default! ${this.toString()}');
  }

  void autenticar() {
    // dados recuperados do banco de dados
    var user = 'renatorv@gmail.com';
    var senha = 'abc123';

    (this.user == user && this.senha == senha) ? print('Usuário autenticado') : print('Usuário não autenticado');
  }
}
