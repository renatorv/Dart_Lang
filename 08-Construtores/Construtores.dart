///
/// Os construtores devem ter o mesmo nome da classe!
/// Eles sao iniciados quando instanciamos as classes, podendo fazer configurações iniciais
///

void main() {
  print('08.0) CONSTRUTORES\n');

  //Objeto obj = new Objeto();
  //obj.nome = 'mesa';
  //print('nome.: ${obj.nome} \n');

  // Animal animal = Animal('Belinha', 'Pug', 2);
  // print('Nome.: ${animal.nome} Raça.: ${animal.raca} Idade.: ${animal.idade}\n');

  // Pessoa pessoa = Pessoa('Renato', 41, altura: 1.79);
  // print('nome.: ${pessoa.nome} idade.: ${pessoa.idade} altura.: ${pessoa.altura} cor.: ${pessoa.cor}\n');

  // Dados inseridos pelo usuário
  Usuario usuario = Usuario('renatorv@gmail.com', 'abc1232', nome: 'Renato');
  print('Usuário.: ${usuario.user} Senha.: ${usuario.senha} Nome.: ${usuario.nome} Cargo.: ${usuario.cargo}');
  usuario.autenticar();

  // Dados inseridos pelo administrador
  Usuario admin = Usuario.admin('renatorv@gmail.com', 'abc123', nome: 'Renato');
  print('Administrador.: ${admin.user} Senha.: ${admin.senha} Nome.: ${admin.nome} Cargo.: ${admin.cargo}');
  admin.autenticar();
}

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

class Pessoa {
  String nome;
  int idade;
  String cor;
  double altura;

  Pessoa(this.nome, this.idade, {String cor, this.altura = 0}) {
    this.cor = (cor == null) ? 'indefinida' : cor;
    print('Construtor resumido com parametros nomeados! ${this.toString()}');
  }
}

class Animal {
  String nome;
  String raca;
  int idade;

  Animal(String nome, [String raca, int idade = 0]) {
    this.nome = nome;
    this.raca = raca;
    this.idade = idade;

    print('Construtor com parametros default! ${this.toString()}');
  }
}

class Objeto {
  String nome;

  // CONSTRUTOR
  Objeto() {
    print('Construtor sem parametros! ${this.toString()}');
  }
}
