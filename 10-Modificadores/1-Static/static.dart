///
/// Static:
/// A variável estatica fica disponível na própria classe em vez de suas instâncias/objetos
/// Em métodos estaticos deve usar variáveis estáticas da classe
/// Variáveis estaticas podem ser acessadas sem precisar instanciar classes/objetos
///

void main() {
  print('10.0) Modificadores Static\n');
}

class Calculos {
  double pi = 3.14;
  static double piEstatico = 3.14;

  double areaCirculo(double raio) {
    return pi * (raio * raio);
  }

  static areaCirculoEstatico(double raio) {
    return piEstatico * (raio * raio);
  }
}
