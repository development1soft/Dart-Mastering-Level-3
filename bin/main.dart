import 'package:http/http.dart';

main() async{

  Future<String> getData() async{
    return await Future.delayed(Duration(seconds: 5),(){
      return 'Welcome Dart';
    });
  }

  await getData().then((value){
    print(value);
  });

  print('welcome');

}