import 'package:estilizacao_componentes/components/box_card.dart';
import 'package:estilizacao_componentes/data/bank_inherited.dart';
import 'package:estilizacao_componentes/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  testWidgets('My widget has a text "Spent" ', (widgetTester) async{
    //constrói a tela que será testada
    await widgetTester.pumpWidget(MaterialApp(
        home: BankInherited(
            child: Home()
        ),
       ));
    //busca o texto no widget
    final spentFinder = find.text('Spent');
    expect(spentFinder, findsOneWidget);
  });
  testWidgets('finds a LinearProgressIndicator', (widgetTester) async {
    await widgetTester.pumpWidget(MaterialApp(
      home: BankInherited(
          child: Home()
      ),
    ));
    expect(find.byType(LinearProgressIndicator), findsOneWidget);
  });

  //Busca 5 BoxCards
  testWidgets('finds 5 BoxCards ', (widgetTester) async {
    await widgetTester.pumpWidget(MaterialApp(
      home: BankInherited(
          child: Home()
      ),
    ));
    expect(find.byWidgetPredicate((widget){
      if(widget is BoxCard){
        return true;
      } else  {
        return false;
      }
    }), findsNWidgets(5));
  });
  //Busca 5 BoxCards
  testWidgets('finds 5 BoxCards ', (widgetTester) async {
    await widgetTester.pumpWidget(MaterialApp(
      home: BankInherited(
          child: Home()
      ),
    ));
    expect(find.byWidgetPredicate((widget){
      if(widget is BoxCard){
        return true;
      } else  {
        return false;
      }
    }), findsNWidgets(5));
  });

  //desafio 1
  testWidgets('My widget has a text "Transfer" ', (widgetTester) async{
    //constrói a tela que será testada
    await widgetTester.pumpWidget(MaterialApp(
      home: BankInherited(
        child: Home(),
      ),
    ));
    //busca o texto no widget
    final transferFinder = find.text('Transfer');
    expect(transferFinder, findsOneWidget);
  });

  testWidgets('When tap Deposit should upload earned in 10', (tester) async {
    //constrói a tela que será testada
    await tester.pumpWidget(MaterialApp(
      home: BankInherited(
        child: Home(),
      ),
    ));
    await tester.tap(find.text('Deposit'));//ao fazer o tap muda para 10
    await tester.tap(find.text('Earned'));

    await tester.pumpAndSettle();// obrigatório para atualizar a tela

    expect(find.text('\$10.0'), findsOneWidget);//verifica se tem o valor 10
  });

}