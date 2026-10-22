// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_rasters.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SystemRastersProfileEnum _$systemRastersProfileEnum_small =
    const SystemRastersProfileEnum._('small');
const SystemRastersProfileEnum _$systemRastersProfileEnum_large =
    const SystemRastersProfileEnum._('large');

SystemRastersProfileEnum _$systemRastersProfileEnumValueOf(String name) {
  switch (name) {
    case 'small':
      return _$systemRastersProfileEnum_small;
    case 'large':
      return _$systemRastersProfileEnum_large;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SystemRastersProfileEnum> _$systemRastersProfileEnumValues =
    BuiltSet<SystemRastersProfileEnum>(const <SystemRastersProfileEnum>[
      _$systemRastersProfileEnum_small,
      _$systemRastersProfileEnum_large,
    ]);

Serializer<SystemRastersProfileEnum> _$systemRastersProfileEnumSerializer =
    _$SystemRastersProfileEnumSerializer();

class _$SystemRastersProfileEnumSerializer
    implements PrimitiveSerializer<SystemRastersProfileEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'small': 'small',
    'large': 'large',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'small': 'small',
    'large': 'large',
  };

  @override
  final Iterable<Type> types = const <Type>[SystemRastersProfileEnum];
  @override
  final String wireName = 'SystemRastersProfileEnum';

  @override
  Object serialize(
    Serializers serializers,
    SystemRastersProfileEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SystemRastersProfileEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SystemRastersProfileEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SystemRasters extends SystemRasters {
  @override
  final SystemRastersProfileEnum profile;
  @override
  final int? products;
  @override
  final int? frames;
  @override
  final int? storeBytes;
  @override
  final int? mediaBytes;
  @override
  final num? diskQuotaGb;
  @override
  final num? diskQuotaPct;
  @override
  final BuiltMap<String, SystemRastersCachesValue>? caches;
  @override
  final SystemRastersRenderQueue? renderQueue;
  @override
  final int? renderBusyLastHour;
  @override
  final num? mbDownloadedToday;
  @override
  final SystemRastersGlm? glm;

  factory _$SystemRasters([void Function(SystemRastersBuilder)? updates]) =>
      (SystemRastersBuilder()..update(updates))._build();

  _$SystemRasters._({
    required this.profile,
    this.products,
    this.frames,
    this.storeBytes,
    this.mediaBytes,
    this.diskQuotaGb,
    this.diskQuotaPct,
    this.caches,
    this.renderQueue,
    this.renderBusyLastHour,
    this.mbDownloadedToday,
    this.glm,
  }) : super._();
  @override
  SystemRasters rebuild(void Function(SystemRastersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SystemRastersBuilder toBuilder() => SystemRastersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SystemRasters &&
        profile == other.profile &&
        products == other.products &&
        frames == other.frames &&
        storeBytes == other.storeBytes &&
        mediaBytes == other.mediaBytes &&
        diskQuotaGb == other.diskQuotaGb &&
        diskQuotaPct == other.diskQuotaPct &&
        caches == other.caches &&
        renderQueue == other.renderQueue &&
        renderBusyLastHour == other.renderBusyLastHour &&
        mbDownloadedToday == other.mbDownloadedToday &&
        glm == other.glm;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, profile.hashCode);
    _$hash = $jc(_$hash, products.hashCode);
    _$hash = $jc(_$hash, frames.hashCode);
    _$hash = $jc(_$hash, storeBytes.hashCode);
    _$hash = $jc(_$hash, mediaBytes.hashCode);
    _$hash = $jc(_$hash, diskQuotaGb.hashCode);
    _$hash = $jc(_$hash, diskQuotaPct.hashCode);
    _$hash = $jc(_$hash, caches.hashCode);
    _$hash = $jc(_$hash, renderQueue.hashCode);
    _$hash = $jc(_$hash, renderBusyLastHour.hashCode);
    _$hash = $jc(_$hash, mbDownloadedToday.hashCode);
    _$hash = $jc(_$hash, glm.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SystemRasters')
          ..add('profile', profile)
          ..add('products', products)
          ..add('frames', frames)
          ..add('storeBytes', storeBytes)
          ..add('mediaBytes', mediaBytes)
          ..add('diskQuotaGb', diskQuotaGb)
          ..add('diskQuotaPct', diskQuotaPct)
          ..add('caches', caches)
          ..add('renderQueue', renderQueue)
          ..add('renderBusyLastHour', renderBusyLastHour)
          ..add('mbDownloadedToday', mbDownloadedToday)
          ..add('glm', glm))
        .toString();
  }
}

class SystemRastersBuilder
    implements Builder<SystemRasters, SystemRastersBuilder> {
  _$SystemRasters? _$v;

  SystemRastersProfileEnum? _profile;
  SystemRastersProfileEnum? get profile => _$this._profile;
  set profile(SystemRastersProfileEnum? profile) => _$this._profile = profile;

  int? _products;
  int? get products => _$this._products;
  set products(int? products) => _$this._products = products;

  int? _frames;
  int? get frames => _$this._frames;
  set frames(int? frames) => _$this._frames = frames;

  int? _storeBytes;
  int? get storeBytes => _$this._storeBytes;
  set storeBytes(int? storeBytes) => _$this._storeBytes = storeBytes;

  int? _mediaBytes;
  int? get mediaBytes => _$this._mediaBytes;
  set mediaBytes(int? mediaBytes) => _$this._mediaBytes = mediaBytes;

  num? _diskQuotaGb;
  num? get diskQuotaGb => _$this._diskQuotaGb;
  set diskQuotaGb(num? diskQuotaGb) => _$this._diskQuotaGb = diskQuotaGb;

  num? _diskQuotaPct;
  num? get diskQuotaPct => _$this._diskQuotaPct;
  set diskQuotaPct(num? diskQuotaPct) => _$this._diskQuotaPct = diskQuotaPct;

  MapBuilder<String, SystemRastersCachesValue>? _caches;
  MapBuilder<String, SystemRastersCachesValue> get caches =>
      _$this._caches ??= MapBuilder<String, SystemRastersCachesValue>();
  set caches(MapBuilder<String, SystemRastersCachesValue>? caches) =>
      _$this._caches = caches;

  SystemRastersRenderQueueBuilder? _renderQueue;
  SystemRastersRenderQueueBuilder get renderQueue =>
      _$this._renderQueue ??= SystemRastersRenderQueueBuilder();
  set renderQueue(SystemRastersRenderQueueBuilder? renderQueue) =>
      _$this._renderQueue = renderQueue;

  int? _renderBusyLastHour;
  int? get renderBusyLastHour => _$this._renderBusyLastHour;
  set renderBusyLastHour(int? renderBusyLastHour) =>
      _$this._renderBusyLastHour = renderBusyLastHour;

  num? _mbDownloadedToday;
  num? get mbDownloadedToday => _$this._mbDownloadedToday;
  set mbDownloadedToday(num? mbDownloadedToday) =>
      _$this._mbDownloadedToday = mbDownloadedToday;

  SystemRastersGlmBuilder? _glm;
  SystemRastersGlmBuilder get glm => _$this._glm ??= SystemRastersGlmBuilder();
  set glm(SystemRastersGlmBuilder? glm) => _$this._glm = glm;

  SystemRastersBuilder() {
    SystemRasters._defaults(this);
  }

  SystemRastersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _profile = $v.profile;
      _products = $v.products;
      _frames = $v.frames;
      _storeBytes = $v.storeBytes;
      _mediaBytes = $v.mediaBytes;
      _diskQuotaGb = $v.diskQuotaGb;
      _diskQuotaPct = $v.diskQuotaPct;
      _caches = $v.caches?.toBuilder();
      _renderQueue = $v.renderQueue?.toBuilder();
      _renderBusyLastHour = $v.renderBusyLastHour;
      _mbDownloadedToday = $v.mbDownloadedToday;
      _glm = $v.glm?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SystemRasters other) {
    _$v = other as _$SystemRasters;
  }

  @override
  void update(void Function(SystemRastersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SystemRasters build() => _build();

  _$SystemRasters _build() {
    _$SystemRasters _$result;
    try {
      _$result =
          _$v ??
          _$SystemRasters._(
            profile: BuiltValueNullFieldError.checkNotNull(
              profile,
              r'SystemRasters',
              'profile',
            ),
            products: products,
            frames: frames,
            storeBytes: storeBytes,
            mediaBytes: mediaBytes,
            diskQuotaGb: diskQuotaGb,
            diskQuotaPct: diskQuotaPct,
            caches: _caches?.build(),
            renderQueue: _renderQueue?.build(),
            renderBusyLastHour: renderBusyLastHour,
            mbDownloadedToday: mbDownloadedToday,
            glm: _glm?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'caches';
        _caches?.build();
        _$failedField = 'renderQueue';
        _renderQueue?.build();

        _$failedField = 'glm';
        _glm?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SystemRasters',
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
