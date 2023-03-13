import '/flutter_flow/flutter_flow_util.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

class SummaryModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Timer widget.
  int timerMilliseconds1 = 10000;
  String timerValue1 = StopWatchTimer.getDisplayTime(10000, milliSecond: false);
  StopWatchTimer timerController1 =
      StopWatchTimer(mode: StopWatchMode.countDown);

  // State field(s) for BlueTimer widget.
  int blueTimerMilliseconds = 10000;
  String blueTimerValue =
      StopWatchTimer.getDisplayTime(10000, milliSecond: false);
  StopWatchTimer blueTimerController =
      StopWatchTimer(mode: StopWatchMode.countDown);

  // State field(s) for GreenTimer widget.
  int greenTimerMilliseconds = 10000;
  String greenTimerValue =
      StopWatchTimer.getDisplayTime(10000, milliSecond: false);
  StopWatchTimer greenTimerController =
      StopWatchTimer(mode: StopWatchMode.countDown);

  // State field(s) for Timer widget.
  int timerMilliseconds2 = 10000;
  String timerValue2 = StopWatchTimer.getDisplayTime(10000, milliSecond: false);
  StopWatchTimer timerController2 =
      StopWatchTimer(mode: StopWatchMode.countDown);

  // State field(s) for Timer widget.
  int timerMilliseconds3 = 10000;
  String timerValue3 = StopWatchTimer.getDisplayTime(10000, milliSecond: false);
  StopWatchTimer timerController3 =
      StopWatchTimer(mode: StopWatchMode.countDown);

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    timerController1.dispose();
    blueTimerController.dispose();
    greenTimerController.dispose();
    timerController2.dispose();
    timerController3.dispose();
  }

  /// Additional helper methods are added here.

}
