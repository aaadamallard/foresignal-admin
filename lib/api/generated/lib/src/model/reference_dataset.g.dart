// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reference_dataset.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ReferenceDatasetStateEnum _$referenceDatasetStateEnum_absent =
    const ReferenceDatasetStateEnum._('absent');
const ReferenceDatasetStateEnum _$referenceDatasetStateEnum_loading =
    const ReferenceDatasetStateEnum._('loading');
const ReferenceDatasetStateEnum _$referenceDatasetStateEnum_loaded =
    const ReferenceDatasetStateEnum._('loaded');
const ReferenceDatasetStateEnum _$referenceDatasetStateEnum_failed =
    const ReferenceDatasetStateEnum._('failed');

ReferenceDatasetStateEnum _$referenceDatasetStateEnumValueOf(String name) {
  switch (name) {
    case 'absent':
      return _$referenceDatasetStateEnum_absent;
    case 'loading':
      return _$referenceDatasetStateEnum_loading;
    case 'loaded':
      return _$referenceDatasetStateEnum_loaded;
    case 'failed':
      return _$referenceDatasetStateEnum_failed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ReferenceDatasetStateEnum> _$referenceDatasetStateEnumValues =
    BuiltSet<ReferenceDatasetStateEnum>(const <ReferenceDatasetStateEnum>[
  _$referenceDatasetStateEnum_absent,
  _$referenceDatasetStateEnum_loading,
  _$referenceDatasetStateEnum_loaded,
  _$referenceDatasetStateEnum_failed,
]);

Serializer<ReferenceDatasetStateEnum> _$referenceDatasetStateEnumSerializer =
    _$ReferenceDatasetStateEnumSerializer();

class _$ReferenceDatasetStateEnumSerializer
    implements PrimitiveSerializer<ReferenceDatasetStateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'absent': 'absent',
    'loading': 'loading',
    'loaded': 'loaded',
    'failed': 'failed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'absent': 'absent',
    'loading': 'loading',
    'loaded': 'loaded',
    'failed': 'failed',
  };

  @override
  final Iterable<Type> types = const <Type>[ReferenceDatasetStateEnum];
  @override
  final String wireName = 'ReferenceDatasetStateEnum';

  @override
  Object serialize(Serializers serializers, ReferenceDatasetStateEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ReferenceDatasetStateEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ReferenceDatasetStateEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ReferenceDataset extends ReferenceDataset {
  @override
  final String name;
  @override
  final String? edition;
  @override
  final String? url;
  @override
  final String? sha256;
  @override
  final String? licence;
  @override
  final String? attribution;
  @override
  final int? rows;
  @override
  final DateTime? loadedAt;
  @override
  final bool? optional;
  @override
  final ReferenceDatasetStateEnum state;
  @override
  final String? error;

  factory _$ReferenceDataset(
          [void Function(ReferenceDatasetBuilder)? updates]) =>
      (ReferenceDatasetBuilder()..update(updates))._build();

  _$ReferenceDataset._(
      {required this.name,
      this.edition,
      this.url,
      this.sha256,
      this.licence,
      this.attribution,
      this.rows,
      this.loadedAt,
      this.optional,
      required this.state,
      this.error})
      : super._();
  @override
  ReferenceDataset rebuild(void Function(ReferenceDatasetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReferenceDatasetBuilder toBuilder() =>
      ReferenceDatasetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReferenceDataset &&
        name == other.name &&
        edition == other.edition &&
        url == other.url &&
        sha256 == other.sha256 &&
        licence == other.licence &&
        attribution == other.attribution &&
        rows == other.rows &&
        loadedAt == other.loadedAt &&
        optional == other.optional &&
        state == other.state &&
        error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, edition.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, sha256.hashCode);
    _$hash = $jc(_$hash, licence.hashCode);
    _$hash = $jc(_$hash, attribution.hashCode);
    _$hash = $jc(_$hash, rows.hashCode);
    _$hash = $jc(_$hash, loadedAt.hashCode);
    _$hash = $jc(_$hash, optional.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReferenceDataset')
          ..add('name', name)
          ..add('edition', edition)
          ..add('url', url)
          ..add('sha256', sha256)
          ..add('licence', licence)
          ..add('attribution', attribution)
          ..add('rows', rows)
          ..add('loadedAt', loadedAt)
          ..add('optional', optional)
          ..add('state', state)
          ..add('error', error))
        .toString();
  }
}

class ReferenceDatasetBuilder
    implements Builder<ReferenceDataset, ReferenceDatasetBuilder> {
  _$ReferenceDataset? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _edition;
  String? get edition => _$this._edition;
  set edition(String? edition) => _$this._edition = edition;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _sha256;
  String? get sha256 => _$this._sha256;
  set sha256(String? sha256) => _$this._sha256 = sha256;

  String? _licence;
  String? get licence => _$this._licence;
  set licence(String? licence) => _$this._licence = licence;

  String? _attribution;
  String? get attribution => _$this._attribution;
  set attribution(String? attribution) => _$this._attribution = attribution;

  int? _rows;
  int? get rows => _$this._rows;
  set rows(int? rows) => _$this._rows = rows;

  DateTime? _loadedAt;
  DateTime? get loadedAt => _$this._loadedAt;
  set loadedAt(DateTime? loadedAt) => _$this._loadedAt = loadedAt;

  bool? _optional;
  bool? get optional => _$this._optional;
  set optional(bool? optional) => _$this._optional = optional;

  ReferenceDatasetStateEnum? _state;
  ReferenceDatasetStateEnum? get state => _$this._state;
  set state(ReferenceDatasetStateEnum? state) => _$this._state = state;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  ReferenceDatasetBuilder() {
    ReferenceDataset._defaults(this);
  }

  ReferenceDatasetBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _edition = $v.edition;
      _url = $v.url;
      _sha256 = $v.sha256;
      _licence = $v.licence;
      _attribution = $v.attribution;
      _rows = $v.rows;
      _loadedAt = $v.loadedAt;
      _optional = $v.optional;
      _state = $v.state;
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReferenceDataset other) {
    _$v = other as _$ReferenceDataset;
  }

  @override
  void update(void Function(ReferenceDatasetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReferenceDataset build() => _build();

  _$ReferenceDataset _build() {
    final _$result = _$v ??
        _$ReferenceDataset._(
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'ReferenceDataset', 'name'),
          edition: edition,
          url: url,
          sha256: sha256,
          licence: licence,
          attribution: attribution,
          rows: rows,
          loadedAt: loadedAt,
          optional: optional,
          state: BuiltValueNullFieldError.checkNotNull(
              state, r'ReferenceDataset', 'state'),
          error: error,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
