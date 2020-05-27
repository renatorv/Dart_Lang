import 'usuario.dart';

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
