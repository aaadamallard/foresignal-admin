// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pol_deviation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PolDeviationDeviationTypeEnum _$polDeviationDeviationTypeEnum_NEW_PLACE =
    const PolDeviationDeviationTypeEnum._('NEW_PLACE');
const PolDeviationDeviationTypeEnum
_$polDeviationDeviationTypeEnum_UNUSUAL_TIME =
    const PolDeviationDeviationTypeEnum._('UNUSUAL_TIME');
const PolDeviationDeviationTypeEnum
_$polDeviationDeviationTypeEnum_EXPECTED_ABSENT =
    const PolDeviationDeviationTypeEnum._('EXPECTED_ABSENT');

PolDeviationDeviationTypeEnum _$polDeviationDeviationTypeEnumValueOf(
  String name,
) {
  switch (name) {
    case 'NEW_PLACE':
      return _$polDeviationDeviationTypeEnum_NEW_PLACE;
    case 'UNUSUAL_TIME':
      return _$polDeviationDeviationTypeEnum_UNUSUAL_TIME;
    case 'EXPECTED_ABSENT':
      return _$polDeviationDeviationTypeEnum_EXPECTED_ABSENT;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PolDeviationDeviationTypeEnum>
_$polDeviationDeviationTypeEnumValues = BuiltSet<PolDeviationDeviationTypeEnum>(
  const <PolDeviationDeviationTypeEnum>[
    _$polDeviationDeviationTypeEnum_NEW_PLACE,
    _$polDeviationDeviationTypeEnum_UNUSUAL_TIME,
    _$polDeviationDeviationTypeEnum_EXPECTED_ABSENT,
  ],
);

Serializer<PolDeviationDeviationTypeEnum>
_$polDeviationDeviationTypeEnumSerializer =
    _$PolDeviationDeviationTypeEnumSerializer();

class _$PolDeviationDeviationTypeEnumSerializer
    implements PrimitiveSerializer<PolDeviationDeviationTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'NEW_PLACE': 'NEW_PLACE',
    'UNUSUAL_TIME': 'UNUSUAL_TIME',
    'EXPECTED_ABSENT': 'EXPECTED_ABSENT',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'NEW_PLACE': 'NEW_PLACE',
    'UNUSUAL_TIME': 'UNUSUAL_TIME',
    'EXPECTED_ABSENT': 'EXPECTED_ABSENT',
  };

  @override
  final Iterable<Type> types = const <Type>[PolDeviationDeviationTypeEnum];
  @override
  final String wireName = 'PolDeviationDeviationTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    PolDeviationDeviationTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PolDeviationDeviationTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PolDeviationDeviationTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PolDeviation extends PolDeviation {
  @override
  final String subjectId;
  @override
  final String? subjectRef;
  @override
  final PolDeviationDeviationTypeEnum deviationType;
  @override
  final DateTime at;
  @override
  final String? placeId;
  @override
  final String? placeLabel;
  @override
  final PolDeviationStay? stay;
  @override
  final int? hourOfWeek;
  @override
  final num? bucketShare;
  @override
  final DateTime? lastSeenAt;

  factory _$PolDeviation([void Function(PolDeviationBuilder)? updates]) =>
      (PolDeviationBuilder()..update(updates))._build();

  _$PolDeviation._({
    required this.subjectId,
    this.subjectRef,
    required this.deviationType,
    required this.at,
    this.placeId,
    this.placeLabel,
    this.stay,
    this.hourOfWeek,
    this.bucketShare,
    this.lastSeenAt,
  }) : super._();
  @override
  PolDeviation rebuild(void Function(PolDeviationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PolDeviationBuilder toBuilder() => PolDeviationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PolDeviation &&
        subjectId == other.subjectId &&
        subjectRef == other.subjectRef &&
        deviationType == other.deviationType &&
        at == other.at &&
        placeId == other.placeId &&
        placeLabel == other.placeLabel &&
        stay == other.stay &&
        hourOfWeek == other.hourOfWeek &&
        bucketShare == other.bucketShare &&
        lastSeenAt == other.lastSeenAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, subjectId.hashCode);
    _$hash = $jc(_$hash, subjectRef.hashCode);
    _$hash = $jc(_$hash, deviationType.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jc(_$hash, placeId.hashCode);
    _$hash = $jc(_$hash, placeLabel.hashCode);
    _$hash = $jc(_$hash, stay.hashCode);
    _$hash = $jc(_$hash, hourOfWeek.hashCode);
    _$hash = $jc(_$hash, bucketShare.hashCode);
    _$hash = $jc(_$hash, lastSeenAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PolDeviation')
          ..add('subjectId', subjectId)
          ..add('subjectRef', subjectRef)
          ..add('deviationType', deviationType)
          ..add('at', at)
          ..add('placeId', placeId)
          ..add('placeLabel', placeLabel)
          ..add('stay', stay)
          ..add('hourOfWeek', hourOfWeek)
          ..add('bucketShare', bucketShare)
          ..add('lastSeenAt', lastSeenAt))
        .toString();
  }
}

class PolDeviationBuilder
    implements Builder<PolDeviation, PolDeviationBuilder> {
  _$PolDeviation? _$v;

  String? _subjectId;
  String? get subjectId => _$this._subjectId;
  set subjectId(String? subjectId) => _$this._subjectId = subjectId;

  String? _subjectRef;
  String? get subjectRef => _$this._subjectRef;
  set subjectRef(String? subjectRef) => _$this._subjectRef = subjectRef;

  PolDeviationDeviationTypeEnum? _deviationType;
  PolDeviationDeviationTypeEnum? get deviationType => _$this._deviationType;
  set deviationType(PolDeviationDeviationTypeEnum? deviationType) =>
      _$this._deviationType = deviationType;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  String? _placeId;
  String? get placeId => _$this._placeId;
  set placeId(String? placeId) => _$this._placeId = placeId;

  String? _placeLabel;
  String? get placeLabel => _$this._placeLabel;
  set placeLabel(String? placeLabel) => _$this._placeLabel = placeLabel;

  PolDeviationStayBuilder? _stay;
  PolDeviationStayBuilder get stay =>
      _$this._stay ??= PolDeviationStayBuilder();
  set stay(PolDeviationStayBuilder? stay) => _$this._stay = stay;

  int? _hourOfWeek;
  int? get hourOfWeek => _$this._hourOfWeek;
  set hourOfWeek(int? hourOfWeek) => _$this._hourOfWeek = hourOfWeek;

  num? _bucketShare;
  num? get bucketShare => _$this._bucketShare;
  set bucketShare(num? bucketShare) => _$this._bucketShare = bucketShare;

  DateTime? _lastSeenAt;
  DateTime? get lastSeenAt => _$this._lastSeenAt;
  set lastSeenAt(DateTime? lastSeenAt) => _$this._lastSeenAt = lastSeenAt;

  PolDeviationBuilder() {
    PolDeviation._defaults(this);
  }

  PolDeviationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _subjectId = $v.subjectId;
      _subjectRef = $v.subjectRef;
      _deviationType = $v.deviationType;
      _at = $v.at;
      _placeId = $v.placeId;
      _placeLabel = $v.placeLabel;
      _stay = $v.stay?.toBuilder();
      _hourOfWeek = $v.hourOfWeek;
      _bucketShare = $v.bucketShare;
      _lastSeenAt = $v.lastSeenAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PolDeviation other) {
    _$v = other as _$PolDeviation;
  }

  @override
  void update(void Function(PolDeviationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PolDeviation build() => _build();

  _$PolDeviation _build() {
    _$PolDeviation _$result;
    try {
      _$result =
          _$v ??
          _$PolDeviation._(
            subjectId: BuiltValueNullFieldError.checkNotNull(
              subjectId,
              r'PolDeviation',
              'subjectId',
            ),
            subjectRef: subjectRef,
            deviationType: BuiltValueNullFieldError.checkNotNull(
              deviationType,
              r'PolDeviation',
              'deviationType',
            ),
            at: BuiltValueNullFieldError.checkNotNull(
              at,
              r'PolDeviation',
              'at',
            ),
            placeId: placeId,
            placeLabel: placeLabel,
            stay: _stay?.build(),
            hourOfWeek: hourOfWeek,
            bucketShare: bucketShare,
            lastSeenAt: lastSeenAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'stay';
        _stay?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PolDeviation',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
