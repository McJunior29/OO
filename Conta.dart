class Conta {
  int? _id;
  double _saldo = 0;
  String? _titular;
  String _numero = "25419";
  static int _count = 0;

  Conta(double valor, String nome) {
    this._id = _count;
    this._titular = nome;
    _count = _count + 1;
  }

  Conta.saldoZero(String titular) : this( 0.0, titular);

  get id => this._id;

  set id(value) => this._id = value;

  get saldo => this._saldo;

  set valor(value) => this._saldo += value;

  get nome => this._titular;

  set nome(value) => this._titular = value;

  get numero => this._numero;

  set numero(value) => this._numero = value;

  bool sacar(double valor) {
    if (valor > 0 && valor <= _saldo) {
      _saldo -= valor;
      return true;
    } else {
      return false; 
    }
  }

  void depositar(double valor) {
    if (valor > 0) {
      _saldo += valor;
    }
  }

  bool transferir(double valor, Conta destino) {
    if (sacar(valor)) {
      destino.depositar(valor);
      return true; 
    } else {
      return false;
    }
  }

  void mostrarSaldo() {
    print("Saldo da conta de $_titular: R\$$_saldo");
  }
  
}
