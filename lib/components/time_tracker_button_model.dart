import '/flutter_flow/flutter_flow_util.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

class TimeTrackerButtonModel extends FlutterFlowModel {
  ///  Local state fields for this component.

  bool isGoing = true;

  ///  State fields for stateful widgets in this component.

  // State field(s) for countuptimer1 widget.
  int countuptimer1Milliseconds = 0;
  String countuptimer1Value =
      StopWatchTimer.getDisplayTime(0, milliSecond: false);
  StopWatchTimer countuptimer1Controller =
      StopWatchTimer(mode: StopWatchMode.countUp);

  // State field(s) for countdowntimer1 widget.
  int countdowntimer1Milliseconds = 0;
  String countdowntimer1Value =
      StopWatchTimer.getDisplayTime(0, milliSecond: false);
  StopWatchTimer countdowntimer1Controller =
      StopWatchTimer(mode: StopWatchMode.countDown);

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    countuptimer1Controller.dispose();
    countdowntimer1Controller.dispose();
  }

  /// Additional helper methods are added here.

}
