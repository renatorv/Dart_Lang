///
/// Os construtores devem ter o mesmo nome da classe!
/// Eles sao iniciados quando instanciamos as classes, podendo fazer configurações iniciais
///

void main() {
  print('08.0) CONSTRUTORES\n');
}

class Objeto {
  String nome;

  // CONSTRUTOR
  Objeto() {
    print('Construtor sem parametros! ${this.toString()}');
  }
}
