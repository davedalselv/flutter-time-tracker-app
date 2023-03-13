// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buttons_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ButtonsRecord> _$buttonsRecordSerializer =
    new _$ButtonsRecordSerializer();

class _$ButtonsRecordSerializer implements StructuredSerializer<ButtonsRecord> {
  @override
  final Iterable<Type> types = const [ButtonsRecord, _$ButtonsRecord];
  @override
  final String wireName = 'ButtonsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ButtonsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.timerFirestore;
    if (value != null) {
      result
        ..add('timerFirestore')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.buttonNameFirestore;
    if (value != null) {
      result
        ..add('buttonNameFirestore')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.buttonColor;
    if (value != null) {
      result
        ..add('buttonColor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  ButtonsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ButtonsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'timerFirestore':
          result.timerFirestore = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'buttonNameFirestore':
          result.buttonNameFirestore = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'buttonColor':
          result.buttonColor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$ButtonsRecord extends ButtonsRecord {
  @override
  final int? timerFirestore;
  @override
  final String? buttonNameFirestore;
  @override
  final String? buttonColor;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ButtonsRecord([void Function(ButtonsRecordBuilder)? updates]) =>
      (new ButtonsRecordBuilder()..update(updates))._build();

  _$ButtonsRecord._({this.timerFirestore, this.buttonNameFirestore, this.buttonColor, this.ffRef})
      : super._();

  @override
  ButtonsRecord rebuild(void Function(ButtonsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ButtonsRecordBuilder toBuilder() => new ButtonsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ButtonsRecord &&
        timerFirestore == other.timerFirestore &&
        buttonNameFirestore == other.buttonNameFirestore &&
        buttonColor == other.buttonColor &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, timerFirestore.hashCode), buttonNameFirestore.hashCode), buttonColor.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ButtonsRecord')
          ..add('timerFirestore', timerFirestore)
          ..add('buttonNameFirestore', buttonNameFirestore)
          ..add('buttonNameFirestore', buttonColor)
          ..add('ffRef', ffRef))
        .toString();
  }

}

class ButtonsRecordBuilder
    implements Builder<ButtonsRecord, ButtonsRecordBuilder> {
  _$ButtonsRecord? _$v;

  String? _buttonColor;
  String? get buttonColor => _$this._buttonColor;
  set buttonColor(String? buttonColor) =>
      _$this._buttonColor = buttonColor;

  int? _timerFirestore;
  int? get timerFirestore => _$this._timerFirestore;
  set timerFirestore(int? timerFirestore) =>
      _$this._timerFirestore = timerFirestore;

  String? _buttonNameFirestore;
  String? get buttonNameFirestore => _$this._buttonNameFirestore;
  set buttonNameFirestore(String? buttonNameFirestore) =>
      _$this._buttonNameFirestore = buttonNameFirestore;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ButtonsRecordBuilder() {
    ButtonsRecord._initializeBuilder(this);
  }

  ButtonsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timerFirestore = $v.timerFirestore;
      _buttonNameFirestore = $v.buttonNameFirestore;
      _buttonColor = $v.buttonColor;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ButtonsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ButtonsRecord;
  }

  @override
  void update(void Function(ButtonsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ButtonsRecord build() => _build();

  _$ButtonsRecord _build() {
    final _$result = _$v ??
        new _$ButtonsRecord._(
            timerFirestore: timerFirestore,
            buttonNameFirestore: buttonNameFirestore,
            buttonColor: buttonColor,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
