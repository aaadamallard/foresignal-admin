// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_versus_observed_narratives_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SocialVersusObservedNarrativesInnerStatusEnum
_$socialVersusObservedNarrativesInnerStatusEnum_unassessed =
    const SocialVersusObservedNarrativesInnerStatusEnum._('unassessed');
const SocialVersusObservedNarrativesInnerStatusEnum
_$socialVersusObservedNarrativesInnerStatusEnum_pending =
    const SocialVersusObservedNarrativesInnerStatusEnum._('pending');
const SocialVersusObservedNarrativesInnerStatusEnum
_$socialVersusObservedNarrativesInnerStatusEnum_corroborated =
    const SocialVersusObservedNarrativesInnerStatusEnum._('corroborated');
const SocialVersusObservedNarrativesInnerStatusEnum
_$socialVersusObservedNarrativesInnerStatusEnum_unobserved =
    const SocialVersusObservedNarrativesInnerStatusEnum._('unobserved');
const SocialVersusObservedNarrativesInnerStatusEnum
_$socialVersusObservedNarrativesInnerStatusEnum_contradicted =
    const SocialVersusObservedNarrativesInnerStatusEnum._('contradicted');
const SocialVersusObservedNarrativesInnerStatusEnum
_$socialVersusObservedNarrativesInnerStatusEnum_mixed =
    const SocialVersusObservedNarrativesInnerStatusEnum._('mixed');
const SocialVersusObservedNarrativesInnerStatusEnum
_$socialVersusObservedNarrativesInnerStatusEnum_insufficientCoverage =
    const SocialVersusObservedNarrativesInnerStatusEnum._(
      'insufficientCoverage',
    );

