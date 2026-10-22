// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_social_narratives_selector.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ChronicleSocialNarrativesSelectorTypeEnum
    _$chronicleSocialNarrativesSelectorTypeEnum_socialNarratives =
    const ChronicleSocialNarrativesSelectorTypeEnum._('socialNarratives');

ChronicleSocialNarrativesSelectorTypeEnum
    _$chronicleSocialNarrativesSelectorTypeEnumValueOf(String name) {
  switch (name) {
    case 'socialNarratives':
      return _$chronicleSocialNarrativesSelectorTypeEnum_socialNarratives;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ChronicleSocialNarrativesSelectorTypeEnum>
    _$chronicleSocialNarrativesSelectorTypeEnumValues = BuiltSet<
        ChronicleSocialNarrativesSelectorTypeEnum>(const <ChronicleSocialNarrativesSelectorTypeEnum>[
  _$chronicleSocialNarrativesSelectorTypeEnum_socialNarratives,
]);

const ChronicleSocialNarrativesSelectorStatusesEnum
    _$chronicleSocialNarrativesSelectorStatusesEnum_unassessed =
    const ChronicleSocialNarrativesSelectorStatusesEnum._('unassessed');
const ChronicleSocialNarrativesSelectorStatusesEnum
    _$chronicleSocialNarrativesSelectorStatusesEnum_pending =
    const ChronicleSocialNarrativesSelectorStatusesEnum._('pending');
const ChronicleSocialNarrativesSelectorStatusesEnum
    _$chronicleSocialNarrativesSelectorStatusesEnum_corroborated =
    const ChronicleSocialNarrativesSelectorStatusesEnum._('corroborated');
const ChronicleSocialNarrativesSelectorStatusesEnum
    _$chronicleSocialNarrativesSelectorStatusesEnum_unobserved =
    const ChronicleSocialNarrativesSelectorStatusesEnum._('unobserved');
const ChronicleSocialNarrativesSelectorStatusesEnum
    _$chronicleSocialNarrativesSelectorStatusesEnum_contradicted =
    const ChronicleSocialNarrativesSelectorStatusesEnum._('contradicted');
const ChronicleSocialNarrativesSelectorStatusesEnum
    _$chronicleSocialNarrativesSelectorStatusesEnum_mixed =
    const ChronicleSocialNarrativesSelectorStatusesEnum._('mixed');
const ChronicleSocialNarrativesSelectorStatusesEnum
    _$chronicleSocialNarrativesSelectorStatusesEnum_insufficientCoverage =
    const ChronicleSocialNarrativesSelectorStatusesEnum._(
        'insufficientCoverage');

ChronicleSocialNarrativesSelectorStatusesEnum
    _$chronicleSocialNarrativesSelectorStatusesEnumValueOf(String name) {
  switch (name) {
    case 'unassessed':
      return _$chronicleSocialNarrativesSelectorStatusesEnum_unassessed;
    case 'pending':
      return _$chronicleSocialNarrativesSelectorStatusesEnum_pending;
    case 'corroborated':
      return _$chronicleSocialNarrativesSelectorStatusesEnum_corroborated;
    case 'unobserved':
      return _$chronicleSocialNarrativesSelectorStatusesEnum_unobserved;
    case 'contradicted':
      return _$chronicleSocialNarrativesSelectorStatusesEnum_contradicted;
    case 'mixed':
      return _$chronicleSocialNarrativesSelectorStatusesEnum_mixed;
    case 'insufficientCoverage':
      return _$chronicleSocialNarrativesSelectorStatusesEnum_insufficientCoverage;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ChronicleSocialNarrativesSelectorStatusesEnum>
    _$chronicleSocialNarrativesSelectorStatusesEnumValues = BuiltSet<
        ChronicleSocialNarrativesSelectorStatusesEnum>(const <ChronicleSocialNarrativesSelectorStatusesEnum>[
  _$chronicleSocialNarrativesSelectorStatusesEnum_unassessed,
  _$chronicleSocialNarrativesSelectorStatusesEnum_pending,
  _$chronicleSocialNarrativesSelectorStatusesEnum_corroborated,
  _$chronicleSocialNarrativesSelectorStatusesEnum_unobserved,
  _$chronicleSocialNarrativesSelectorStatusesEnum_contradicted,
  _$chronicleSocialNarrativesSelectorStatusesEnum_mixed,
  _$chronicleSocialNarrativesSelectorStatusesEnum_insufficientCoverage,
]);

Serializer<ChronicleSocialNarrativesSelectorTypeEnum>
    _$chronicleSocialNarrativesSelectorTypeEnumSerializer =
    _$ChronicleSocialNarrativesSelectorTypeEnumSerializer();
Serializer<ChronicleSocialNarrativesSelectorStatusesEnum>
    _$chronicleSocialNarrativesSelectorStatusesEnumSerializer =
    _$ChronicleSocialNarrativesSelectorStatusesEnumSerializer();

class _$ChronicleSocialNarrativesSelectorTypeEnumSerializer
    implements PrimitiveSerializer<ChronicleSocialNarrativesSelectorTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'socialNarratives': 'social-narratives',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'social-narratives': 'socialNarratives',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ChronicleSocialNarrativesSelectorTypeEnum
  ];
  @override
  final String wireName = 'ChronicleSocialNarrativesSelectorTypeEnum';

  @override
  Object serialize(Serializers serializers,
          ChronicleSocialNarrativesSelectorTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ChronicleSocialNarrativesSelectorTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ChronicleSocialNarrativesSelectorTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ChronicleSocialNarrativesSelectorStatusesEnumSerializer
    implements
        PrimitiveSerializer<ChronicleSocialNarrativesSelectorStatusesEnum> {
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
    ChronicleSocialNarrativesSelectorStatusesEnum
  ];
  @override
  final String wireName = 'ChronicleSocialNarrativesSelectorStatusesEnum';

  @override
  Object serialize(Serializers serializers,
          ChronicleSocialNarrativesSelectorStatusesEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ChronicleSocialNarrativesSelectorStatusesEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ChronicleSocialNarrativesSelectorStatusesEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ChronicleSocialNarrativesSelector
    extends ChronicleSocialNarrativesSelector {
  @override
  final ChronicleSocialNarrativesSelectorTypeEnum type;
  @override
  final BuiltList<String>? topicIds;
  @override
  final BuiltList<String>? placeIds;
  @override
  final BuiltList<String>? regionCodes;
  @override
  final BuiltList<String>? situationIds;
  @override
  final BuiltList<ChronicleSocialNarrativesSelectorStatusesEnum>? statuses;
  @override
  final bool? keepPostText;

  factory _$ChronicleSocialNarrativesSelector(
          [void Function(ChronicleSocialNarrativesSelectorBuilder)? updates]) =>
      (ChronicleSocialNarrativesSelectorBuilder()..update(updates))._build();

  _$ChronicleSocialNarrativesSelector._(
      {required this.type,
      this.topicIds,
      this.placeIds,
      this.regionCodes,
      this.situationIds,
      this.statuses,
      this.keepPostText})
      : super._();
  @override
  ChronicleSocialNarrativesSelector rebuild(
          void Function(ChronicleSocialNarrativesSelectorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChronicleSocialNarrativesSelectorBuilder toBuilder() =>
      ChronicleSocialNarrativesSelectorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleSocialNarrativesSelector &&
        type == other.type &&
        topicIds == other.topicIds &&
        placeIds == other.placeIds &&
        regionCodes == other.regionCodes &&
        situationIds == other.situationIds &&
        statuses == other.statuses &&
        keepPostText == other.keepPostText;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, topicIds.hashCode);
    _$hash = $jc(_$hash, placeIds.hashCode);
    _$hash = $jc(_$hash, regionCodes.hashCode);
    _$hash = $jc(_$hash, situationIds.hashCode);
    _$hash = $jc(_$hash, statuses.hashCode);
    _$hash = $jc(_$hash, keepPostText.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChronicleSocialNarrativesSelector')
          ..add('type', type)
          ..add('topicIds', topicIds)
          ..add('placeIds', placeIds)
          ..add('regionCodes', regionCodes)
          ..add('situationIds', situationIds)
          ..add('statuses', statuses)
          ..add('keepPostText', keepPostText))
        .toString();
  }
}

class ChronicleSocialNarrativesSelectorBuilder
    implements
        Builder<ChronicleSocialNarrativesSelector,
            ChronicleSocialNarrativesSelectorBuilder> {
  _$ChronicleSocialNarrativesSelector? _$v;

  ChronicleSocialNarrativesSelectorTypeEnum? _type;
  ChronicleSocialNarrativesSelectorTypeEnum? get type => _$this._type;
  set type(ChronicleSocialNarrativesSelectorTypeEnum? type) =>
      _$this._type = type;

  ListBuilder<String>? _topicIds;
  ListBuilder<String> get topicIds =>
      _$this._topicIds ??= ListBuilder<String>();
  set topicIds(ListBuilder<String>? topicIds) => _$this._topicIds = topicIds;

  ListBuilder<String>? _placeIds;
  ListBuilder<String> get placeIds =>
      _$this._placeIds ??= ListBuilder<String>();
  set placeIds(ListBuilder<String>? placeIds) => _$this._placeIds = placeIds;

  ListBuilder<String>? _regionCodes;
  ListBuilder<String> get regionCodes =>
      _$this._regionCodes ??= ListBuilder<String>();
  set regionCodes(ListBuilder<String>? regionCodes) =>
      _$this._regionCodes = regionCodes;

  ListBuilder<String>? _situationIds;
  ListBuilder<String> get situationIds =>
      _$this._situationIds ??= ListBuilder<String>();
  set situationIds(ListBuilder<String>? situationIds) =>
      _$this._situationIds = situationIds;

  ListBuilder<ChronicleSocialNarrativesSelectorStatusesEnum>? _statuses;
  ListBuilder<ChronicleSocialNarrativesSelectorStatusesEnum> get statuses =>
      _$this._statuses ??=
          ListBuilder<ChronicleSocialNarrativesSelectorStatusesEnum>();
  set statuses(
          ListBuilder<ChronicleSocialNarrativesSelectorStatusesEnum>?
              statuses) =>
      _$this._statuses = statuses;

  bool? _keepPostText;
  bool? get keepPostText => _$this._keepPostText;
  set keepPostText(bool? keepPostText) => _$this._keepPostText = keepPostText;

  ChronicleSocialNarrativesSelectorBuilder() {
    ChronicleSocialNarrativesSelector._defaults(this);
  }

  ChronicleSocialNarrativesSelectorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _topicIds = $v.topicIds?.toBuilder();
      _placeIds = $v.placeIds?.toBuilder();
      _regionCodes = $v.regionCodes?.toBuilder();
      _situationIds = $v.situationIds?.toBuilder();
      _statuses = $v.statuses?.toBuilder();
      _keepPostText = $v.keepPostText;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleSocialNarrativesSelector other) {
    _$v = other as _$ChronicleSocialNarrativesSelector;
  }

  @override
  void update(
      void Function(ChronicleSocialNarrativesSelectorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleSocialNarrativesSelector build() => _build();

  _$ChronicleSocialNarrativesSelector _build() {
    _$ChronicleSocialNarrativesSelector _$result;
    try {
      _$result = _$v ??
          _$ChronicleSocialNarrativesSelector._(
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'ChronicleSocialNarrativesSelector', 'type'),
            topicIds: _topicIds?.build(),
            placeIds: _placeIds?.build(),
            regionCodes: _regionCodes?.build(),
            situationIds: _situationIds?.build(),
            statuses: _statuses?.build(),
            keepPostText: keepPostText,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'topicIds';
        _topicIds?.build();
        _$failedField = 'placeIds';
        _placeIds?.build();
        _$failedField = 'regionCodes';
        _regionCodes?.build();
        _$failedField = 'situationIds';
        _situationIds?.build();
        _$failedField = 'statuses';
        _statuses?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ChronicleSocialNarrativesSelector', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
