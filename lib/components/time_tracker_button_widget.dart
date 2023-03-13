import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'time_tracker_button_model.dart';
export 'time_tracker_button_model.dart';

class TimeTrackerButtonWidget extends StatefulWidget {
  const TimeTrackerButtonWidget({
    Key? key,
    this.buttonName,
    this.timerValue,
    this.isGoing,
  }) : super(key: key);

  final String? buttonName;
  final int? timerValue;
  final bool? isGoing;

  @override
  _TimeTrackerButtonWidgetState createState() =>
      _TimeTrackerButtonWidgetState();
}

class _TimeTrackerButtonWidgetState extends State<TimeTrackerButtonWidget> {
  late TimeTrackerButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TimeTrackerButtonModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
      child: InkWell(
        onTap: () async {
          if (widget.isGoing == true) {
            _model.countuptimer1Controller.onExecute.add(StopWatchExecute.stop);
            setState(() {
              _model.isGoing = false;
            });
          } else {
            _model.countuptimer1Controller.onExecute
                .add(StopWatchExecute.start);
            setState(() {
              _model.isGoing = true;
            });
          }
        },
        child: Container(
          width: 160.0,
          height: 160.0,
          decoration: BoxDecoration(
            color: Color(0xFF1C89FF),
            shape: BoxShape.circle,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.buttonName!,
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.of(context).customColor5,
                      fontSize: 22.0,
                    ),
              ),
              FlutterFlowTimer(
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
              ),
              Text(
                'Today',
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                    ),
              ),
              FlutterFlowTimer(
                initialTime: widget.timerValue!,
                getDisplayTime: (value) =>
                    StopWatchTimer.getDisplayTime(value, milliSecond: false),
                timer: _model.countdowntimer1Controller,
                updateStateInterval: Duration(milliseconds: 1000),
                onChanged: (value, displayTime, shouldUpdate) {
                  _model.countdowntimer1Milliseconds = value;
                  _model.countdowntimer1Value = displayTime;
                  if (shouldUpdate) setState(() {});
                },
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
