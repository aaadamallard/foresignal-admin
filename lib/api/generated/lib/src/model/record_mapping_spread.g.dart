// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_mapping_spread.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RecordMappingSpreadTypeEnum _$recordMappingSpreadTypeEnum_number =
    const RecordMappingSpreadTypeEnum._('number');
const RecordMappingSpreadTypeEnum _$recordMappingSpreadTypeEnum_integer =
    const RecordMappingSpreadTypeEnum._('integer');
const RecordMappingSpreadTypeEnum _$recordMappingSpreadTypeEnum_string =
    const RecordMappingSpreadTypeEnum._('string');
const RecordMappingSpreadTypeEnum _$recordMappingSpreadTypeEnum_boolean =
    const RecordMappingSpreadTypeEnum._('boolean');

RecordMappingSpreadTypeEnum _$recordMappingSpreadTypeEnumValueOf(String name) {
  switch (name) {
    case 'number':
      return _$recordMappingSpreadTypeEnum_number;
    case 'integer':
      return _$recordMappingSpreadTypeEnum_integer;
    case 'string':
      return _$recordMappingSpreadTypeEnum_string;
    case 'boolean':
      return _$recordMappingSpreadTypeEnum_boolean;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RecordMappingSpreadTypeEnum>
_$recordMappingSpreadTypeEnumValues =
    BuiltSet<RecordMappingSpreadTypeEnum>(const <RecordMappingSpreadTypeEnum>[
      _$recordMappingSpreadTypeEnum_number,
      _$recordMappingSpreadTypeEnum_integer,
      _$recordMappingSpreadTypeEnum_string,
      _$recordMappingSpreadTypeEnum_boolean,
    ]);

Serializer<RecordMappingSpreadTypeEnum>
_$recordMappingSpreadTypeEnumSerializer =
    _$RecordMappingSpreadTypeEnumSerializer();

class _$RecordMappingSpreadTypeEnumSerializer
    implements PrimitiveSerializer<RecordMappingSpreadTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number': 'number',
    'integer': 'integer',
    'string': 'string',
    'boolean': 'boolean',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'number': 'number',
    'integer': 'integer',
    'string': 'string',
    'boolean': 'boolean',
  };

  @override
  final Iterable<Type> types = const <Type>[RecordMappingSpreadTypeEnum];
  @override
  final String wireName = 'RecordMappingSpreadTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    RecordMappingSpreadTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RecordMappingSpreadTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RecordMappingSpreadTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$RecordMappingSpread extends RecordMappingSpread {
  @override
  final String path;
  @override
  final RecordMappingSpreadTypeEnum? type;
  @override
  final int? max;

  factory _$RecordMappingSpread([
    void Function(RecordMappingSpreadBuilder)? updates,
  ]) => (RecordMappingSpreadBuilder()..update(updates))._build();

  _$RecordMappingSpread._({required this.path, this.type, this.max})
    : super._();
  @override
  RecordMappingSpread rebuild(
    void Function(RecordMappingSpreadBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RecordMappingSpreadBuilder toBuilder() =>
      RecordMappingSpreadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecordMappingSpread &&
        path == other.path &&
        type == other.type &&
        max == other.max;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, max.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RecordMappingSpread')
          ..add('path', path)
          ..add('type', type)
          ..add('max', max))
        .toString();
  }
}

class RecordMappingSpreadBuilder
    implements Builder<RecordMappingSpread, RecordMappingSpreadBuilder> {
  _$RecordMappingSpread? _$v;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  RecordMappingSpreadTypeEnum? _type;
  RecordMappingSpreadTypeEnum? get type => _$this._type;
  set type(RecordMappingSpreadTypeEnum? type) => _$this._type = type;

  int? _max;
  int? get max => _$this._max;
  set max(int? max) => _$this._max = max;

  RecordMappingSpreadBuilder() {
    RecordMappingSpread._defaults(this);
  }

  RecordMappingSpreadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _path = $v.path;
      _type = $v.type;
      _max = $v.max;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecordMappingSpread other) {
    _$v = other as _$RecordMappingSpread;
  }

  @override
  void update(void Function(RecordMappingSpreadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecordMappingSpread build() => _build();

  _$RecordMappingSpread _build() {
    final _$result =
        _$v ??
        _$RecordMappingSpread._(
          path: BuiltValueNullFieldError.checkNotNull(
            path,
            r'RecordMappingSpread',
            'path',
          ),
          type: type,
          max: max,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
