// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exposure_dependents.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ExposureDependentsStatusEnum _$exposureDependentsStatusEnum_ok =
    const ExposureDependentsStatusEnum._('ok');
const ExposureDependentsStatusEnum _$exposureDependentsStatusEnum_unavailable =
    const ExposureDependentsStatusEnum._('unavailable');
const ExposureDependentsStatusEnum _$exposureDependentsStatusEnum_notInstalled =
    const ExposureDependentsStatusEnum._('notInstalled');

ExposureDependentsStatusEnum _$exposureDependentsStatusEnumValueOf(
    String name) {
  switch (name) {
    case 'ok':
      return _$exposureDependentsStatusEnum_ok;
    case 'unavailable':
      return _$exposureDependentsStatusEnum_unavailable;
    case 'notInstalled':
      return _$exposureDependentsStatusEnum_notInstalled;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ExposureDependentsStatusEnum>
    _$exposureDependentsStatusEnumValues =
    BuiltSet<ExposureDependentsStatusEnum>(const <ExposureDependentsStatusEnum>[
  _$exposureDependentsStatusEnum_ok,
  _$exposureDependentsStatusEnum_unavailable,
  _$exposureDependentsStatusEnum_notInstalled,
]);

Serializer<ExposureDependentsStatusEnum>
    _$exposureDependentsStatusEnumSerializer =
    _$ExposureDependentsStatusEnumSerializer();

class _$ExposureDependentsStatusEnumSerializer
    implements PrimitiveSerializer<ExposureDependentsStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ok': 'ok',
    'unavailable': 'unavailable',
    'notInstalled': 'not-installed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ok': 'ok',
    'unavailable': 'unavailable',
    'not-installed': 'notInstalled',
  };

  @override
  final Iterable<Type> types = const <Type>[ExposureDependentsStatusEnum];
  @override
  final String wireName = 'ExposureDependentsStatusEnum';

  @override
  Object serialize(Serializers serializers, ExposureDependentsStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ExposureDependentsStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ExposureDependentsStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ExposureDependents extends ExposureDependents {
  @override
  final ExposureDependentsStatusEnum status;
  @override
  final BuiltList<Attribution>? attribution;
  @override
  final String? buildId;
  @override
  final ExposureDependentsByLabel? byLabel;
  @override
  final BuiltMap<String, int>? byType;

  factory _$ExposureDependents(
          [void Function(ExposureDependentsBuilder)? updates]) =>
      (ExposureDependentsBuilder()..update(updates))._build();

  _$ExposureDependents._(
      {required this.status,
      this.attribution,
      this.buildId,
      this.byLabel,
      this.byType})
      : super._();
  @override
  ExposureDependents rebuild(
          void Function(ExposureDependentsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExposureDependentsBuilder toBuilder() =>
      ExposureDependentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExposureDependents &&
        status == other.status &&
        attribution == other.attribution &&
        buildId == other.buildId &&
        byLabel == other.byLabel &&
        byType == other.byType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, attribution.hashCode);
    _$hash = $jc(_$hash, buildId.hashCode);
    _$hash = $jc(_$hash, byLabel.hashCode);
    _$hash = $jc(_$hash, byType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExposureDependents')
          ..add('status', status)
          ..add('attribution', attribution)
          ..add('buildId', buildId)
          ..add('byLabel', byLabel)
          ..add('byType', byType))
        .toString();
  }
}

class ExposureDependentsBuilder
    implements Builder<ExposureDependents, ExposureDependentsBuilder> {
  _$ExposureDependents? _$v;

  ExposureDependentsStatusEnum? _status;
  ExposureDependentsStatusEnum? get status => _$this._status;
  set status(ExposureDependentsStatusEnum? status) => _$this._status = status;

  ListBuilder<Attribution>? _attribution;
  ListBuilder<Attribution> get attribution =>
      _$this._attribution ??= ListBuilder<Attribution>();
  set attribution(ListBuilder<Attribution>? attribution) =>
      _$this._attribution = attribution;

  String? _buildId;
  String? get buildId => _$this._buildId;
  set buildId(String? buildId) => _$this._buildId = buildId;

  ExposureDependentsByLabelBuilder? _byLabel;
  ExposureDependentsByLabelBuilder get byLabel =>
      _$this._byLabel ??= ExposureDependentsByLabelBuilder();
  set byLabel(ExposureDependentsByLabelBuilder? byLabel) =>
      _$this._byLabel = byLabel;

  MapBuilder<String, int>? _byType;
  MapBuilder<String, int> get byType =>
      _$this._byType ??= MapBuilder<String, int>();
  set byType(MapBuilder<String, int>? byType) => _$this._byType = byType;

  ExposureDependentsBuilder() {
    ExposureDependents._defaults(this);
  }

  ExposureDependentsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _attribution = $v.attribution?.toBuilder();
      _buildId = $v.buildId;
      _byLabel = $v.byLabel?.toBuilder();
      _byType = $v.byType?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExposureDependents other) {
    _$v = other as _$ExposureDependents;
  }

  @override
  void update(void Function(ExposureDependentsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExposureDependents build() => _build();

  _$ExposureDependents _build() {
    _$ExposureDependents _$result;
    try {
      _$result = _$v ??
          _$ExposureDependents._(
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'ExposureDependents', 'status'),
            attribution: _attribution?.build(),
            buildId: buildId,
            byLabel: _byLabel?.build(),
            byType: _byType?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attribution';
        _attribution?.build();

        _$failedField = 'byLabel';
        _byLabel?.build();
        _$failedField = 'byType';
        _byType?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ExposureDependents', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
