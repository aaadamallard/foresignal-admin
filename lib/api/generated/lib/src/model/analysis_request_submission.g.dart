// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analysis_request_submission.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AnalysisRequestSubmissionOrientationEnum
_$analysisRequestSubmissionOrientationEnum_same =
    const AnalysisRequestSubmissionOrientationEnum._('same');
const AnalysisRequestSubmissionOrientationEnum
_$analysisRequestSubmissionOrientationEnum_inverse =
    const AnalysisRequestSubmissionOrientationEnum._('inverse');

AnalysisRequestSubmissionOrientationEnum
_$analysisRequestSubmissionOrientationEnumValueOf(String name) {
  switch (name) {
    case 'same':
      return _$analysisRequestSubmissionOrientationEnum_same;
    case 'inverse':
      return _$analysisRequestSubmissionOrientationEnum_inverse;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AnalysisRequestSubmissionOrientationEnum>
_$analysisRequestSubmissionOrientationEnumValues =
    BuiltSet<AnalysisRequestSubmissionOrientationEnum>(
      const <AnalysisRequestSubmissionOrientationEnum>[
        _$analysisRequestSubmissionOrientationEnum_same,
        _$analysisRequestSubmissionOrientationEnum_inverse,
      ],
    );

Serializer<AnalysisRequestSubmissionOrientationEnum>
_$analysisRequestSubmissionOrientationEnumSerializer =
    _$AnalysisRequestSubmissionOrientationEnumSerializer();

class _$AnalysisRequestSubmissionOrientationEnumSerializer
    implements PrimitiveSerializer<AnalysisRequestSubmissionOrientationEnum> {
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
    AnalysisRequestSubmissionOrientationEnum,
  ];
  @override
  final String wireName = 'AnalysisRequestSubmissionOrientationEnum';

  @override
  Object serialize(
    Serializers serializers,
    AnalysisRequestSubmissionOrientationEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AnalysisRequestSubmissionOrientationEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AnalysisRequestSubmissionOrientationEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AnalysisRequestSubmission extends AnalysisRequestSubmission {
  @override
  final String forecasterId;
  @override
  final String questionId;
  @override
  final AnalysisRequestSubmissionOrientationEnum? orientation;
  @override
  final String? horizon;

  factory _$AnalysisRequestSubmission([
    void Function(AnalysisRequestSubmissionBuilder)? updates,
  ]) => (AnalysisRequestSubmissionBuilder()..update(updates))._build();

  _$AnalysisRequestSubmission._({
    required this.forecasterId,
    required this.questionId,
    this.orientation,
    this.horizon,
  }) : super._();
  @override
  AnalysisRequestSubmission rebuild(
    void Function(AnalysisRequestSubmissionBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AnalysisRequestSubmissionBuilder toBuilder() =>
      AnalysisRequestSubmissionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalysisRequestSubmission &&
        forecasterId == other.forecasterId &&
        questionId == other.questionId &&
        orientation == other.orientation &&
        horizon == other.horizon;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, forecasterId.hashCode);
    _$hash = $jc(_$hash, questionId.hashCode);
    _$hash = $jc(_$hash, orientation.hashCode);
    _$hash = $jc(_$hash, horizon.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnalysisRequestSubmission')
          ..add('forecasterId', forecasterId)
          ..add('questionId', questionId)
          ..add('orientation', orientation)
          ..add('horizon', horizon))
        .toString();
  }
}

class AnalysisRequestSubmissionBuilder
    implements
        Builder<AnalysisRequestSubmission, AnalysisRequestSubmissionBuilder> {
  _$AnalysisRequestSubmission? _$v;

  String? _forecasterId;
  String? get forecasterId => _$this._forecasterId;
  set forecasterId(String? forecasterId) => _$this._forecasterId = forecasterId;

  String? _questionId;
  String? get questionId => _$this._questionId;
  set questionId(String? questionId) => _$this._questionId = questionId;

  AnalysisRequestSubmissionOrientationEnum? _orientation;
  AnalysisRequestSubmissionOrientationEnum? get orientation =>
      _$this._orientation;
  set orientation(AnalysisRequestSubmissionOrientationEnum? orientation) =>
      _$this._orientation = orientation;

  String? _horizon;
  String? get horizon => _$this._horizon;
  set horizon(String? horizon) => _$this._horizon = horizon;

  AnalysisRequestSubmissionBuilder() {
    AnalysisRequestSubmission._defaults(this);
  }

  AnalysisRequestSubmissionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _forecasterId = $v.forecasterId;
      _questionId = $v.questionId;
      _orientation = $v.orientation;
      _horizon = $v.horizon;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalysisRequestSubmission other) {
    _$v = other as _$AnalysisRequestSubmission;
  }

  @override
  void update(void Function(AnalysisRequestSubmissionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalysisRequestSubmission build() => _build();

  _$AnalysisRequestSubmission _build() {
    final _$result =
        _$v ??
        _$AnalysisRequestSubmission._(
          forecasterId: BuiltValueNullFieldError.checkNotNull(
            forecasterId,
            r'AnalysisRequestSubmission',
            'forecasterId',
          ),
          questionId: BuiltValueNullFieldError.checkNotNull(
            questionId,
            r'AnalysisRequestSubmission',
            'questionId',
          ),
          orientation: orientation,
          horizon: horizon,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
