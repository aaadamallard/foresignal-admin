// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_device_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PushDeviceUpdateContentLevelEnum
_$pushDeviceUpdateContentLevelEnum_minimal =
    const PushDeviceUpdateContentLevelEnum._('minimal');
const PushDeviceUpdateContentLevelEnum
_$pushDeviceUpdateContentLevelEnum_short =
    const PushDeviceUpdateContentLevelEnum._('short');
const PushDeviceUpdateContentLevelEnum
_$pushDeviceUpdateContentLevelEnum_unknownDefaultOpenApi =
    const PushDeviceUpdateContentLevelEnum._('unknownDefaultOpenApi');

PushDeviceUpdateContentLevelEnum _$pushDeviceUpdateContentLevelEnumValueOf(
  String name,
) {
  switch (name) {
    case 'minimal':
      return _$pushDeviceUpdateContentLevelEnum_minimal;
    case 'short':
      return _$pushDeviceUpdateContentLevelEnum_short;
    case 'unknownDefaultOpenApi':
      return _$pushDeviceUpdateContentLevelEnum_unknownDefaultOpenApi;
    default:
      return _$pushDeviceUpdateContentLevelEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<PushDeviceUpdateContentLevelEnum>
_$pushDeviceUpdateContentLevelEnumValues =
    BuiltSet<PushDeviceUpdateContentLevelEnum>(
      const <PushDeviceUpdateContentLevelEnum>[
        _$pushDeviceUpdateContentLevelEnum_minimal,
        _$pushDeviceUpdateContentLevelEnum_short,
        _$pushDeviceUpdateContentLevelEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<PushDeviceUpdateContentLevelEnum>
_$pushDeviceUpdateContentLevelEnumSerializer =
    _$PushDeviceUpdateContentLevelEnumSerializer();

class _$PushDeviceUpdateContentLevelEnumSerializer
    implements PrimitiveSerializer<PushDeviceUpdateContentLevelEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'minimal': 'minimal',
    'short': 'short',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'minimal': 'minimal',
    'short': 'short',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[PushDeviceUpdateContentLevelEnum];
  @override
  final String wireName = 'PushDeviceUpdateContentLevelEnum';

  @override
  Object serialize(
    Serializers serializers,
    PushDeviceUpdateContentLevelEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PushDeviceUpdateContentLevelEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PushDeviceUpdateContentLevelEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PushDeviceUpdate extends PushDeviceUpdate {
  @override
  final String? name;
  @override
  final PushFilters? filters;
  @override
  final PushDeviceUpdateContentLevelEnum? contentLevel;
  @override
  final String? lang;

  factory _$PushDeviceUpdate([
    void Function(PushDeviceUpdateBuilder)? updates,
  ]) => (PushDeviceUpdateBuilder()..update(updates))._build();

  _$PushDeviceUpdate._({this.name, this.filters, this.contentLevel, this.lang})
    : super._();
  @override
  PushDeviceUpdate rebuild(void Function(PushDeviceUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PushDeviceUpdateBuilder toBuilder() =>
      PushDeviceUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PushDeviceUpdate &&
        name == other.name &&
        filters == other.filters &&
        contentLevel == other.contentLevel &&
        lang == other.lang;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, contentLevel.hashCode);
    _$hash = $jc(_$hash, lang.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PushDeviceUpdate')
          ..add('name', name)
          ..add('filters', filters)
          ..add('contentLevel', contentLevel)
          ..add('lang', lang))
        .toString();
  }
}

class PushDeviceUpdateBuilder
    implements Builder<PushDeviceUpdate, PushDeviceUpdateBuilder> {
  _$PushDeviceUpdate? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  PushFiltersBuilder? _filters;
  PushFiltersBuilder get filters => _$this._filters ??= PushFiltersBuilder();
  set filters(PushFiltersBuilder? filters) => _$this._filters = filters;

  PushDeviceUpdateContentLevelEnum? _contentLevel;
  PushDeviceUpdateContentLevelEnum? get contentLevel => _$this._contentLevel;
  set contentLevel(PushDeviceUpdateContentLevelEnum? contentLevel) =>
      _$this._contentLevel = contentLevel;

  String? _lang;
  String? get lang => _$this._lang;
  set lang(String? lang) => _$this._lang = lang;

  PushDeviceUpdateBuilder() {
    PushDeviceUpdate._defaults(this);
  }

  PushDeviceUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _filters = $v.filters?.toBuilder();
      _contentLevel = $v.contentLevel;
      _lang = $v.lang;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PushDeviceUpdate other) {
    _$v = other as _$PushDeviceUpdate;
  }

  @override
  void update(void Function(PushDeviceUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PushDeviceUpdate build() => _build();

  _$PushDeviceUpdate _build() {
    _$PushDeviceUpdate _$result;
    try {
      _$result =
          _$v ??
          _$PushDeviceUpdate._(
            name: name,
            filters: _filters?.build(),
            contentLevel: contentLevel,
            lang: lang,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PushDeviceUpdate',
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
