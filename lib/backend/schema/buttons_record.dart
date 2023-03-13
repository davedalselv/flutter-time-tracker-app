import 'dart:async';

import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'buttons_record.g.dart';

abstract class ButtonsRecord
    implements Built<ButtonsRecord, ButtonsRecordBuilder> {
  static Serializer<ButtonsRecord> get serializer => _$buttonsRecordSerializer;

  int? get timerFirestore;

  String? get buttonNameFirestore;

  String? get buttonColor;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ButtonsRecordBuilder builder) => builder
    ..timerFirestore = 0
    ..buttonNameFirestore = ''
    ..buttonColor = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('buttons');

  static Stream<ButtonsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ButtonsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ButtonsRecord._();
  factory ButtonsRecord([void Function(ButtonsRecordBuilder) updates]) =
      _$ButtonsRecord;

  static ButtonsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createButtonsRecordData({
  int? timerFirestore,
  String? buttonNameFirestore,
  String? buttonColor,
}) {
  final firestoreData = serializers.toFirestore(
    ButtonsRecord.serializer,
    ButtonsRecord(
      (b) => b
        ..timerFirestore = timerFirestore
        ..buttonNameFirestore = buttonNameFirestore
        ..buttonColor = buttonColor
    ),
  );

  return firestoreData;
}
