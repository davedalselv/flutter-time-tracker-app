import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'timer_component_model.dart';
export 'timer_component_model.dart';

class TimerComponentWidget extends StatefulWidget {
  const TimerComponentWidget({Key? key}) : super(key: key);

  @override
  _TimerComponentWidgetState createState() => _TimerComponentWidgetState();
}

class _TimerComponentWidgetState extends State<TimerComponentWidget> {
  late TimerComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TimerComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterFlowTimer(
      initialTime: _model.countuptimer1Milliseconds,
      getDisplayTime: (value) =>
          StopWatchTimer.getDisplayTime(value, milliSecond: false),
      timer: _model.countuptimer1Controller,
      updateStateInterval: Duration(milliseconds: 1000),
      onChanged: (value, displayTime, shouldUpdate) {
        _model.countuptimer1Milliseconds = value;
        _model.countuptimer1Value = displayTime;
        if (shouldUpdate) setState(() {});
      },
      textAlign: TextAlign.start,
      style: FlutterFlowTheme.of(context).bodyText1.override(
            fontFamily: 'Poppins',
            color: FlutterFlowTheme.of(context).primaryBtnText,
          ),
    );
  }
}
