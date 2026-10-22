// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'declared_observability_kinds_value_area.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DeclaredObservabilityKindsValueAreaTypeEnum
_$declaredObservabilityKindsValueAreaTypeEnum_global =
    const DeclaredObservabilityKindsValueAreaTypeEnum._('global');
const DeclaredObservabilityKindsValueAreaTypeEnum
_$declaredObservabilityKindsValueAreaTypeEnum_bbox =
    const DeclaredObservabilityKindsValueAreaTypeEnum._('bbox');
const DeclaredObservabilityKindsValueAreaTypeEnum
_$declaredObservabilityKindsValueAreaTypeEnum_regions =
    const DeclaredObservabilityKindsValueAreaTypeEnum._('regions');

DeclaredObservabilityKindsValueAreaTypeEnum
_$declaredObservabilityKindsValueAreaTypeEnumValueOf(String name) {
  switch (name) {
    case 'global':
      return _$declaredObservabilityKindsValueAreaTypeEnum_global;
    case 'bbox':
      return _$declaredObservabilityKindsValueAreaTypeEnum_bbox;
    case 'regions':
      return _$declaredObservabilityKindsValueAreaTypeEnum_regions;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DeclaredObservabilityKindsValueAreaTypeEnum>
_$declaredObservabilityKindsValueAreaTypeEnumValues =
    BuiltSet<DeclaredObservabilityKindsValueAreaTypeEnum>(
      const <DeclaredObservabilityKindsValueAreaTypeEnum>[
        _$declaredObservabilityKindsValueAreaTypeEnum_global,
        _$declaredObservabilityKindsValueAreaTypeEnum_bbox,
        _$declaredObservabilityKindsValueAreaTypeEnum_regions,
      ],
    );

Serializer<DeclaredObservabilityKindsValueAreaTypeEnum>
_$declaredObservabilityKindsValueAreaTypeEnumSerializer =
    _$DeclaredObservabilityKindsValueAreaTypeEnumSerializer();

class _$DeclaredObservabilityKindsValueAreaTypeEnumSerializer
    implements
        PrimitiveSerializer<DeclaredObservabilityKindsValueAreaTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'global': 'global',
    'bbox': 'bbox',
    'regions': 'regions',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'global': 'global',
    'bbox': 'bbox',
    'regions': 'regions',
  };

  @override
  final Iterable<Type> types = const <Type>[
    DeclaredObservabilityKindsValueAreaTypeEnum,
  ];
  @override
  final String wireName = 'DeclaredObservabilityKindsValueAreaTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    DeclaredObservabilityKindsValueAreaTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  DeclaredObservabilityKindsValueAreaTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => DeclaredObservabilityKindsValueAreaTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$DeclaredObservabilityKindsValueArea
    extends DeclaredObservabilityKindsValueArea {
  @override
  final DeclaredObservabilityKindsValueAreaTypeEnum type;
  @override
  final BuiltList<num>? bbox;
  @override
  final BuiltList<String>? regionCodes;

  factory _$DeclaredObservabilityKindsValueArea([
    void Function(DeclaredObservabilityKindsValueAreaBuilder)? updates,
  ]) =>
      (DeclaredObservabilityKindsValueAreaBuilder()..update(updates))._build();

  _$DeclaredObservabilityKindsValueArea._({
    required this.type,
    this.bbox,
    this.regionCodes,
  }) : super._();
  @override
  DeclaredObservabilityKindsValueArea rebuild(
    void Function(DeclaredObservabilityKindsValueAreaBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DeclaredObservabilityKindsValueAreaBuilder toBuilder() =>
      DeclaredObservabilityKindsValueAreaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeclaredObservabilityKindsValueArea &&
        type == other.type &&
        bbox == other.bbox &&
        regionCodes == other.regionCodes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, bbox.hashCode);
    _$hash = $jc(_$hash, regionCodes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeclaredObservabilityKindsValueArea')
          ..add('type', type)
          ..add('bbox', bbox)
          ..add('regionCodes', regionCodes))
        .toString();
  }
}

class DeclaredObservabilityKindsValueAreaBuilder
    implements
        Builder<
          DeclaredObservabilityKindsValueArea,
          DeclaredObservabilityKindsValueAreaBuilder
        > {
  _$DeclaredObservabilityKindsValueArea? _$v;

  DeclaredObservabilityKindsValueAreaTypeEnum? _type;
  DeclaredObservabilityKindsValueAreaTypeEnum? get type => _$this._type;
  set type(DeclaredObservabilityKindsValueAreaTypeEnum? type) =>
      _$this._type = type;

  ListBuilder<num>? _bbox;
  ListBuilder<num> get bbox => _$this._bbox ??= ListBuilder<num>();
  set bbox(ListBuilder<num>? bbox) => _$this._bbox = bbox;

  ListBuilder<String>? _regionCodes;
  ListBuilder<String> get regionCodes =>
      _$this._regionCodes ??= ListBuilder<String>();
  set regionCodes(ListBuilder<String>? regionCodes) =>
      _$this._regionCodes = regionCodes;

  DeclaredObservabilityKindsValueAreaBuilder() {
    DeclaredObservabilityKindsValueArea._defaults(this);
  }

  DeclaredObservabilityKindsValueAreaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _bbox = $v.bbox?.toBuilder();
      _regionCodes = $v.regionCodes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeclaredObservabilityKindsValueArea other) {
    _$v = other as _$DeclaredObservabilityKindsValueArea;
  }

  @override
  void update(
    void Function(DeclaredObservabilityKindsValueAreaBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  DeclaredObservabilityKindsValueArea build() => _build();

  _$DeclaredObservabilityKindsValueArea _build() {
    _$DeclaredObservabilityKindsValueArea _$result;
    try {
      _$result =
          _$v ??
          _$DeclaredObservabilityKindsValueArea._(
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'DeclaredObservabilityKindsValueArea',
              'type',
            ),
            bbox: _bbox?.build(),
            regionCodes: _regionCodes?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'bbox';
        _bbox?.build();
        _$failedField = 'regionCodes';
        _regionCodes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'DeclaredObservabilityKindsValueArea',
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
