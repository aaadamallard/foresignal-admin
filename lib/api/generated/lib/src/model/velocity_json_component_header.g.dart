// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'velocity_json_component_header.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const VelocityJsonComponentHeaderParameterCategoryEnum
_$velocityJsonComponentHeaderParameterCategoryEnum_number2 =
    const VelocityJsonComponentHeaderParameterCategoryEnum._('number2');
const VelocityJsonComponentHeaderParameterCategoryEnum
_$velocityJsonComponentHeaderParameterCategoryEnum_unknownDefaultOpenApi =
    const VelocityJsonComponentHeaderParameterCategoryEnum._(
      'unknownDefaultOpenApi',
    );

VelocityJsonComponentHeaderParameterCategoryEnum
_$velocityJsonComponentHeaderParameterCategoryEnumValueOf(String name) {
  switch (name) {
    case 'number2':
      return _$velocityJsonComponentHeaderParameterCategoryEnum_number2;
    case 'unknownDefaultOpenApi':
      return _$velocityJsonComponentHeaderParameterCategoryEnum_unknownDefaultOpenApi;
    default:
      return _$velocityJsonComponentHeaderParameterCategoryEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<VelocityJsonComponentHeaderParameterCategoryEnum>
_$velocityJsonComponentHeaderParameterCategoryEnumValues =
    BuiltSet<VelocityJsonComponentHeaderParameterCategoryEnum>(const <
      VelocityJsonComponentHeaderParameterCategoryEnum
    >[
      _$velocityJsonComponentHeaderParameterCategoryEnum_number2,
      _$velocityJsonComponentHeaderParameterCategoryEnum_unknownDefaultOpenApi,
    ]);

const VelocityJsonComponentHeaderParameterNumberEnum
_$velocityJsonComponentHeaderParameterNumberEnum_number2 =
    const VelocityJsonComponentHeaderParameterNumberEnum._('number2');
const VelocityJsonComponentHeaderParameterNumberEnum
_$velocityJsonComponentHeaderParameterNumberEnum_number3 =
    const VelocityJsonComponentHeaderParameterNumberEnum._('number3');
const VelocityJsonComponentHeaderParameterNumberEnum
_$velocityJsonComponentHeaderParameterNumberEnum_unknownDefaultOpenApi =
    const VelocityJsonComponentHeaderParameterNumberEnum._(
      'unknownDefaultOpenApi',
    );

VelocityJsonComponentHeaderParameterNumberEnum
_$velocityJsonComponentHeaderParameterNumberEnumValueOf(String name) {
  switch (name) {
    case 'number2':
      return _$velocityJsonComponentHeaderParameterNumberEnum_number2;
    case 'number3':
      return _$velocityJsonComponentHeaderParameterNumberEnum_number3;
    case 'unknownDefaultOpenApi':
      return _$velocityJsonComponentHeaderParameterNumberEnum_unknownDefaultOpenApi;
    default:
      return _$velocityJsonComponentHeaderParameterNumberEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<VelocityJsonComponentHeaderParameterNumberEnum>
_$velocityJsonComponentHeaderParameterNumberEnumValues =
    BuiltSet<VelocityJsonComponentHeaderParameterNumberEnum>(
      const <VelocityJsonComponentHeaderParameterNumberEnum>[
        _$velocityJsonComponentHeaderParameterNumberEnum_number2,
        _$velocityJsonComponentHeaderParameterNumberEnum_number3,
        _$velocityJsonComponentHeaderParameterNumberEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<VelocityJsonComponentHeaderParameterCategoryEnum>
_$velocityJsonComponentHeaderParameterCategoryEnumSerializer =
    _$VelocityJsonComponentHeaderParameterCategoryEnumSerializer();
Serializer<VelocityJsonComponentHeaderParameterNumberEnum>
_$velocityJsonComponentHeaderParameterNumberEnumSerializer =
    _$VelocityJsonComponentHeaderParameterNumberEnumSerializer();

class _$VelocityJsonComponentHeaderParameterCategoryEnumSerializer
    implements
        PrimitiveSerializer<VelocityJsonComponentHeaderParameterCategoryEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number2': 2,
    'unknownDefaultOpenApi': 11184809,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    2: 'number2',
    11184809: 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    VelocityJsonComponentHeaderParameterCategoryEnum,
  ];
  @override
  final String wireName = 'VelocityJsonComponentHeaderParameterCategoryEnum';

  @override
  Object serialize(
    Serializers serializers,
    VelocityJsonComponentHeaderParameterCategoryEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  VelocityJsonComponentHeaderParameterCategoryEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => VelocityJsonComponentHeaderParameterCategoryEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$VelocityJsonComponentHeaderParameterNumberEnumSerializer
    implements
        PrimitiveSerializer<VelocityJsonComponentHeaderParameterNumberEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number2': 2,
    'number3': 3,
    'unknownDefaultOpenApi': 11184809,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    2: 'number2',
    3: 'number3',
    11184809: 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    VelocityJsonComponentHeaderParameterNumberEnum,
  ];
  @override
  final String wireName = 'VelocityJsonComponentHeaderParameterNumberEnum';

  @override
  Object serialize(
    Serializers serializers,
    VelocityJsonComponentHeaderParameterNumberEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  VelocityJsonComponentHeaderParameterNumberEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => VelocityJsonComponentHeaderParameterNumberEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$VelocityJsonComponentHeader extends VelocityJsonComponentHeader {
  @override
  final VelocityJsonComponentHeaderParameterCategoryEnum parameterCategory;
  @override
  final VelocityJsonComponentHeaderParameterNumberEnum parameterNumber;
  @override
  final num lo1;
  @override
  final num la1;
  @override
  final num lo2;
  @override
  final num la2;
  @override
  final num dx;
  @override
  final num dy;
  @override
  final int nx;
  @override
  final int ny;
  @override
  final DateTime refTime;
  @override
  final int forecastTime;

  factory _$VelocityJsonComponentHeader([
    void Function(VelocityJsonComponentHeaderBuilder)? updates,
  ]) => (VelocityJsonComponentHeaderBuilder()..update(updates))._build();

  _$VelocityJsonComponentHeader._({
    required this.parameterCategory,
    required this.parameterNumber,
    required this.lo1,
    required this.la1,
    required this.lo2,
    required this.la2,
    required this.dx,
    required this.dy,
    required this.nx,
    required this.ny,
    required this.refTime,
    required this.forecastTime,
  }) : super._();
  @override
  VelocityJsonComponentHeader rebuild(
    void Function(VelocityJsonComponentHeaderBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  VelocityJsonComponentHeaderBuilder toBuilder() =>
      VelocityJsonComponentHeaderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VelocityJsonComponentHeader &&
        parameterCategory == other.parameterCategory &&
        parameterNumber == other.parameterNumber &&
        lo1 == other.lo1 &&
        la1 == other.la1 &&
        lo2 == other.lo2 &&
        la2 == other.la2 &&
        dx == other.dx &&
        dy == other.dy &&
        nx == other.nx &&
        ny == other.ny &&
        refTime == other.refTime &&
        forecastTime == other.forecastTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, parameterCategory.hashCode);
    _$hash = $jc(_$hash, parameterNumber.hashCode);
    _$hash = $jc(_$hash, lo1.hashCode);
    _$hash = $jc(_$hash, la1.hashCode);
    _$hash = $jc(_$hash, lo2.hashCode);
    _$hash = $jc(_$hash, la2.hashCode);
    _$hash = $jc(_$hash, dx.hashCode);
    _$hash = $jc(_$hash, dy.hashCode);
    _$hash = $jc(_$hash, nx.hashCode);
    _$hash = $jc(_$hash, ny.hashCode);
    _$hash = $jc(_$hash, refTime.hashCode);
    _$hash = $jc(_$hash, forecastTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VelocityJsonComponentHeader')
          ..add('parameterCategory', parameterCategory)
          ..add('parameterNumber', parameterNumber)
          ..add('lo1', lo1)
          ..add('la1', la1)
          ..add('lo2', lo2)
          ..add('la2', la2)
          ..add('dx', dx)
          ..add('dy', dy)
          ..add('nx', nx)
          ..add('ny', ny)
          ..add('refTime', refTime)
          ..add('forecastTime', forecastTime))
        .toString();
  }
}

class VelocityJsonComponentHeaderBuilder
    implements
        Builder<
          VelocityJsonComponentHeader,
          VelocityJsonComponentHeaderBuilder
        > {
  _$VelocityJsonComponentHeader? _$v;

  VelocityJsonComponentHeaderParameterCategoryEnum? _parameterCategory;
  VelocityJsonComponentHeaderParameterCategoryEnum? get parameterCategory =>
      _$this._parameterCategory;
  set parameterCategory(
    VelocityJsonComponentHeaderParameterCategoryEnum? parameterCategory,
  ) => _$this._parameterCategory = parameterCategory;

  VelocityJsonComponentHeaderParameterNumberEnum? _parameterNumber;
  VelocityJsonComponentHeaderParameterNumberEnum? get parameterNumber =>
      _$this._parameterNumber;
  set parameterNumber(
    VelocityJsonComponentHeaderParameterNumberEnum? parameterNumber,
  ) => _$this._parameterNumber = parameterNumber;

  num? _lo1;
  num? get lo1 => _$this._lo1;
  set lo1(num? lo1) => _$this._lo1 = lo1;

  num? _la1;
  num? get la1 => _$this._la1;
  set la1(num? la1) => _$this._la1 = la1;

  num? _lo2;
  num? get lo2 => _$this._lo2;
  set lo2(num? lo2) => _$this._lo2 = lo2;

  num? _la2;
  num? get la2 => _$this._la2;
  set la2(num? la2) => _$this._la2 = la2;

  num? _dx;
  num? get dx => _$this._dx;
  set dx(num? dx) => _$this._dx = dx;

  num? _dy;
  num? get dy => _$this._dy;
  set dy(num? dy) => _$this._dy = dy;

  int? _nx;
  int? get nx => _$this._nx;
  set nx(int? nx) => _$this._nx = nx;

  int? _ny;
  int? get ny => _$this._ny;
  set ny(int? ny) => _$this._ny = ny;

  DateTime? _refTime;
  DateTime? get refTime => _$this._refTime;
  set refTime(DateTime? refTime) => _$this._refTime = refTime;

  int? _forecastTime;
  int? get forecastTime => _$this._forecastTime;
  set forecastTime(int? forecastTime) => _$this._forecastTime = forecastTime;

  VelocityJsonComponentHeaderBuilder() {
    VelocityJsonComponentHeader._defaults(this);
  }

  VelocityJsonComponentHeaderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _parameterCategory = $v.parameterCategory;
      _parameterNumber = $v.parameterNumber;
      _lo1 = $v.lo1;
      _la1 = $v.la1;
      _lo2 = $v.lo2;
      _la2 = $v.la2;
      _dx = $v.dx;
      _dy = $v.dy;
      _nx = $v.nx;
      _ny = $v.ny;
      _refTime = $v.refTime;
      _forecastTime = $v.forecastTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VelocityJsonComponentHeader other) {
    _$v = other as _$VelocityJsonComponentHeader;
  }

  @override
  void update(void Function(VelocityJsonComponentHeaderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VelocityJsonComponentHeader build() => _build();

  _$VelocityJsonComponentHeader _build() {
    final _$result =
        _$v ??
        _$VelocityJsonComponentHeader._(
          parameterCategory: BuiltValueNullFieldError.checkNotNull(
            parameterCategory,
            r'VelocityJsonComponentHeader',
            'parameterCategory',
          ),
          parameterNumber: BuiltValueNullFieldError.checkNotNull(
            parameterNumber,
            r'VelocityJsonComponentHeader',
            'parameterNumber',
          ),
          lo1: BuiltValueNullFieldError.checkNotNull(
            lo1,
            r'VelocityJsonComponentHeader',
            'lo1',
          ),
          la1: BuiltValueNullFieldError.checkNotNull(
            la1,
            r'VelocityJsonComponentHeader',
            'la1',
          ),
          lo2: BuiltValueNullFieldError.checkNotNull(
            lo2,
            r'VelocityJsonComponentHeader',
            'lo2',
          ),
          la2: BuiltValueNullFieldError.checkNotNull(
            la2,
            r'VelocityJsonComponentHeader',
            'la2',
          ),
          dx: BuiltValueNullFieldError.checkNotNull(
            dx,
            r'VelocityJsonComponentHeader',
            'dx',
          ),
          dy: BuiltValueNullFieldError.checkNotNull(
            dy,
            r'VelocityJsonComponentHeader',
            'dy',
          ),
          nx: BuiltValueNullFieldError.checkNotNull(
            nx,
            r'VelocityJsonComponentHeader',
            'nx',
          ),
          ny: BuiltValueNullFieldError.checkNotNull(
            ny,
            r'VelocityJsonComponentHeader',
            'ny',
          ),
          refTime: BuiltValueNullFieldError.checkNotNull(
            refTime,
            r'VelocityJsonComponentHeader',
            'refTime',
          ),
          forecastTime: BuiltValueNullFieldError.checkNotNull(
            forecastTime,
            r'VelocityJsonComponentHeader',
            'forecastTime',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
