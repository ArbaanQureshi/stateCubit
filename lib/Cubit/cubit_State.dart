import '../model.dart';

abstract class CubitState{}


class initialState extends CubitState{}
class LoadingState extends CubitState{}
class RespondState extends CubitState{
  final List<Post> posts;
 RespondState({required this.posts});

}



