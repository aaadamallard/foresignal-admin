// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'external_question_link.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ExternalQuestionLinkOrientationEnum
_$externalQuestionLinkOrientationEnum_same =
    const ExternalQuestionLinkOrientationEnum._('same');
const ExternalQuestionLinkOrientationEnum
_$externalQuestionLinkOrientationEnum_inverse =
    const ExternalQuestionLinkOrientationEnum._('inverse');

ExternalQuestionLinkOrientationEnum
_$externalQuestionLinkOrientationEnumValueOf(String name) {
  switch (name) {
    case 'same':
      return _$externalQuestionLinkOrientationEnum_same;
    case 'inverse':
      return _$externalQuestionLinkOrientationEnum_inverse;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ExternalQuestionLinkOrientationEnum>
_$externalQuestionLinkOrientationEnumValues =
    BuiltSet<ExternalQuestionLinkOrientationEnum>(
      const <ExternalQuestionLinkOrientationEnum>[
        _$externalQuestionLinkOrientationEnum_same,
        _$externalQuestionLinkOrientationEnum_inverse,
      ],
    );

Serializer<ExternalQuestionLinkOrientationEnum>
_$externalQuestionLinkOrientationEnumSerializer =
    _$ExternalQuestionLinkOrientationEnumSerializer();

class _$ExternalQuestionLinkOrientationEnumSerializer
    implements PrimitiveSerializer<ExternalQuestionLinkOrientationEnum> {
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
    ExternalQuestionLinkOrientationEnum,
  ];
  @override
  final String wireName = 'ExternalQuestionLinkOrientationEnum';

  @override
  Object serialize(
    Serializers serializers,
    ExternalQuestionLinkOrientationEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ExternalQuestionLinkOrientationEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ExternalQuestionLinkOrientationEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ExternalQuestionLink extends ExternalQuestionLink {
  @override
  final String streamId;
  @override
  final String externalQuestionId;
  @override
  final String questionId;
  @override
  final ExternalQuestionLinkOrientationEnum? orientation;
  @override
  final String id;
  @override
  final String sourceId;
  @override
  final String forecasterId;
  @override
  final DateTime createdAt;
  @override
  final DateTime? lastForecastAt;

  factory _$ExternalQuestionLink([
    void Function(ExternalQuestionLinkBuilder)? updates,
  ]) => (ExternalQuestionLinkBuilder()..update(updates))._build();

  _$ExternalQuestionLink._({
    required this.streamId,
    required this.externalQuestionId,
    required this.questionId,
    this.orientation,
    required this.id,
    required this.sourceId,
    required this.forecasterId,
    required this.createdAt,
    this.lastForecastAt,
  }) : super._();
  @override
  ExternalQuestionLink rebuild(
    void Function(ExternalQuestionLinkBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ExternalQuestionLinkBuilder toBuilder() =>
      ExternalQuestionLinkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExternalQuestionLink &&
        streamId == other.streamId &&
        externalQuestionId == other.externalQuestionId &&
        questionId == other.questionId &&
        orientation == other.orientation &&
        id == other.id &&
        sourceId == other.sourceId &&
        forecasterId == other.forecasterId &&
        createdAt == other.createdAt &&
        lastForecastAt == other.lastForecastAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, streamId.hashCode);
    _$hash = $jc(_$hash, externalQuestionId.hashCode);
    _$hash = $jc(_$hash, questionId.hashCode);
    _$hash = $jc(_$hash, orientation.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, forecasterId.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, lastForecastAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExternalQuestionLink')
          ..add('streamId', streamId)
          ..add('externalQuestionId', externalQuestionId)
          ..add('questionId', questionId)
          ..add('orientation', orientation)
          ..add('id', id)
          ..add('sourceId', sourceId)
          ..add('forecasterId', forecasterId)
          ..add('createdAt', createdAt)
          ..add('lastForecastAt', lastForecastAt))
        .toString();
  }
}

class ExternalQuestionLinkBuilder
    implements Builder<ExternalQuestionLink, ExternalQuestionLinkBuilder> {
  _$ExternalQuestionLink? _$v;

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

  ExternalQuestionLinkOrientationEnum? _orientation;
  ExternalQuestionLinkOrientationEnum? get orientation => _$this._orientation;
  set orientation(ExternalQuestionLinkOrientationEnum? orientation) =>
      _$this._orientation = orientation;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  String? _forecasterId;
  String? get forecasterId => _$this._forecasterId;
  set forecasterId(String? forecasterId) => _$this._forecasterId = forecasterId;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _lastForecastAt;
  DateTime? get lastForecastAt => _$this._lastForecastAt;
  set lastForecastAt(DateTime? lastForecastAt) =>
      _$this._lastForecastAt = lastForecastAt;

  ExternalQuestionLinkBuilder() {
    ExternalQuestionLink._defaults(this);
  }

  ExternalQuestionLinkBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _streamId = $v.streamId;
      _externalQuestionId = $v.externalQuestionId;
      _questionId = $v.questionId;
      _orientation = $v.orientation;
      _id = $v.id;
      _sourceId = $v.sourceId;
      _forecasterId = $v.forecasterId;
      _createdAt = $v.createdAt;
      _lastForecastAt = $v.lastForecastAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExternalQuestionLink other) {
    _$v = other as _$ExternalQuestionLink;
  }

  @override
  void update(void Function(ExternalQuestionLinkBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExternalQuestionLink build() => _build();

  _$ExternalQuestionLink _build() {
    final _$result =
        _$v ??
        _$ExternalQuestionLink._(
          streamId: BuiltValueNullFieldError.checkNotNull(
            streamId,
            r'ExternalQuestionLink',
            'streamId',
          ),
          externalQuestionId: BuiltValueNullFieldError.checkNotNull(
            externalQuestionId,
            r'ExternalQuestionLink',
            'externalQuestionId',
          ),
          questionId: BuiltValueNullFieldError.checkNotNull(
            questionId,
            r'ExternalQuestionLink',
            'questionId',
          ),
          orientation: orientation,
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'ExternalQuestionLink',
            'id',
          ),
          sourceId: BuiltValueNullFieldError.checkNotNull(
            sourceId,
            r'ExternalQuestionLink',
            'sourceId',
          ),
          forecasterId: BuiltValueNullFieldError.checkNotNull(
            forecasterId,
            r'ExternalQuestionLink',
            'forecasterId',
          ),
          createdAt: BuiltValueNullFieldError.checkNotNull(
            createdAt,
            r'ExternalQuestionLink',
            'createdAt',
          ),
          lastForecastAt: lastForecastAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
