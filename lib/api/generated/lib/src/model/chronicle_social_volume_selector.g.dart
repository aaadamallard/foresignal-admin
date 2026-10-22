// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_social_volume_selector.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ChronicleSocialVolumeSelectorTypeEnum
_$chronicleSocialVolumeSelectorTypeEnum_socialVolume =
    const ChronicleSocialVolumeSelectorTypeEnum._('socialVolume');

ChronicleSocialVolumeSelectorTypeEnum
_$chronicleSocialVolumeSelectorTypeEnumValueOf(String name) {
  switch (name) {
    case 'socialVolume':
      return _$chronicleSocialVolumeSelectorTypeEnum_socialVolume;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ChronicleSocialVolumeSelectorTypeEnum>
_$chronicleSocialVolumeSelectorTypeEnumValues =
    BuiltSet<ChronicleSocialVolumeSelectorTypeEnum>(
      const <ChronicleSocialVolumeSelectorTypeEnum>[
        _$chronicleSocialVolumeSelectorTypeEnum_socialVolume,
      ],
    );

const ChronicleSocialVolumeSelectorMetricsEnum
_$chronicleSocialVolumeSelectorMetricsEnum_posts =
    const ChronicleSocialVolumeSelectorMetricsEnum._('posts');
const ChronicleSocialVolumeSelectorMetricsEnum
_$chronicleSocialVolumeSelectorMetricsEnum_uniqueAuthors =
    const ChronicleSocialVolumeSelectorMetricsEnum._('uniqueAuthors');
const ChronicleSocialVolumeSelectorMetricsEnum
_$chronicleSocialVolumeSelectorMetricsEnum_reposts =
    const ChronicleSocialVolumeSelectorMetricsEnum._('reposts');
const ChronicleSocialVolumeSelectorMetricsEnum
_$chronicleSocialVolumeSelectorMetricsEnum_engagement =
    const ChronicleSocialVolumeSelectorMetricsEnum._('engagement');

ChronicleSocialVolumeSelectorMetricsEnum
_$chronicleSocialVolumeSelectorMetricsEnumValueOf(String name) {
  switch (name) {
    case 'posts':
      return _$chronicleSocialVolumeSelectorMetricsEnum_posts;
    case 'uniqueAuthors':
      return _$chronicleSocialVolumeSelectorMetricsEnum_uniqueAuthors;
    case 'reposts':
      return _$chronicleSocialVolumeSelectorMetricsEnum_reposts;
    case 'engagement':
      return _$chronicleSocialVolumeSelectorMetricsEnum_engagement;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ChronicleSocialVolumeSelectorMetricsEnum>
_$chronicleSocialVolumeSelectorMetricsEnumValues =
    BuiltSet<ChronicleSocialVolumeSelectorMetricsEnum>(
      const <ChronicleSocialVolumeSelectorMetricsEnum>[
        _$chronicleSocialVolumeSelectorMetricsEnum_posts,
        _$chronicleSocialVolumeSelectorMetricsEnum_uniqueAuthors,
        _$chronicleSocialVolumeSelectorMetricsEnum_reposts,
        _$chronicleSocialVolumeSelectorMetricsEnum_engagement,
      ],
    );

Serializer<ChronicleSocialVolumeSelectorTypeEnum>
_$chronicleSocialVolumeSelectorTypeEnumSerializer =
    _$ChronicleSocialVolumeSelectorTypeEnumSerializer();
Serializer<ChronicleSocialVolumeSelectorMetricsEnum>
_$chronicleSocialVolumeSelectorMetricsEnumSerializer =
    _$ChronicleSocialVolumeSelectorMetricsEnumSerializer();

class _$ChronicleSocialVolumeSelectorTypeEnumSerializer
    implements PrimitiveSerializer<ChronicleSocialVolumeSelectorTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'socialVolume': 'social-volume',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'social-volume': 'socialVolume',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ChronicleSocialVolumeSelectorTypeEnum,
  ];
  @override
  final String wireName = 'ChronicleSocialVolumeSelectorTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    ChronicleSocialVolumeSelectorTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ChronicleSocialVolumeSelectorTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ChronicleSocialVolumeSelectorTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ChronicleSocialVolumeSelectorMetricsEnumSerializer
    implements PrimitiveSerializer<ChronicleSocialVolumeSelectorMetricsEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'posts': 'posts',
    'uniqueAuthors': 'uniqueAuthors',
    'reposts': 'reposts',
    'engagement': 'engagement',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'posts': 'posts',
    'uniqueAuthors': 'uniqueAuthors',
    'reposts': 'reposts',
    'engagement': 'engagement',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ChronicleSocialVolumeSelectorMetricsEnum,
  ];
  @override
  final String wireName = 'ChronicleSocialVolumeSelectorMetricsEnum';

  @override
  Object serialize(
    Serializers serializers,
    ChronicleSocialVolumeSelectorMetricsEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ChronicleSocialVolumeSelectorMetricsEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ChronicleSocialVolumeSelectorMetricsEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ChronicleSocialVolumeSelector extends ChronicleSocialVolumeSelector {
  @override
  final ChronicleSocialVolumeSelectorTypeEnum type;
  @override
  final BuiltList<ChronicleSocialVolumeSelectorScopesInner> scopes;
  @override
  final BuiltList<String>? platforms;
  @override
  final BuiltList<ChronicleSocialVolumeSelectorMetricsEnum>? metrics;

  factory _$ChronicleSocialVolumeSelector([
    void Function(ChronicleSocialVolumeSelectorBuilder)? updates,
  ]) => (ChronicleSocialVolumeSelectorBuilder()..update(updates))._build();

  _$ChronicleSocialVolumeSelector._({
    required this.type,
    required this.scopes,
    this.platforms,
    this.metrics,
  }) : super._();
  @override
  ChronicleSocialVolumeSelector rebuild(
    void Function(ChronicleSocialVolumeSelectorBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ChronicleSocialVolumeSelectorBuilder toBuilder() =>
      ChronicleSocialVolumeSelectorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleSocialVolumeSelector &&
        type == other.type &&
        scopes == other.scopes &&
        platforms == other.platforms &&
        metrics == other.metrics;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, scopes.hashCode);
    _$hash = $jc(_$hash, platforms.hashCode);
    _$hash = $jc(_$hash, metrics.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChronicleSocialVolumeSelector')
          ..add('type', type)
          ..add('scopes', scopes)
          ..add('platforms', platforms)
          ..add('metrics', metrics))
        .toString();
  }
}

class ChronicleSocialVolumeSelectorBuilder
    implements
        Builder<
          ChronicleSocialVolumeSelector,
          ChronicleSocialVolumeSelectorBuilder
        > {
  _$ChronicleSocialVolumeSelector? _$v;

  ChronicleSocialVolumeSelectorTypeEnum? _type;
  ChronicleSocialVolumeSelectorTypeEnum? get type => _$this._type;
  set type(ChronicleSocialVolumeSelectorTypeEnum? type) => _$this._type = type;

  ListBuilder<ChronicleSocialVolumeSelectorScopesInner>? _scopes;
  ListBuilder<ChronicleSocialVolumeSelectorScopesInner> get scopes =>
      _$this._scopes ??=
          ListBuilder<ChronicleSocialVolumeSelectorScopesInner>();
  set scopes(ListBuilder<ChronicleSocialVolumeSelectorScopesInner>? scopes) =>
      _$this._scopes = scopes;

  ListBuilder<String>? _platforms;
  ListBuilder<String> get platforms =>
      _$this._platforms ??= ListBuilder<String>();
  set platforms(ListBuilder<String>? platforms) =>
      _$this._platforms = platforms;

  ListBuilder<ChronicleSocialVolumeSelectorMetricsEnum>? _metrics;
  ListBuilder<ChronicleSocialVolumeSelectorMetricsEnum> get metrics =>
      _$this._metrics ??=
          ListBuilder<ChronicleSocialVolumeSelectorMetricsEnum>();
  set metrics(ListBuilder<ChronicleSocialVolumeSelectorMetricsEnum>? metrics) =>
      _$this._metrics = metrics;

  ChronicleSocialVolumeSelectorBuilder() {
    ChronicleSocialVolumeSelector._defaults(this);
  }

  ChronicleSocialVolumeSelectorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _scopes = $v.scopes.toBuilder();
      _platforms = $v.platforms?.toBuilder();
      _metrics = $v.metrics?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleSocialVolumeSelector other) {
    _$v = other as _$ChronicleSocialVolumeSelector;
  }

  @override
  void update(void Function(ChronicleSocialVolumeSelectorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleSocialVolumeSelector build() => _build();

  _$ChronicleSocialVolumeSelector _build() {
    _$ChronicleSocialVolumeSelector _$result;
    try {
      _$result =
          _$v ??
          _$ChronicleSocialVolumeSelector._(
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'ChronicleSocialVolumeSelector',
              'type',
            ),
            scopes: scopes.build(),
            platforms: _platforms?.build(),
            metrics: _metrics?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'scopes';
        scopes.build();
        _$failedField = 'platforms';
        _platforms?.build();
        _$failedField = 'metrics';
        _metrics?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ChronicleSocialVolumeSelector',
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
