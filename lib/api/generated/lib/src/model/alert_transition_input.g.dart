// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alert_transition_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AlertTransitionInputFeedbackEnum
_$alertTransitionInputFeedbackEnum_useful =
    const AlertTransitionInputFeedbackEnum._('useful');
const AlertTransitionInputFeedbackEnum
_$alertTransitionInputFeedbackEnum_noise =
    const AlertTransitionInputFeedbackEnum._('noise');
const AlertTransitionInputFeedbackEnum
_$alertTransitionInputFeedbackEnum_late_ =
    const AlertTransitionInputFeedbackEnum._('late_');
const AlertTransitionInputFeedbackEnum
_$alertTransitionInputFeedbackEnum_falsePositive =
    const AlertTransitionInputFeedbackEnum._('falsePositive');
const AlertTransitionInputFeedbackEnum
_$alertTransitionInputFeedbackEnum_unknownDefaultOpenApi =
    const AlertTransitionInputFeedbackEnum._('unknownDefaultOpenApi');

AlertTransitionInputFeedbackEnum _$alertTransitionInputFeedbackEnumValueOf(
  String name,
) {
  switch (name) {
    case 'useful':
      return _$alertTransitionInputFeedbackEnum_useful;
    case 'noise':
      return _$alertTransitionInputFeedbackEnum_noise;
    case 'late_':
      return _$alertTransitionInputFeedbackEnum_late_;
    case 'falsePositive':
      return _$alertTransitionInputFeedbackEnum_falsePositive;
    case 'unknownDefaultOpenApi':
      return _$alertTransitionInputFeedbackEnum_unknownDefaultOpenApi;
    default:
      return _$alertTransitionInputFeedbackEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<AlertTransitionInputFeedbackEnum>
_$alertTransitionInputFeedbackEnumValues =
    BuiltSet<AlertTransitionInputFeedbackEnum>(
      const <AlertTransitionInputFeedbackEnum>[
        _$alertTransitionInputFeedbackEnum_useful,
        _$alertTransitionInputFeedbackEnum_noise,
        _$alertTransitionInputFeedbackEnum_late_,
        _$alertTransitionInputFeedbackEnum_falsePositive,
        _$alertTransitionInputFeedbackEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<AlertTransitionInputFeedbackEnum>
_$alertTransitionInputFeedbackEnumSerializer =
    _$AlertTransitionInputFeedbackEnumSerializer();

class _$AlertTransitionInputFeedbackEnumSerializer
    implements PrimitiveSerializer<AlertTransitionInputFeedbackEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'useful': 'useful',
    'noise': 'noise',
    'late_': 'late',
    'falsePositive': 'false_positive',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'useful': 'useful',
    'noise': 'noise',
    'late': 'late_',
    'false_positive': 'falsePositive',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AlertTransitionInputFeedbackEnum];
  @override
  final String wireName = 'AlertTransitionInputFeedbackEnum';

  @override
  Object serialize(
    Serializers serializers,
    AlertTransitionInputFeedbackEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AlertTransitionInputFeedbackEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AlertTransitionInputFeedbackEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AlertTransitionInput extends AlertTransitionInput {
  @override
  final String? note;
  @override
  final AlertTransitionInputFeedbackEnum? feedback;

  factory _$AlertTransitionInput([
    void Function(AlertTransitionInputBuilder)? updates,
  ]) => (AlertTransitionInputBuilder()..update(updates))._build();

  _$AlertTransitionInput._({this.note, this.feedback}) : super._();
  @override
  AlertTransitionInput rebuild(
    void Function(AlertTransitionInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AlertTransitionInputBuilder toBuilder() =>
      AlertTransitionInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlertTransitionInput &&
        note == other.note &&
        feedback == other.feedback;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, note.hashCode);
    _$hash = $jc(_$hash, feedback.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AlertTransitionInput')
          ..add('note', note)
          ..add('feedback', feedback))
        .toString();
  }
}

class AlertTransitionInputBuilder
    implements Builder<AlertTransitionInput, AlertTransitionInputBuilder> {
  _$AlertTransitionInput? _$v;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  AlertTransitionInputFeedbackEnum? _feedback;
  AlertTransitionInputFeedbackEnum? get feedback => _$this._feedback;
  set feedback(AlertTransitionInputFeedbackEnum? feedback) =>
      _$this._feedback = feedback;

  AlertTransitionInputBuilder() {
    AlertTransitionInput._defaults(this);
  }

  AlertTransitionInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _note = $v.note;
      _feedback = $v.feedback;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlertTransitionInput other) {
    _$v = other as _$AlertTransitionInput;
  }

  @override
  void update(void Function(AlertTransitionInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlertTransitionInput build() => _build();

  _$AlertTransitionInput _build() {
    final _$result =
        _$v ?? _$AlertTransitionInput._(note: note, feedback: feedback);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
