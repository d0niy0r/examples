import 'package:example/features/lesson3/data/repository/lesson3_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/lesson3_provider.dart';

class UseHttpScreen extends StatefulWidget {
  const UseHttpScreen({super.key});

  @override
  State<UseHttpScreen> createState() => _UseHttpScreenState();
}

class _UseHttpScreenState extends State<UseHttpScreen> {
  @override
  void initState() {


    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final provider = context.watch<Lesson3Provider>();
    provider.getData();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
      ),
      // body: Center(
      //   // child: FutureBuilder(
      //   //     future: Lesson3Repository().getData(),
      //   //     builder: (context, snapshot){
      //   //       if(snapshot.hasData){
      //   //         return Column(
      //   //           mainAxisSize: MainAxisSize.min,
      //   //           crossAxisAlignment: CrossAxisAlignment.center,
      //   //           children: [
      //   //             Text(snapshot.data?.id.toString() ?? "-"),
      //   //             Text(snapshot.data?.title.toString() ?? "-"),
      //   //             Text(snapshot.data?.price.toString() ?? "-"),
      //   //             Text(snapshot.data?.description.toString() ?? "-"),
      //   //             Text(snapshot.data?.category.toString() ?? "-"),
      //   //             Image.network(snapshot.data?.image ?? "", height: 200),
      //   //           ],
      //   //         );
      //   //       }
      //   //       if(snapshot.hasError){
      //   //         return Text("data error berdi");
      //   //       }
      //   //       return CircularProgressIndicator.adaptive();
      //   //     },
      //   // ),
      //   // child: Consumer<Lesson3Provider>(
      //   //   builder: (BuildContext context, provider, Widget? child) {
      //   //
      //   //   },),
      // ),
      body: ListenableBuilder(
        listenable: provider,
        builder: (BuildContext context, Widget? child) {
          if(provider.loading){
            return const Center(child: CircularProgressIndicator());
          }
          if(provider.error){
            return const Center(child: Text("error"));
          }
          return Center(
            child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Text(provider.lesson3model?.id.toString() ?? "-"),
            Text(provider.lesson3model?.title.toString() ?? "-"),
            Text(provider.lesson3model?.price.toString() ?? "-"),
            Text(provider.lesson3model?.description.toString() ?? "-"),
            Text(provider.lesson3model?.category.toString() ?? "-"),
            Image.network(provider.lesson3model?.image ?? "", height: 200),
            ],
            ),
          );
        },
      ),
    );
  }
}

