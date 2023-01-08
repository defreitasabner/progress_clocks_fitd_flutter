import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(4)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              Icons.punch_clock_rounded,
                              color: Colors.white
                            ),
                            Text(
                              progressClocksList.progressClocksList[index].name,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18
                              ),
                            ),
                            const Icon(
                              Icons.edit,
                              color: Colors.white,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_back,
                                color: Colors.red,
                              ),
                              iconSize: 36,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                width: 150,
                                height: 150,
                                child: SvgPicture.asset(
                                  'assets/images/progress_clocks_svg/4/4-0.svg',
                                  color: Colors.white
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_forward,
                                color: Colors.green
                              ),
                              iconSize: 36,
                            ),
                          ],
                        )
                      ]
                    ),
                  ),
                ),
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