import 'package:estilizacao_componentes/models/bank.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Bank model deposit tests', () {
    test('Bank model deposit shoul be 10', () {
      final bank = BankModel();
      bank.deposit(10);
      expect(bank.points, 10);
    });

    test('Bank model deposit shoul turn available into 10', () {
      final bank = BankModel();
      bank.transfer(10);
      expect(bank.points, 10);
    });
  });

  //desafio 2
  test('Bank model should start with 0', () {
    final bank = BankModel();
    expect(bank.available, 0);
  });

  //desafio 3
  test('Bank model should have 100', () {
    final bank = BankModel();
    bank.deposit(200);
    bank.transfer(100);
    expect(bank.spent, 100);
  });

  test('Bank model transfer should turn points into 10', () {
    final bank = BankModel();
    bank.transfer(10);
    expect(bank.points, 10);
  });


}