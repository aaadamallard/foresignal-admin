// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'external_question_link_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ExternalQuestionLinkInputOrientationEnum
_$externalQuestionLinkInputOrientationEnum_same =
    const ExternalQuestionLinkInputOrientationEnum._('same');
const ExternalQuestionLinkInputOrientationEnum
_$externalQuestionLinkInputOrientationEnum_inverse =
    const ExternalQuestionLinkInputOrientationEnum._('inverse');

ExternalQuestionLinkInputOrientationEnum
_$externalQuestionLinkInputOrientationEnumValueOf(String name) {
  switch (name) {
    case 'same':
      return _$externalQuestionLinkInputOrientationEnum_same;
    case 'inverse':
      return _$externalQuestionLinkInputOrientationEnum_inverse;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ExternalQuestionLinkInputOrientationEnum>
_$externalQuestionLinkInputOrientationEnumValues =
    BuiltSet<ExternalQuestionLinkInputOrientationEnum>(
      const <ExternalQuestionLinkInputOrientationEnum>[
        _$externalQuestionLinkInputOrientationEnum_same,
        _$externalQuestionLinkInputOrientationEnum_inverse,
      ],
    );

Serializer<ExternalQuestionLinkInputOrientationEnum>
_$externalQuestionLinkInputOrientationEnumSerializer =
    _$ExternalQuestionLinkInputOrientationEnumSerializer();

class _$ExternalQuestionLinkInputOrientationEnumSerializer
    implements PrimitiveSerializer<ExternalQuestionLinkInputOrientationEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'same': 'same',
    'inverse': 'inverse',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'same': 'same',
    'inverse': 'inverse',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ExternalQuestionLinkInputOrientationEnum,
  ];
  @override
  final String wireName = 'ExternalQuestionLinkInputOrientationEnum';

  @override
  Object serialize(
    Serializers serializers,
    ExternalQuestionLinkInputOrientationEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ExternalQuestionLinkInputOrientationEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ExternalQuestionLinkInputOrientationEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ExternalQuestionLinkInput extends ExternalQuestionLinkInput {
  @override
  final String streamId;
  @override
  final String externalQuestionId;
  @override
  final String questionId;
  @override
  final ExternalQuestionLinkInputOrientationEnum? orientation;

  factory _$ExternalQuestionLinkInput([
    void Function(ExternalQuestionLinkInputBuilder)? updates,
  ]) => (ExternalQuestionLinkInputBuilder()..update(updates))._build();

  _$ExternalQuestionLinkInput._({
    required this.streamId,
    required this.externalQuestionId,
    required this.questionId,
    this.orientation,
  }) : super._();
  @override
  ExternalQuestionLinkInput rebuild(
    void Function(ExternalQuestionLinkInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ExternalQuestionLinkInputBuilder toBuilder() =>
      ExternalQuestionLinkInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExternalQuestionLinkInput &&
        streamId == other.streamId &&
        externalQuestionId == other.externalQuestionId &&
        questionId == other.questionId &&
        orientation == other.orientation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, streamId.hashCode);
    _$hash = $jc(_$hash, externalQuestionId.hashCode);
    _$hash = $jc(_$hash, questionId.hashCode);
    _$hash = $jc(_$hash, orientation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExternalQuestionLinkInput')
          ..add('streamId', streamId)
          ..add('externalQuestionId', externalQuestionId)
          ..add('questionId', questionId)
          ..add('orientation', orientation))
        .toString();
  }
}

class ExternalQuestionLinkInputBuilder
    implements
        Builder<ExternalQuestionLinkInput, ExternalQuestionLinkInputBuilder> {
  _$ExternalQuestionLinkInput? _$v;

  String? _streamId;
  String? get streamId => _$this._streamId;
  set streamId(String? streamId) => _$this._streamId = streamId;

  String? _externalQuestionId;
  String? get externalQuestionId => _$this._externalQuestionId;
  set externalQuestionId(String? externalQuestionId) =>
      _$this._externalQuestionId = externalQuestionId;

  String? _questionId;
  String? get questionId => _$this._questionId;
  set questionId(String? questionId) => _$this._questionId = questionId;

  ExternalQuestionLinkInputOrientationEnum? _orientation;
  ExternalQuestionLinkInputOrientationEnum? get orientation =>
      _$this._orientation;
  set orientation(ExternalQuestionLinkInputOrientationEnum? orientation) =>
      _$this._orientation = orientation;

  ExternalQuestionLinkInputBuilder() {
    ExternalQuestionLinkInput._defaults(this);
  }

  ExternalQuestionLinkInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _streamId = $v.streamId;
      _externalQuestionId = $v.externalQuestionId;
      _questionId = $v.questionId;
      _orientation = $v.orientation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExternalQuestionLinkInput other) {
    _$v = other as _$ExternalQuestionLinkInput;
  }

  @override
  void update(void Function(ExternalQuestionLinkInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExternalQuestionLinkInput build() => _build();

  _$ExternalQuestionLinkInput _build() {
    final _$result =
        _$v ??
        _$ExternalQuestionLinkInput._(
          streamId: BuiltValueNullFieldError.checkNotNull(
            streamId,
            r'ExternalQuestionLinkInput',
            'streamId',
          ),
          externalQuestionId: BuiltValueNullFieldError.checkNotNull(
            externalQuestionId,
            r'ExternalQuestionLinkInput',
            'externalQuestionId',
          ),
          questionId: BuiltValueNullFieldError.checkNotNull(
            questionId,
            r'ExternalQuestionLinkInput',
            'questionId',
          ),
          orientation: orientation,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
