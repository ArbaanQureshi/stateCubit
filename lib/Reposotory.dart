import 'dart:convert' as convert;
import 'package:api2/model.dart';
import 'package:dio/dio.dart';


class ApiServices{
  final url='https://jsonplaceholder.typicode.com/posts';
  Future<List<Post>> getPost() async{
    try{
      Response response;
      var dio = Dio();
      response= await dio.get(url);
      if(response.statusCode==200){
        var json=response.data;
        var pos=List<Post>.from(
            json.map((e)=>Post.fromJsom(e)));
        return pos;
      }else{
        throw 'someThing Wentr Wrong ${response.statusCode}';
      }
    }catch(e){
      rethrow;
    }
  }
}

