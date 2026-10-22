// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'benchmark_case.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BenchmarkCaseSource_Enum _$benchmarkCaseSourceEnum_operator_ =
    const BenchmarkCaseSource_Enum._('operator_');
const BenchmarkCaseSource_Enum _$benchmarkCaseSourceEnum_agent =
    const BenchmarkCaseSource_Enum._('agent');
const BenchmarkCaseSource_Enum _$benchmarkCaseSourceEnum_auto =
    const BenchmarkCaseSource_Enum._('auto');

BenchmarkCaseSource_Enum _$benchmarkCaseSourceEnumValueOf(String name) {
  switch (name) {
    case 'operator_':
      return _$benchmarkCaseSourceEnum_operator_;
    case 'agent':
      return _$benchmarkCaseSourceEnum_agent;
    case 'auto':
      return _$benchmarkCaseSourceEnum_auto;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<BenchmarkCaseSource_Enum> _$benchmarkCaseSourceEnumValues =
    BuiltSet<BenchmarkCaseSource_Enum>(const <BenchmarkCaseSource_Enum>[
      _$benchmarkCaseSourceEnum_operator_,
      _$benchmarkCaseSourceEnum_agent,
      _$benchmarkCaseSourceEnum_auto,
    ]);

Serializer<BenchmarkCaseSource_Enum> _$benchmarkCaseSourceEnumSerializer =
    _$BenchmarkCaseSource_EnumSerializer();

class _$BenchmarkCaseSource_EnumSerializer
    implements PrimitiveSerializer<BenchmarkCaseSource_Enum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'operator_': 'operator',
    'agent': 'agent',
    'auto': 'auto',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'operator': 'operator_',
    'agent': 'agent',
    'auto': 'auto',
  };

  @override
  final Iterable<Type> types = const <Type>[BenchmarkCaseSource_Enum];
  @override
  final String wireName = 'BenchmarkCaseSource_Enum';

  @override
  Object serialize(
    Serializers serializers,
    BenchmarkCaseSource_Enum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  BenchmarkCaseSource_Enum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => BenchmarkCaseSource_Enum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$BenchmarkCase extends BenchmarkCase {
  @override
  final String id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final DateTime windowFrom;
  @override
  final DateTime windowTo;
  @override
  final BuiltList<String> regionCodes;
  @override
  final BenchmarkCaseExpectations expectations;
  @override
  final BenchmarkCaseSource_Enum source_;
  @override
  final String? createdBy;
  @override
  final DateTime createdAt;

  factory _$BenchmarkCase([void Function(BenchmarkCaseBuilder)? updates]) =>
      (BenchmarkCaseBuilder()..update(updates))._build();

  _$BenchmarkCase._({
    required this.id,
    required this.name,
    this.description,
    required this.windowFrom,
    required this.windowTo,
    required this.regionCodes,
    required this.expectations,
    required this.source_,
    this.createdBy,
    required this.createdAt,
  }) : super._();
  @override
  BenchmarkCase rebuild(void Function(BenchmarkCaseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BenchmarkCaseBuilder toBuilder() => BenchmarkCaseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BenchmarkCase &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        windowFrom == other.windowFrom &&
        windowTo == other.windowTo &&
        regionCodes == other.regionCodes &&
        expectations == other.expectations &&
        source_ == other.source_ &&
        createdBy == other.createdBy &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, windowFrom.hashCode);
    _$hash = $jc(_$hash, windowTo.hashCode);
    _$hash = $jc(_$hash, regionCodes.hashCode);
    _$hash = $jc(_$hash, expectations.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BenchmarkCase')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('windowFrom', windowFrom)
          ..add('windowTo', windowTo)
          ..add('regionCodes', regionCodes)
          ..add('expectations', expectations)
          ..add('source_', source_)
          ..add('createdBy', createdBy)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class BenchmarkCaseBuilder
    implements Builder<BenchmarkCase, BenchmarkCaseBuilder> {
  _$BenchmarkCase? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DateTime? _windowFrom;
  DateTime? get windowFrom => _$this._windowFrom;
  set windowFrom(DateTime? windowFrom) => _$this._windowFrom = windowFrom;

  DateTime? _windowTo;
  DateTime? get windowTo => _$this._windowTo;
  set windowTo(DateTime? windowTo) => _$this._windowTo = windowTo;

  ListBuilder<String>? _regionCodes;
  ListBuilder<String> get regionCodes =>
      _$this._regionCodes ??= ListBuilder<String>();
  set regionCodes(ListBuilder<String>? regionCodes) =>
      _$this._regionCodes = regionCodes;

  BenchmarkCaseExpectationsBuilder? _expectations;
  BenchmarkCaseExpectationsBuilder get expectations =>
      _$this._expectations ??= BenchmarkCaseExpectationsBuilder();
  set expectations(BenchmarkCaseExpectationsBuilder? expectations) =>
      _$this._expectations = expectations;

  BenchmarkCaseSource_Enum? _source_;
  BenchmarkCaseSource_Enum? get source_ => _$this._source_;
  set source_(BenchmarkCaseSource_Enum? source_) => _$this._source_ = source_;

  String? _createdBy;
  String? get createdBy => _$this._createdBy;
  set createdBy(String? createdBy) => _$this._createdBy = createdBy;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  BenchmarkCaseBuilder() {
    BenchmarkCase._defaults(this);
  }

  BenchmarkCaseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _windowFrom = $v.windowFrom;
      _windowTo = $v.windowTo;
      _regionCodes = $v.regionCodes.toBuilder();
      _expectations = $v.expectations.toBuilder();
      _source_ = $v.source_;
      _createdBy = $v.createdBy;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BenchmarkCase other) {
    _$v = other as _$BenchmarkCase;
  }

  @override
  void update(void Function(BenchmarkCaseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BenchmarkCase build() => _build();

  _$BenchmarkCase _build() {
    _$BenchmarkCase _$result;
    try {
      _$result =
          _$v ??
          _$BenchmarkCase._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'BenchmarkCase',
              'id',
            ),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'BenchmarkCase',
              'name',
            ),
            description: description,
            windowFrom: BuiltValueNullFieldError.checkNotNull(
              windowFrom,
              r'BenchmarkCase',
              'windowFrom',
            ),
            windowTo: BuiltValueNullFieldError.checkNotNull(
              windowTo,
              r'BenchmarkCase',
              'windowTo',
            ),
            regionCodes: regionCodes.build(),
            expectations: expectations.build(),
            source_: BuiltValueNullFieldError.checkNotNull(
              source_,
              r'BenchmarkCase',
              'source_',
            ),
            createdBy: createdBy,
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'BenchmarkCase',
              'createdAt',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'regionCodes';
        regionCodes.build();
        _$failedField = 'expectations';
        expectations.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'BenchmarkCase',
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
