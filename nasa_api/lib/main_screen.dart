import 'package:http/http.dart' as http;

class GetInfo{

   getInfo() async{
     http.Response response = await http.get('https://api.nasa.gov/planetary/apod?api_key=XegDZHpf8L9EfU4UaPFBpTjMP2MJt3oW1otIlLNF');
     if(response.statusCode == 200){
       String data = response.body;
       return data;
     }else{
       print(response.statusCode);
     }
   }

}