import 'dart:math';

import 'package:flutter_animate/flutter_animate.dart';

import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';
import 'package:logger/logger.dart';


class HomePageWidget extends StatefulWidget {
  HomePageWidget({
    Key? key,
    this.activeButton
    }) : super(key: key);

  int? activeButton;

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    _model.buttonNameFieldController ??= TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
      body: Material(
        color: Colors.transparent,
        elevation: 6.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(16.0),
            bottomRight: Radius.circular(16.0),
            topLeft: Radius.circular(0.0),
            topRight: Radius.circular(0.0),
          ),
        ),
        child: Container(
          width: MediaQuery.of(context).size.width * 1.0,
          height: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBtnText,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16.0),
              bottomRight: Radius.circular(16.0),
              topLeft: Radius.circular(0.0),
              topRight: Radius.circular(0.0),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(85.0, 30.0, 85.0, 30.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: _model.buttonNameFieldController,
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: '[Name of activity]',
                          hintStyle: FlutterFlowTheme.of(context).bodyText2,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1,
                        validator: _model.buttonNameFieldControllerValidator
                            .asValidator(context),
                      ),
                    ),
                    FFButtonWidget(
                      onPressed: () async {
                        final buttonsCreateData = createButtonsRecordData(
                          buttonNameFirestore:
                              _model.buttonNameFieldController.text,
                          timerFirestore: 0,
                          buttonColor: Colors.primaries[Random().nextInt(Colors.primaries.length)].value.toRadixString(16).substring(2).toUpperCase().toString(),
                        );
                        await ButtonsRecord.collection
                            .doc()
                            .set(buttonsCreateData);
                      },
                      text: 'Add',
                      options: FFButtonOptions(
                        width: 100.0,
                        height: 40.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Color.fromARGB(255, 59, 59, 59),
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ],
                ),
              ),
              StreamBuilder<List<ButtonsRecord>>(
                stream: queryButtonsRecord(),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: CircularProgressIndicator(
                          color: Colors.white
                        ),
                      ),
                    );
                  }
                  List<ButtonsRecord> wrapButtonsRecordList = snapshot.data!;
                  return Wrap(
                    spacing: 0.0,
                    runSpacing: 0.0,
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    direction: Axis.horizontal,
                    runAlignment: WrapAlignment.center,
                    verticalDirection: VerticalDirection.down,
                    clipBehavior: Clip.none,
                    children: List.generate(wrapButtonsRecordList.length,
                        (wrapIndex) {
                      final wrapButtonsRecord =
                          wrapButtonsRecordList[wrapIndex];
                      return Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 10.0, 10.0, 10.0),
                        child: InkWell(
                          onTap: () async {
                            if (_model.timerValue == '00:00:00') {
                              _model.timerController.onExecute
                                  .add(StopWatchExecute.start);

                              widget.activeButton = wrapIndex;

                              final logger = Logger();
                              logger.i(widget.activeButton);
                              setState(() {});

                            } else {
                              final buttonsUpdateData = createButtonsRecordData(
                                  timerFirestore: wrapButtonsRecordList[widget.activeButton as int].timerFirestore! + _model.timerMilliseconds);

                              await wrapButtonsRecordList[widget.activeButton as int].reference
                                  .update(buttonsUpdateData);

                              _model.timerController.onExecute
                                  .add(StopWatchExecute.reset);

                              if (widget.activeButton != wrapIndex) {
                                _model.timerController.onExecute
                                  .add(StopWatchExecute.start);

                                widget.activeButton = wrapIndex;
                              } else {
                                widget.activeButton = -1;
                              }

                              setState(() {});
                            }

                          },
                          onLongPress: () async {
                            if (wrapButtonsRecord.timerFirestore == 0) {
                              await wrapButtonsRecord.reference.delete();
                            } else {
                              widget.activeButton = -1;

                              _model.timerController.onExecute
                                  .add(StopWatchExecute.reset);

                              final buttonsUpdateData = createButtonsRecordData(
                                  timerFirestore: 0);

                              await wrapButtonsRecord.reference
                                  .update(buttonsUpdateData);
                            }

                          },
                          child: Container(
                            width: 160.0,
                            height: 160.0,
                            decoration: BoxDecoration(
                            color: Color(int.parse('ff' + (wrapButtonsRecord.buttonColor!), radix: 16)),
                              shape: BoxShape.circle,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                if (wrapIndex == widget.activeButton) FlutterFlowTimer(
                                  initialTime: _model.timerMilliseconds,
                                  getDisplayTime: (value) =>
                                      StopWatchTimer.getDisplayTime(value, milliSecond: false),
                                  timer: _model.timerController,
                                  updateStateInterval: Duration(milliseconds: 1000),
                                  onChanged: (value, displayTime, shouldUpdate) {
                                    _model.timerMilliseconds = value;
                                    _model.timerValue = displayTime;

                                    if (shouldUpdate) setState(() {});
                                  },
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                      ),
                                ),
                                if (wrapIndex != widget.activeButton) SizedBox(height: 21),
                                Text(
                                  wrapButtonsRecord.buttonNameFirestore!,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                        fontSize: 22.0,
                                      ),
                                ),
                                Text(
                                  wrapButtonsRecord.timerFirestore!.milliseconds.toString().substring(0,7),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