SocialVersusObservedNarrativesInnerStatusEnum
_$socialVersusObservedNarrativesInnerStatusEnumValueOf(String name) {
  switch (name) {
    case 'unassessed':
      return _$socialVersusObservedNarrativesInnerStatusEnum_unassessed;
    case 'pending':
      return _$socialVersusObservedNarrativesInnerStatusEnum_pending;
    case 'corroborated':
      return _$socialVersusObservedNarrativesInnerStatusEnum_corroborated;
    case 'unobserved':
      return _$socialVersusObservedNarrativesInnerStatusEnum_unobserved;
    case 'contradicted':
      return _$socialVersusObservedNarrativesInnerStatusEnum_contradicted;
    case 'mixed':
      return _$socialVersusObservedNarrativesInnerStatusEnum_mixed;
    case 'insufficientCoverage':
      return _$socialVersusObservedNarrativesInnerStatusEnum_insufficientCoverage;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SocialVersusObservedNarrativesInnerStatusEnum>
_$socialVersusObservedNarrativesInnerStatusEnumValues =
    BuiltSet<SocialVersusObservedNarrativesInnerStatusEnum>(
      const <SocialVersusObservedNarrativesInnerStatusEnum>[
        _$socialVersusObservedNarrativesInnerStatusEnum_unassessed,
        _$socialVersusObservedNarrativesInnerStatusEnum_pending,
        _$socialVersusObservedNarrativesInnerStatusEnum_corroborated,
        _$socialVersusObservedNarrativesInnerStatusEnum_unobserved,
        _$socialVersusObservedNarrativesInnerStatusEnum_contradicted,
        _$socialVersusObservedNarrativesInnerStatusEnum_mixed,
        _$socialVersusObservedNarrativesInnerStatusEnum_insufficientCoverage,
      ],
    );

Serializer<SocialVersusObservedNarrativesInnerStatusEnum>
_$socialVersusObservedNarrativesInnerStatusEnumSerializer =
    _$SocialVersusObservedNarrativesInnerStatusEnumSerializer();

class _$SocialVersusObservedNarrativesInnerStatusEnumSerializer
    implements
        PrimitiveSerializer<SocialVersusObservedNarrativesInnerStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'unassessed': 'unassessed',
    'pending': 'pending',
    'corroborated': 'corroborated',
    'unobserved': 'unobserved',
    'contradicted': 'contradicted',
    'mixed': 'mixed',
    'insufficientCoverage': 'insufficient-coverage',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'unassessed': 'unassessed',
    'pending': 'pending',
    'corroborated': 'corroborated',
    'unobserved': 'unobserved',
    'contradicted': 'contradicted',
    'mixed': 'mixed',
    'insufficient-coverage': 'insufficientCoverage',
  };

  @override
  final Iterable<Type> types = const <Type>[
    SocialVersusObservedNarrativesInnerStatusEnum,
  ];
  @override
  final String wireName = 'SocialVersusObservedNarrativesInnerStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    SocialVersusObservedNarrativesInnerStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SocialVersusObservedNarrativesInnerStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SocialVersusObservedNarrativesInnerStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SocialVersusObservedNarrativesInner
    extends SocialVersusObservedNarrativesInner {
  @override
  final String narrativeId;
  @override
  final String title;
  @override
  final SocialVersusObservedNarrativesInnerStatusEnum status;
  @override
  final String? situationId;

  factory _$SocialVersusObservedNarrativesInner([
    void Function(SocialVersusObservedNarrativesInnerBuilder)? updates,
  ]) =>
      (SocialVersusObservedNarrativesInnerBuilder()..update(updates))._build();

  _$SocialVersusObservedNarrativesInner._({
    required this.narrativeId,
    required this.title,
    required this.status,
    this.situationId,
  }) : super._();
  @override
  SocialVersusObservedNarrativesInner rebuild(
    void Function(SocialVersusObservedNarrativesInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SocialVersusObservedNarrativesInnerBuilder toBuilder() =>
      SocialVersusObservedNarrativesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialVersusObservedNarrativesInner &&
        narrativeId == other.narrativeId &&
        title == other.title &&
        status == other.status &&
        situationId == other.situationId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, narrativeId.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, situationId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialVersusObservedNarrativesInner')
          ..add('narrativeId', narrativeId)
          ..add('title', title)
          ..add('status', status)
          ..add('situationId', situationId))
        .toString();
  }
}

class SocialVersusObservedNarrativesInnerBuilder
    implements
        Builder<
          SocialVersusObservedNarrativesInner,
          SocialVersusObservedNarrativesInnerBuilder
        > {
  _$SocialVersusObservedNarrativesInner? _$v;

  String? _narrativeId;
  String? get narrativeId => _$this._narrativeId;
  set narrativeId(String? narrativeId) => _$this._narrativeId = narrativeId;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  SocialVersusObservedNarrativesInnerStatusEnum? _status;
  SocialVersusObservedNarrativesInnerStatusEnum? get status => _$this._status;
  set status(SocialVersusObservedNarrativesInnerStatusEnum? status) =>
      _$this._status = status;

  String? _situationId;
  String? get situationId => _$this._situationId;
  set situationId(String? situationId) => _$this._situationId = situationId;

  SocialVersusObservedNarrativesInnerBuilder() {
    SocialVersusObservedNarrativesInner._defaults(this);
  }

  SocialVersusObservedNarrativesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _narrativeId = $v.narrativeId;
      _title = $v.title;
      _status = $v.status;
      _situationId = $v.situationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialVersusObservedNarrativesInner other) {
    _$v = other as _$SocialVersusObservedNarrativesInner;
  }

  @override
  void update(
    void Function(SocialVersusObservedNarrativesInnerBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  SocialVersusObservedNarrativesInner build() => _build();

  _$SocialVersusObservedNarrativesInner _build() {
    final _$result =
        _$v ??
        _$SocialVersusObservedNarrativesInner._(
          narrativeId: BuiltValueNullFieldError.checkNotNull(
            narrativeId,
            r'SocialVersusObservedNarrativesInner',
            'narrativeId',
          ),
          title: BuiltValueNullFieldError.checkNotNull(
            title,
            r'SocialVersusObservedNarrativesInner',
            'title',
          ),
          status: BuiltValueNullFieldError.checkNotNull(
            status,
            r'SocialVersusObservedNarrativesInner',
            'status',
          ),
          situationId: situationId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
