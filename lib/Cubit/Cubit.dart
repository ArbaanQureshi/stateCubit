import 'package:api2/Cubit/cubit_State.dart';
import 'package:api2/Reposotory.dart';
import 'package:bloc/bloc.dart';


class PostCubit extends Cubit<CubitState>{
  final _dataServices=ApiServices();
  PostCubit() : super(initialState());

  void get poss async{
    var data = await _dataServices.getPost();
    emit(RespondState(posts: data));

  }
}