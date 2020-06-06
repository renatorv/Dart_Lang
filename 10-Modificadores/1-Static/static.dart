import 'calculos.dart';

///
/// Static:
/// A variável estatica fica disponível na própria classe em vez de suas instâncias/objetos
/// Em métodos estaticos deve usar variáveis estáticas da classe
/// Variáveis estaticas podem ser acessadas sem precisar instanciar classes/objetos
///

void main() {
  print('10.0) Modificadores Static\n');

  double raio = 5;
  var calculos1 = Calculos();
  print("Valor do PI.: ${calculos1.pi}");
  print("Valor do PI estático.:  ${Calculos.piEstatico}");
  print("Área do circulo.: ${calculos1.areaCirculo(raio)}");

  print("");

  Calculos calculos2 = Calculos();
  print(calculos2.pi);
  print(calculos2.areaCirculo(raio));

  print("\n Instâncias consomem ${identical(calculos1, calculos2) ? 'MENOS' : 'MAIS'} memória \n");

  print(Calculos.piEstatico);
  print(Calculos.piEstatico * (raio * raio));
  print('Retornos iguais: ${Calculos.areaCirculoEstatico(raio) == Calculos().areaCirculo(raio) ? 'SIM' : 'NAO'} Métodos diferentes!');
}
