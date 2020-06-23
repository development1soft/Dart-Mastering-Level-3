import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
void main(){
  
  // getdata();
  
  // storePost();

  // deletePost();

  // updateFullPost();

  // updatePartPost();

}

getdata() async{

  var url = "https://jsonplaceholder.typicode.com/users";

  var response = await http.get(url);

  var responseJson = convert.jsonDecode(response.body);

  for (var user in responseJson) {
    print(user['email']);
  }

}

storePost() async{
    
  var url = "https://jsonplaceholder.typicode.com/posts";

  var response = await http.post(
    url,
    body : {'user_id':'25635','id':'3000','title':'first title from api','body':'first body from api'}
  );

  var responseJson = convert.jsonDecode(response.body);

  // 200 ok

  if(response.statusCode == 201)
  {
    
    print(responseJson['title'].toString());
  
  }else{

    print('please try later');
  
  }

}

deletePost() async{

  var url = "https://jsonplaceholder.typicode.com/posts/1";

  var response = await http.delete(url);

  if(response.statusCode == 200)
  {
    print('post deleted successfully');

  }else{

    print('please try later');

  }

}

updateFullPost() async{

  var url = "https://jsonplaceholder.typicode.com/posts/1";

  var response = await http.put(url,body: {
  
    'userId':'2',
  
    'title':'test update title',
  
    'body':'test update body',
  
  });

  var jsonResponse = convert.jsonDecode(response.body);

  print(jsonResponse['title'].toString());


}

updatePartPost() async{

  var url = "https://jsonplaceholder.typicode.com/posts/1";

  var response = await http.patch(url,body: {
  
    'title':'test update title using patch',
  
  });

  var jsonResponse = convert.jsonDecode(response.body);

  print(jsonResponse);


}