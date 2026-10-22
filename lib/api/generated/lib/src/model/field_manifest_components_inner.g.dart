// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field_manifest_components_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FieldManifestComponentsInnerNameEnum
    _$fieldManifestComponentsInnerNameEnum_u =
    const FieldManifestComponentsInnerNameEnum._('u');
const FieldManifestComponentsInnerNameEnum
    _$fieldManifestComponentsInnerNameEnum_v =
    const FieldManifestComponentsInnerNameEnum._('v');

FieldManifestComponentsInnerNameEnum
    _$fieldManifestComponentsInnerNameEnumValueOf(String name) {
  switch (name) {
    case 'u':
      return _$fieldManifestComponentsInnerNameEnum_u;
    case 'v':
      return _$fieldManifestComponentsInnerNameEnum_v;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FieldManifestComponentsInnerNameEnum>
    _$fieldManifestComponentsInnerNameEnumValues = BuiltSet<
        FieldManifestComponentsInnerNameEnum>(const <FieldManifestComponentsInnerNameEnum>[
  _$fieldManifestComponentsInnerNameEnum_u,
  _$fieldManifestComponentsInnerNameEnum_v,
]);

Serializer<FieldManifestComponentsInnerNameEnum>
    _$fieldManifestComponentsInnerNameEnumSerializer =
    _$FieldManifestComponentsInnerNameEnumSerializer();

class _$FieldManifestComponentsInnerNameEnumSerializer
    implements PrimitiveSerializer<FieldManifestComponentsInnerNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'u': 'u',
    'v': 'v',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'u': 'u',
    'v': 'v',
  };

  @override
  final Iterable<Type> types = const <Type>[
    FieldManifestComponentsInnerNameEnum
  ];
  @override
  final String wireName = 'FieldManifestComponentsInnerNameEnum';

  @override
  Object serialize(
          Serializers serializers, FieldManifestComponentsInnerNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  FieldManifestComponentsInnerNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      FieldManifestComponentsInnerNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$FieldManifestComponentsInner extends FieldManifestComponentsInner {
  @override
  final FieldManifestComponentsInnerNameEnum name;
  @override
  final int offset;

  factory _$FieldManifestComponentsInner(
          [void Function(FieldManifestComponentsInnerBuilder)? updates]) =>
      (FieldManifestComponentsInnerBuilder()..update(updates))._build();

  _$FieldManifestComponentsInner._({required this.name, required this.offset})
      : super._();
  @override
  FieldManifestComponentsInner rebuild(
          void Function(FieldManifestComponentsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FieldManifestComponentsInnerBuilder toBuilder() =>
      FieldManifestComponentsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FieldManifestComponentsInner &&
        name == other.name &&
        offset == other.offset;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, offset.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FieldManifestComponentsInner')
          ..add('name', name)
          ..add('offset', offset))
        .toString();
  }
}

class FieldManifestComponentsInnerBuilder
    implements
        Builder<FieldManifestComponentsInner,
            FieldManifestComponentsInnerBuilder> {
  _$FieldManifestComponentsInner? _$v;

  FieldManifestComponentsInnerNameEnum? _name;
  FieldManifestComponentsInnerNameEnum? get name => _$this._name;
  set name(FieldManifestComponentsInnerNameEnum? name) => _$this._name = name;

  int? _offset;
  int? get offset => _$this._offset;
  set offset(int? offset) => _$this._offset = offset;

  FieldManifestComponentsInnerBuilder() {
    FieldManifestComponentsInner._defaults(this);
  }

  FieldManifestComponentsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _offset = $v.offset;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FieldManifestComponentsInner other) {
    _$v = other as _$FieldManifestComponentsInner;
  }

  @override
  void update(void Function(FieldManifestComponentsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FieldManifestComponentsInner build() => _build();

  _$FieldManifestComponentsInner _build() {
    final _$result = _$v ??
        _$FieldManifestComponentsInner._(
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'FieldManifestComponentsInner', 'name'),
          offset: BuiltValueNullFieldError.checkNotNull(
              offset, r'FieldManifestComponentsInner', 'offset'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
