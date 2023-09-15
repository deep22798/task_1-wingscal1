import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';
class HomeController extends GetxController{
  final List<String> items = [
    'C',
    '%',
    'DEL',
    '/',
    '7',
    '8',
    '9',
    'X',
    '4',
    '5',
    '6',
    '-',
    '1',
    '2',
    '3',
    '+',
    '00',
    '0',
    '.',
    '=',
  ].obs;

  var displayText='cksjbcjks'.obs;
  var store=[].obs;

  void handle(index){
    if(index=='C'){
      displayText.value='';
      store.value=[];
    }
    else if(index=='%'){
      store.add('%');
    }
    else if(index=='DEL'){
      store.removeLast();
    }
    else if(index=='/'){
      store.add('/');
    }
    else if(index=='7'){
      store.add(7);
    }
    else if(index=='8'){
      store.add(8);
    }
    else if(index=='9'){
      store.add(9);
    }
    else if(index=='X'){
      store.add('*');
    }
    else if(index=='4'){
      store.add(4);
    }
    else if(index=='5'){
      store.add(5);
    }
    else if(index=='6'){
      store.add(6);
    }
    else if(index=='-'){
      store.add('-');
    }
    else if(index=='1'){
      store.add(1);
    }
    else if(index=='2'){
      store.add(2);
    }
    else if(index=='3'){
      store.add(3);
    }
    else if(index=='+'){
      store.add('+');
    }
    else if(index=='00'){
      store.add('00');
    }
    else if(index=='0'){
      store.add(0);
    }
    else if(index=='.'){
      store.add('.');
    }
    else if(index=='='){
      calculateResult();

    }
}

  double evaluateExpression() {
    String exp = store.join('');
    Parser p = Parser();
    Expression expObj = p.parse(exp);
    ContextModel cm = ContextModel();
    return expObj.evaluate(EvaluationType.REAL, cm);
  }
  void calculateResult() {
    try {
      displayText.value = evaluateExpression().toString();
      store.value=['$displayText'];
      print(displayText.value.toString());
    } catch (e) {
      displayText.value = '';
    }
  }


}