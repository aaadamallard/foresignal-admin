// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'benchmark_case_expectations_precursors_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BenchmarkCaseExpectationsPrecursorsInnerExpectedEnum
    _$benchmarkCaseExpectationsPrecursorsInnerExpectedEnum_validated =
    const BenchmarkCaseExpectationsPrecursorsInnerExpectedEnum._('validated');
const BenchmarkCaseExpectationsPrecursorsInnerExpectedEnum
    _$benchmarkCaseExpectationsPrecursorsInnerExpectedEnum_notValidated =
    const BenchmarkCaseExpectationsPrecursorsInnerExpectedEnum._(
        'notValidated');

BenchmarkCaseExpectationsPrecursorsInnerExpectedEnum
    _$benchmarkCaseExpectationsPrecursorsInnerExpectedEnumValueOf(String name) {
  switch (name) {
    case 'validated':
      return _$benchmarkCaseExpectationsPrecursorsInnerExpectedEnum_validated;
    case 'notValidated':
      return _$benchmarkCaseExpectationsPrecursorsInnerExpectedEnum_notValidated;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<BenchmarkCaseExpectationsPrecursorsInnerExpectedEnum>
    _$benchmarkCaseExpectationsPrecursorsInnerExpectedEnumValues = BuiltSet<
        BenchmarkCaseExpectationsPrecursorsInnerExpectedEnum>(const <BenchmarkCaseExpectationsPrecursorsInnerExpectedEnum>[
  _$benchmarkCaseExpectationsPrecursorsInnerExpectedEnum_validated,
  _$benchmarkCaseExpectationsPrecursorsInnerExpectedEnum_notValidated,
]);

Serializer<BenchmarkCaseExpectationsPrecursorsInnerExpectedEnum>
    _$benchmarkCaseExpectationsPrecursorsInnerExpectedEnumSerializer =
    _$BenchmarkCaseExpectationsPrecursorsInnerExpectedEnumSerializer();

class _$BenchmarkCaseExpectationsPrecursorsInnerExpectedEnumSerializer
    implements
        PrimitiveSerializer<
            BenchmarkCaseExpectationsPrecursorsInnerExpectedEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'validated': 'validated',
    'notValidated': 'not-validated',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'validated': 'validated',
    'not-validated': 'notValidated',
  };

  @override
  final Iterable<Type> types = const <Type>[
    BenchmarkCaseExpectationsPrecursorsInnerExpectedEnum
  ];
  @override
  final String wireName =
      'BenchmarkCaseExpectationsPrecursorsInnerExpectedEnum';

  @override
  Object serialize(Serializers serializers,
          BenchmarkCaseExpectationsPrecursorsInnerExpectedEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  BenchmarkCaseExpectationsPrecursorsInnerExpectedEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      BenchmarkCaseExpectationsPrecursorsInnerExpectedEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$BenchmarkCaseExpectationsPrecursorsInner
    extends BenchmarkCaseExpectationsPrecursorsInner {
  @override
  final String? precursorId;
  @override
  final String? leader;
  @override
  final String? follower;
  @override
  final BenchmarkCaseExpectationsPrecursorsInnerExpectedEnum expected;
  @override
  final num? lagHours;

  factory _$BenchmarkCaseExpectationsPrecursorsInner(
          [void Function(BenchmarkCaseExpectationsPrecursorsInnerBuilder)?
              updates]) =>
      (BenchmarkCaseExpectationsPrecursorsInnerBuilder()..update(updates))
          ._build();

  _$BenchmarkCaseExpectationsPrecursorsInner._(
      {this.precursorId,
      this.leader,
      this.follower,
      required this.expected,
      this.lagHours})
      : super._();
  @override
  BenchmarkCaseExpectationsPrecursorsInner rebuild(
          void Function(BenchmarkCaseExpectationsPrecursorsInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BenchmarkCaseExpectationsPrecursorsInnerBuilder toBuilder() =>
      BenchmarkCaseExpectationsPrecursorsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BenchmarkCaseExpectationsPrecursorsInner &&
        precursorId == other.precursorId &&
        leader == other.leader &&
        follower == other.follower &&
        expected == other.expected &&
        lagHours == other.lagHours;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, precursorId.hashCode);
    _$hash = $jc(_$hash, leader.hashCode);
    _$hash = $jc(_$hash, follower.hashCode);
    _$hash = $jc(_$hash, expected.hashCode);
    _$hash = $jc(_$hash, lagHours.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'BenchmarkCaseExpectationsPrecursorsInner')
          ..add('precursorId', precursorId)
          ..add('leader', leader)
          ..add('follower', follower)
          ..add('expected', expected)
          ..add('lagHours', lagHours))
        .toString();
  }
}

class BenchmarkCaseExpectationsPrecursorsInnerBuilder
    implements
        Builder<BenchmarkCaseExpectationsPrecursorsInner,
            BenchmarkCaseExpectationsPrecursorsInnerBuilder> {
  _$BenchmarkCaseExpectationsPrecursorsInner? _$v;

  String? _precursorId;
  String? get precursorId => _$this._precursorId;
  set precursorId(String? precursorId) => _$this._precursorId = precursorId;

  String? _leader;
  String? get leader => _$this._leader;
  set leader(String? leader) => _$this._leader = leader;

  String? _follower;
  String? get follower => _$this._follower;
  set follower(String? follower) => _$this._follower = follower;

  BenchmarkCaseExpectationsPrecursorsInnerExpectedEnum? _expected;
  BenchmarkCaseExpectationsPrecursorsInnerExpectedEnum? get expected =>
      _$this._expected;
  set expected(
          BenchmarkCaseExpectationsPrecursorsInnerExpectedEnum? expected) =>
      _$this._expected = expected;

  num? _lagHours;
  num? get lagHours => _$this._lagHours;
  set lagHours(num? lagHours) => _$this._lagHours = lagHours;

  BenchmarkCaseExpectationsPrecursorsInnerBuilder() {
    BenchmarkCaseExpectationsPrecursorsInner._defaults(this);
  }

  BenchmarkCaseExpectationsPrecursorsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _precursorId = $v.precursorId;
      _leader = $v.leader;
      _follower = $v.follower;
      _expected = $v.expected;
      _lagHours = $v.lagHours;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BenchmarkCaseExpectationsPrecursorsInner other) {
    _$v = other as _$BenchmarkCaseExpectationsPrecursorsInner;
  }

  @override
  void update(
      void Function(BenchmarkCaseExpectationsPrecursorsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BenchmarkCaseExpectationsPrecursorsInner build() => _build();

  _$BenchmarkCaseExpectationsPrecursorsInner _build() {
    final _$result = _$v ??
        _$BenchmarkCaseExpectationsPrecursorsInner._(
          precursorId: precursorId,
          leader: leader,
          follower: follower,
          expected: BuiltValueNullFieldError.checkNotNull(expected,
              r'BenchmarkCaseExpectationsPrecursorsInner', 'expected'),
          lagHours: lagHours,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
