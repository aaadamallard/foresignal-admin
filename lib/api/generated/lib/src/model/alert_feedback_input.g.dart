// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alert_feedback_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AlertFeedbackInputFeedbackEnum _$alertFeedbackInputFeedbackEnum_useful =
    const AlertFeedbackInputFeedbackEnum._('useful');
const AlertFeedbackInputFeedbackEnum _$alertFeedbackInputFeedbackEnum_noise =
    const AlertFeedbackInputFeedbackEnum._('noise');
const AlertFeedbackInputFeedbackEnum _$alertFeedbackInputFeedbackEnum_late_ =
    const AlertFeedbackInputFeedbackEnum._('late_');
const AlertFeedbackInputFeedbackEnum
_$alertFeedbackInputFeedbackEnum_falsePositive =
    const AlertFeedbackInputFeedbackEnum._('falsePositive');

AlertFeedbackInputFeedbackEnum _$alertFeedbackInputFeedbackEnumValueOf(
  String name,
) {
  switch (name) {
    case 'useful':
      return _$alertFeedbackInputFeedbackEnum_useful;
    case 'noise':
      return _$alertFeedbackInputFeedbackEnum_noise;
    case 'late_':
      return _$alertFeedbackInputFeedbackEnum_late_;
    case 'falsePositive':
      return _$alertFeedbackInputFeedbackEnum_falsePositive;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AlertFeedbackInputFeedbackEnum>
_$alertFeedbackInputFeedbackEnumValues =
    BuiltSet<AlertFeedbackInputFeedbackEnum>(
      const <AlertFeedbackInputFeedbackEnum>[
        _$alertFeedbackInputFeedbackEnum_useful,
        _$alertFeedbackInputFeedbackEnum_noise,
        _$alertFeedbackInputFeedbackEnum_late_,
        _$alertFeedbackInputFeedbackEnum_falsePositive,
      ],
    );

Serializer<AlertFeedbackInputFeedbackEnum>
_$alertFeedbackInputFeedbackEnumSerializer =
    _$AlertFeedbackInputFeedbackEnumSerializer();

class _$AlertFeedbackInputFeedbackEnumSerializer
    implements PrimitiveSerializer<AlertFeedbackInputFeedbackEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'useful': 'useful',
    'noise': 'noise',
    'late_': 'late',
    'falsePositive': 'false_positive',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'useful': 'useful',
    'noise': 'noise',
    'late': 'late_',
    'false_positive': 'falsePositive',
  };

  @override
  final Iterable<Type> types = const <Type>[AlertFeedbackInputFeedbackEnum];
  @override
  final String wireName = 'AlertFeedbackInputFeedbackEnum';

  @override
  Object serialize(
    Serializers serializers,
    AlertFeedbackInputFeedbackEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AlertFeedbackInputFeedbackEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AlertFeedbackInputFeedbackEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AlertFeedbackInput extends AlertFeedbackInput {
  @override
  final AlertFeedbackInputFeedbackEnum feedback;
  @override
  final String? note;

  factory _$AlertFeedbackInput([
    void Function(AlertFeedbackInputBuilder)? updates,
  ]) => (AlertFeedbackInputBuilder()..update(updates))._build();

  _$AlertFeedbackInput._({required this.feedback, this.note}) : super._();
  @override
  AlertFeedbackInput rebuild(
    void Function(AlertFeedbackInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AlertFeedbackInputBuilder toBuilder() =>
      AlertFeedbackInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlertFeedbackInput &&
        feedback == other.feedback &&
        note == other.note;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, feedback.hashCode);
    _$hash = $jc(_$hash, note.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AlertFeedbackInput')
          ..add('feedback', feedback)
          ..add('note', note))
        .toString();
  }
}

class AlertFeedbackInputBuilder
    implements Builder<AlertFeedbackInput, AlertFeedbackInputBuilder> {
  _$AlertFeedbackInput? _$v;

  AlertFeedbackInputFeedbackEnum? _feedback;
  AlertFeedbackInputFeedbackEnum? get feedback => _$this._feedback;
  set feedback(AlertFeedbackInputFeedbackEnum? feedback) =>
      _$this._feedback = feedback;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  AlertFeedbackInputBuilder() {
    AlertFeedbackInput._defaults(this);
  }

  AlertFeedbackInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _feedback = $v.feedback;
      _note = $v.note;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlertFeedbackInput other) {
    _$v = other as _$AlertFeedbackInput;
  }

  @override
  void update(void Function(AlertFeedbackInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlertFeedbackInput build() => _build();

  _$AlertFeedbackInput _build() {
    final _$result =
        _$v ??
        _$AlertFeedbackInput._(
          feedback: BuiltValueNullFieldError.checkNotNull(
            feedback,
            r'AlertFeedbackInput',
            'feedback',
          ),
          note: note,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
