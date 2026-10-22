// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stix_bundle.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const StixBundleTypeEnum _$stixBundleTypeEnum_bundle =
    const StixBundleTypeEnum._('bundle');

StixBundleTypeEnum _$stixBundleTypeEnumValueOf(String name) {
  switch (name) {
    case 'bundle':
      return _$stixBundleTypeEnum_bundle;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<StixBundleTypeEnum> _$stixBundleTypeEnumValues =
    BuiltSet<StixBundleTypeEnum>(const <StixBundleTypeEnum>[
  _$stixBundleTypeEnum_bundle,
]);

Serializer<StixBundleTypeEnum> _$stixBundleTypeEnumSerializer =
    _$StixBundleTypeEnumSerializer();

class _$StixBundleTypeEnumSerializer
    implements PrimitiveSerializer<StixBundleTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'bundle': 'bundle',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'bundle': 'bundle',
  };

  @override
  final Iterable<Type> types = const <Type>[StixBundleTypeEnum];
  @override
  final String wireName = 'StixBundleTypeEnum';

  @override
  Object serialize(Serializers serializers, StixBundleTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  StixBundleTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      StixBundleTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$StixBundle extends StixBundle {
  @override
  final StixBundleTypeEnum type;
  @override
  final String id;
  @override
  final BuiltList<BuiltMap<String, JsonObject?>> objects;

  factory _$StixBundle([void Function(StixBundleBuilder)? updates]) =>
      (StixBundleBuilder()..update(updates))._build();

  _$StixBundle._({required this.type, required this.id, required this.objects})
      : super._();
  @override
  StixBundle rebuild(void Function(StixBundleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StixBundleBuilder toBuilder() => StixBundleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StixBundle &&
        type == other.type &&
        id == other.id &&
        objects == other.objects;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, objects.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StixBundle')
          ..add('type', type)
          ..add('id', id)
          ..add('objects', objects))
        .toString();
  }
}

class StixBundleBuilder implements Builder<StixBundle, StixBundleBuilder> {
  _$StixBundle? _$v;

  StixBundleTypeEnum? _type;
  StixBundleTypeEnum? get type => _$this._type;
  set type(StixBundleTypeEnum? type) => _$this._type = type;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ListBuilder<BuiltMap<String, JsonObject?>>? _objects;
  ListBuilder<BuiltMap<String, JsonObject?>> get objects =>
      _$this._objects ??= ListBuilder<BuiltMap<String, JsonObject?>>();
  set objects(ListBuilder<BuiltMap<String, JsonObject?>>? objects) =>
      _$this._objects = objects;

  StixBundleBuilder() {
    StixBundle._defaults(this);
  }

  StixBundleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _id = $v.id;
      _objects = $v.objects.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StixBundle other) {
    _$v = other as _$StixBundle;
  }

  @override
  void update(void Function(StixBundleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StixBundle build() => _build();

  _$StixBundle _build() {
    _$StixBundle _$result;
    try {
      _$result = _$v ??
          _$StixBundle._(
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'StixBundle', 'type'),
            id: BuiltValueNullFieldError.checkNotNull(id, r'StixBundle', 'id'),
            objects: objects.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'objects';
        objects.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'StixBundle', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
