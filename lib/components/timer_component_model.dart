import '/flutter_flow/flutter_flow_util.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

class TimerComponentModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for countuptimer1 widget.
  int countuptimer1Milliseconds = 0;
  String countuptimer1Value =
      StopWatchTimer.getDisplayTime(0, milliSecond: false);
  StopWatchTimer countuptimer1Controller =
      StopWatchTimer(mode: StopWatchMode.countUp);

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    countuptimer1Controller.dispose();
  }

  /// Additional helper methods are added here.

}
