// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intel_board_latest_assessments_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IntelBoardLatestAssessmentsInnerCadenceEnum
_$intelBoardLatestAssessmentsInnerCadenceEnum_daily =
    const IntelBoardLatestAssessmentsInnerCadenceEnum._('daily');
const IntelBoardLatestAssessmentsInnerCadenceEnum
_$intelBoardLatestAssessmentsInnerCadenceEnum_weekly =
    const IntelBoardLatestAssessmentsInnerCadenceEnum._('weekly');
const IntelBoardLatestAssessmentsInnerCadenceEnum
_$intelBoardLatestAssessmentsInnerCadenceEnum_monthly =
    const IntelBoardLatestAssessmentsInnerCadenceEnum._('monthly');

IntelBoardLatestAssessmentsInnerCadenceEnum
_$intelBoardLatestAssessmentsInnerCadenceEnumValueOf(String name) {
  switch (name) {
    case 'daily':
      return _$intelBoardLatestAssessmentsInnerCadenceEnum_daily;
    case 'weekly':
      return _$intelBoardLatestAssessmentsInnerCadenceEnum_weekly;
    case 'monthly':
      return _$intelBoardLatestAssessmentsInnerCadenceEnum_monthly;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<IntelBoardLatestAssessmentsInnerCadenceEnum>
_$intelBoardLatestAssessmentsInnerCadenceEnumValues =
    BuiltSet<IntelBoardLatestAssessmentsInnerCadenceEnum>(
      const <IntelBoardLatestAssessmentsInnerCadenceEnum>[
        _$intelBoardLatestAssessmentsInnerCadenceEnum_daily,
        _$intelBoardLatestAssessmentsInnerCadenceEnum_weekly,
        _$intelBoardLatestAssessmentsInnerCadenceEnum_monthly,
      ],
    );

Serializer<IntelBoardLatestAssessmentsInnerCadenceEnum>
_$intelBoardLatestAssessmentsInnerCadenceEnumSerializer =
    _$IntelBoardLatestAssessmentsInnerCadenceEnumSerializer();

class _$IntelBoardLatestAssessmentsInnerCadenceEnumSerializer
    implements
        PrimitiveSerializer<IntelBoardLatestAssessmentsInnerCadenceEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'daily': 'daily',
    'weekly': 'weekly',
    'monthly': 'monthly',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'daily': 'daily',
    'weekly': 'weekly',
    'monthly': 'monthly',
  };

  @override
  final Iterable<Type> types = const <Type>[
    IntelBoardLatestAssessmentsInnerCadenceEnum,
  ];
  @override
  final String wireName = 'IntelBoardLatestAssessmentsInnerCadenceEnum';

  @override
  Object serialize(
    Serializers serializers,
    IntelBoardLatestAssessmentsInnerCadenceEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  IntelBoardLatestAssessmentsInnerCadenceEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => IntelBoardLatestAssessmentsInnerCadenceEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$IntelBoardLatestAssessmentsInner
    extends IntelBoardLatestAssessmentsInner {
  @override
  final IntelBoardLatestAssessmentsInnerCadenceEnum cadence;
  @override
  final String assessmentId;
  @override
  final String? headline;
  @override
  final DateTime createdAt;

  factory _$IntelBoardLatestAssessmentsInner([
    void Function(IntelBoardLatestAssessmentsInnerBuilder)? updates,
  ]) => (IntelBoardLatestAssessmentsInnerBuilder()..update(updates))._build();

  _$IntelBoardLatestAssessmentsInner._({
    required this.cadence,
    required this.assessmentId,
    this.headline,
    required this.createdAt,
  }) : super._();
  @override
  IntelBoardLatestAssessmentsInner rebuild(
    void Function(IntelBoardLatestAssessmentsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  IntelBoardLatestAssessmentsInnerBuilder toBuilder() =>
      IntelBoardLatestAssessmentsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntelBoardLatestAssessmentsInner &&
        cadence == other.cadence &&
        assessmentId == other.assessmentId &&
        headline == other.headline &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cadence.hashCode);
    _$hash = $jc(_$hash, assessmentId.hashCode);
    _$hash = $jc(_$hash, headline.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IntelBoardLatestAssessmentsInner')
          ..add('cadence', cadence)
          ..add('assessmentId', assessmentId)
          ..add('headline', headline)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class IntelBoardLatestAssessmentsInnerBuilder
    implements
        Builder<
          IntelBoardLatestAssessmentsInner,
          IntelBoardLatestAssessmentsInnerBuilder
        > {
  _$IntelBoardLatestAssessmentsInner? _$v;

  IntelBoardLatestAssessmentsInnerCadenceEnum? _cadence;
  IntelBoardLatestAssessmentsInnerCadenceEnum? get cadence => _$this._cadence;
  set cadence(IntelBoardLatestAssessmentsInnerCadenceEnum? cadence) =>
      _$this._cadence = cadence;

  String? _assessmentId;
  String? get assessmentId => _$this._assessmentId;
  set assessmentId(String? assessmentId) => _$this._assessmentId = assessmentId;

  String? _headline;
  String? get headline => _$this._headline;
  set headline(String? headline) => _$this._headline = headline;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  IntelBoardLatestAssessmentsInnerBuilder() {
    IntelBoardLatestAssessmentsInner._defaults(this);
  }

  IntelBoardLatestAssessmentsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cadence = $v.cadence;
      _assessmentId = $v.assessmentId;
      _headline = $v.headline;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IntelBoardLatestAssessmentsInner other) {
    _$v = other as _$IntelBoardLatestAssessmentsInner;
  }

  @override
  void update(void Function(IntelBoardLatestAssessmentsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IntelBoardLatestAssessmentsInner build() => _build();

  _$IntelBoardLatestAssessmentsInner _build() {
    final _$result =
        _$v ??
        _$IntelBoardLatestAssessmentsInner._(
          cadence: BuiltValueNullFieldError.checkNotNull(
            cadence,
            r'IntelBoardLatestAssessmentsInner',
            'cadence',
          ),
          assessmentId: BuiltValueNullFieldError.checkNotNull(
            assessmentId,
            r'IntelBoardLatestAssessmentsInner',
            'assessmentId',
          ),
          headline: headline,
          createdAt: BuiltValueNullFieldError.checkNotNull(
            createdAt,
            r'IntelBoardLatestAssessmentsInner',
            'createdAt',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
