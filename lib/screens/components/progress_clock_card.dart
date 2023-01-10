import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:progress_clocks_fitd_flutter/models/progress_clock.dart';

class ProgressClockCard extends StatefulWidget {
  
  ProgressClock progressClock;
  
  ProgressClockCard({
    Key? key,
    required this.progressClock
  }) : super(key: key);

  @override
  State<ProgressClockCard> createState() => _ProgressClockCardState();
}

class _ProgressClockCardState extends State<ProgressClockCard> {

  @override
  Widget build(BuildContext context) {
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    widget.progressClock.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20
                    ),
                  ),
                  Text(
                    '[${widget.progressClock.currentProgressLevel}/${widget.progressClock.maxProgressLevel}]',
                    style: const TextStyle(
                      color: Colors.white
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    // Decrease currentProgressLevel using ProgressClock method
                    onPressed: () {
                      setState(() {
                        widget.progressClock.decreaseCurrentProgressLevel();
                      });
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: widget.progressClock.currentProgressLevel > 0? Colors.red : Colors.grey,
                    ),
                    iconSize: 36,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 150,
                      height: 150,
                      // Max and Current progress levels information are used herein to render svg file
                      child: SvgPicture.asset(
                        'assets/images/progress_clocks_svg/${widget.progressClock.maxProgressLevel}/${widget.progressClock.maxProgressLevel}-${widget.progressClock.currentProgressLevel}.svg',
                        color: Colors.white
                      ),
                    ),
                  ),
                  IconButton(
                    // Increase currentProgressLevel using ProgressClock method
                    onPressed: () {
                      setState(() {
                        widget.progressClock.increaseCurrentProgressLevel();
                      });
                    },
                    icon: Icon(
                      Icons.arrow_forward,
                      color: widget.progressClock.currentProgressLevel < widget.progressClock.maxProgressLevel? Colors.green : Colors.grey,
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
  }
}