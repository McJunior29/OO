

import 'Conta.dart';

void main() {
  Conta conta1 = Conta( 1000.0, "Alice");
  Conta conta2 = Conta.saldoZero("Bob");

  conta1.mostrarSaldo();
  conta2.mostrarSaldo();

  conta1.depositar(500.0);
  conta1.mostrarSaldo();

  if (conta1.transferir(300.0, conta2)) {
    print("Transferência bem-sucedida.");
  } else {
    print("Falha na transferência.");
  }

  conta1.mostrarSaldo();
  conta2.mostrarSaldo();
}