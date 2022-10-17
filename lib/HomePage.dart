import 'package:api2/Cubit/Cubit.dart';
import 'package:api2/Cubit/cubit_State.dart';
import 'package:api2/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Api Calling'),
      ),
      body:BlocBuilder<PostCubit,CubitState>(
          builder: (context, state)  {
        if(state is LoadingState){
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        else if (state is RespondState){
          var data = state.posts;
          return ListView.builder(
            itemCount: state.posts.length,
            itemBuilder:
                (context, index) =>
                Card(
                  child: ListTile(
                    leading: CircleAvatar(child: Text('${index+1}')),
                    title: Text(data[index].title.toString(),maxLines: 1,),
                    subtitle: Text(data[index].body.toString(),maxLines: 1,),
                  ),
                ),
          );
        }
        else {
          return Container(height: 10,
        color: Colors.greenAccent, );
        }
    }
      )
    );
  }
}
