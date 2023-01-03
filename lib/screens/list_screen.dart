import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:progress_clocks_fitd_flutter/models/progress_clocks_list.dart';

class ListScreen extends StatefulWidget {
  
  final String title;
  
  const ListScreen({
    super.key,
    required this.title
  });

  @override
  State<ListScreen> createState() => _ListScreenState();
}

//TODO: Implement a widget card to each clock in list
class _ListScreenState extends State<ListScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Consumer<ProgressClocksList>(
        builder: (BuildContext context, ProgressClocksList progressClocksList, Widget? widget) {
          return ListView.builder(
            itemCount: progressClocksList.progressClocksList.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: const Icon(Icons.punch_clock_rounded),
                title: Text(progressClocksList.progressClocksList[index].name),
              );
            },
          );
        } 
      ),
      floatingActionButton: FloatingActionButton(
        //TODO: Implement a route to a form to create a new clock
        onPressed: () {} ,
        child: const Icon(Icons.add)
      ),
    );
  }

}