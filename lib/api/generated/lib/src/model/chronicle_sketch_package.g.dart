// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_sketch_package.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ChronicleSketchPackageKeyTypesEnum
_$chronicleSketchPackageKeyTypesEnum_evidence =
    const ChronicleSketchPackageKeyTypesEnum._('evidence');
const ChronicleSketchPackageKeyTypesEnum
_$chronicleSketchPackageKeyTypesEnum_entities =
    const ChronicleSketchPackageKeyTypesEnum._('entities');
const ChronicleSketchPackageKeyTypesEnum
_$chronicleSketchPackageKeyTypesEnum_areaTime =
    const ChronicleSketchPackageKeyTypesEnum._('areaTime');
const ChronicleSketchPackageKeyTypesEnum
_$chronicleSketchPackageKeyTypesEnum_topics =
    const ChronicleSketchPackageKeyTypesEnum._('topics');
const ChronicleSketchPackageKeyTypesEnum
_$chronicleSketchPackageKeyTypesEnum_unknownDefaultOpenApi =
    const ChronicleSketchPackageKeyTypesEnum._('unknownDefaultOpenApi');

ChronicleSketchPackageKeyTypesEnum _$chronicleSketchPackageKeyTypesEnumValueOf(
  String name,
) {
  switch (name) {
    case 'evidence':
      return _$chronicleSketchPackageKeyTypesEnum_evidence;
    case 'entities':
      return _$chronicleSketchPackageKeyTypesEnum_entities;
    case 'areaTime':
      return _$chronicleSketchPackageKeyTypesEnum_areaTime;
    case 'topics':
      return _$chronicleSketchPackageKeyTypesEnum_topics;
    case 'unknownDefaultOpenApi':
      return _$chronicleSketchPackageKeyTypesEnum_unknownDefaultOpenApi;
    default:
      return _$chronicleSketchPackageKeyTypesEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ChronicleSketchPackageKeyTypesEnum>
_$chronicleSketchPackageKeyTypesEnumValues =
    BuiltSet<ChronicleSketchPackageKeyTypesEnum>(
      const <ChronicleSketchPackageKeyTypesEnum>[
        _$chronicleSketchPackageKeyTypesEnum_evidence,
        _$chronicleSketchPackageKeyTypesEnum_entities,
        _$chronicleSketchPackageKeyTypesEnum_areaTime,
        _$chronicleSketchPackageKeyTypesEnum_topics,
        _$chronicleSketchPackageKeyTypesEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<ChronicleSketchPackageKeyTypesEnum>
_$chronicleSketchPackageKeyTypesEnumSerializer =
    _$ChronicleSketchPackageKeyTypesEnumSerializer();

class _$ChronicleSketchPackageKeyTypesEnumSerializer
    implements PrimitiveSerializer<ChronicleSketchPackageKeyTypesEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'evidence': 'evidence',
    'entities': 'entities',
    'areaTime': 'area-time',
    'topics': 'topics',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'evidence': 'evidence',
    'entities': 'entities',
    'area-time': 'areaTime',
    'topics': 'topics',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ChronicleSketchPackageKeyTypesEnum];
  @override
  final String wireName = 'ChronicleSketchPackageKeyTypesEnum';

  @override
  Object serialize(
    Serializers serializers,
    ChronicleSketchPackageKeyTypesEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ChronicleSketchPackageKeyTypesEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ChronicleSketchPackageKeyTypesEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ChronicleSketchPackage extends ChronicleSketchPackage {
  @override
  final String sketchId;
  @override
  final String instanceId;
  @override
  final String networkId;
  @override
  final BuiltList<ChronicleSketchPackageKeyTypesEnum> keyTypes;
  @override
  final BuiltMap<String, String> minhash;
  @override
  final BuiltMap<String, int> sizeBand;
  @override
  final ChronicleSketchPackageCaptureSpan captureSpan;
  @override
  final String? title;
  @override
  final String? ownerHandle;
  @override
  final String tlp;
  @override
  final DateTime issuedAt;
  @override
  final DateTime? expiresAt;

  factory _$ChronicleSketchPackage([
    void Function(ChronicleSketchPackageBuilder)? updates,
  ]) => (ChronicleSketchPackageBuilder()..update(updates))._build();

  _$ChronicleSketchPackage._({
    required this.sketchId,
    required this.instanceId,
    required this.networkId,
    required this.keyTypes,
    required this.minhash,
    required this.sizeBand,
    required this.captureSpan,
    this.title,
    this.ownerHandle,
    required this.tlp,
    required this.issuedAt,
    this.expiresAt,
  }) : super._();
  @override
  ChronicleSketchPackage rebuild(
    void Function(ChronicleSketchPackageBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ChronicleSketchPackageBuilder toBuilder() =>
      ChronicleSketchPackageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleSketchPackage &&
        sketchId == other.sketchId &&
        instanceId == other.instanceId &&
        networkId == other.networkId &&
        keyTypes == other.keyTypes &&
        minhash == other.minhash &&
        sizeBand == other.sizeBand &&
        captureSpan == other.captureSpan &&
        title == other.title &&
        ownerHandle == other.ownerHandle &&
        tlp == other.tlp &&
        issuedAt == other.issuedAt &&
        expiresAt == other.expiresAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sketchId.hashCode);
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, networkId.hashCode);
    _$hash = $jc(_$hash, keyTypes.hashCode);
    _$hash = $jc(_$hash, minhash.hashCode);
    _$hash = $jc(_$hash, sizeBand.hashCode);
    _$hash = $jc(_$hash, captureSpan.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, ownerHandle.hashCode);
    _$hash = $jc(_$hash, tlp.hashCode);
    _$hash = $jc(_$hash, issuedAt.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChronicleSketchPackage')
          ..add('sketchId', sketchId)
          ..add('instanceId', instanceId)
          ..add('networkId', networkId)
          ..add('keyTypes', keyTypes)
          ..add('minhash', minhash)
          ..add('sizeBand', sizeBand)
          ..add('captureSpan', captureSpan)
          ..add('title', title)
          ..add('ownerHandle', ownerHandle)
          ..add('tlp', tlp)
          ..add('issuedAt', issuedAt)
          ..add('expiresAt', expiresAt))
        .toString();
  }
}

class ChronicleSketchPackageBuilder
    implements Builder<ChronicleSketchPackage, ChronicleSketchPackageBuilder> {
  _$ChronicleSketchPackage? _$v;

  String? _sketchId;
  String? get sketchId => _$this._sketchId;
  set sketchId(String? sketchId) => _$this._sketchId = sketchId;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  String? _networkId;
  String? get networkId => _$this._networkId;
  set networkId(String? networkId) => _$this._networkId = networkId;

  ListBuilder<ChronicleSketchPackageKeyTypesEnum>? _keyTypes;
  ListBuilder<ChronicleSketchPackageKeyTypesEnum> get keyTypes =>
      _$this._keyTypes ??= ListBuilder<ChronicleSketchPackageKeyTypesEnum>();
  set keyTypes(ListBuilder<ChronicleSketchPackageKeyTypesEnum>? keyTypes) =>
      _$this._keyTypes = keyTypes;

  MapBuilder<String, String>? _minhash;
  MapBuilder<String, String> get minhash =>
      _$this._minhash ??= MapBuilder<String, String>();
  set minhash(MapBuilder<String, String>? minhash) => _$this._minhash = minhash;

  MapBuilder<String, int>? _sizeBand;
  MapBuilder<String, int> get sizeBand =>
      _$this._sizeBand ??= MapBuilder<String, int>();
  set sizeBand(MapBuilder<String, int>? sizeBand) =>
      _$this._sizeBand = sizeBand;

  ChronicleSketchPackageCaptureSpanBuilder? _captureSpan;
  ChronicleSketchPackageCaptureSpanBuilder get captureSpan =>
      _$this._captureSpan ??= ChronicleSketchPackageCaptureSpanBuilder();
  set captureSpan(ChronicleSketchPackageCaptureSpanBuilder? captureSpan) =>
      _$this._captureSpan = captureSpan;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _ownerHandle;
  String? get ownerHandle => _$this._ownerHandle;
  set ownerHandle(String? ownerHandle) => _$this._ownerHandle = ownerHandle;

  String? _tlp;
  String? get tlp => _$this._tlp;
  set tlp(String? tlp) => _$this._tlp = tlp;

  DateTime? _issuedAt;
  DateTime? get issuedAt => _$this._issuedAt;
  set issuedAt(DateTime? issuedAt) => _$this._issuedAt = issuedAt;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  ChronicleSketchPackageBuilder() {
    ChronicleSketchPackage._defaults(this);
  }

  ChronicleSketchPackageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sketchId = $v.sketchId;
      _instanceId = $v.instanceId;
      _networkId = $v.networkId;
      _keyTypes = $v.keyTypes.toBuilder();
      _minhash = $v.minhash.toBuilder();
      _sizeBand = $v.sizeBand.toBuilder();
      _captureSpan = $v.captureSpan.toBuilder();
      _title = $v.title;
      _ownerHandle = $v.ownerHandle;
      _tlp = $v.tlp;
      _issuedAt = $v.issuedAt;
      _expiresAt = $v.expiresAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleSketchPackage other) {
    _$v = other as _$ChronicleSketchPackage;
  }

  @override
  void update(void Function(ChronicleSketchPackageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleSketchPackage build() => _build();

  _$ChronicleSketchPackage _build() {
    _$ChronicleSketchPackage _$result;
    try {
      _$result =
          _$v ??
          _$ChronicleSketchPackage._(
            sketchId: BuiltValueNullFieldError.checkNotNull(
              sketchId,
              r'ChronicleSketchPackage',
              'sketchId',
            ),
            instanceId: BuiltValueNullFieldError.checkNotNull(
              instanceId,
              r'ChronicleSketchPackage',
              'instanceId',
            ),
            networkId: BuiltValueNullFieldError.checkNotNull(
              networkId,
              r'ChronicleSketchPackage',
              'networkId',
            ),
            keyTypes: keyTypes.build(),
            minhash: minhash.build(),
            sizeBand: sizeBand.build(),
            captureSpan: captureSpan.build(),
            title: title,
            ownerHandle: ownerHandle,
            tlp: BuiltValueNullFieldError.checkNotNull(
              tlp,
              r'ChronicleSketchPackage',
              'tlp',
            ),
            issuedAt: BuiltValueNullFieldError.checkNotNull(
              issuedAt,
              r'ChronicleSketchPackage',
              'issuedAt',
            ),
            expiresAt: expiresAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'keyTypes';
        keyTypes.build();
        _$failedField = 'minhash';
        minhash.build();
        _$failedField = 'sizeBand';
        sizeBand.build();
        _$failedField = 'captureSpan';
        captureSpan.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ChronicleSketchPackage',
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
