// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'compact_message.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CompactMessageN0Enum _$compactMessageN0Enum_number1 =
    const CompactMessageN0Enum._('number1');

CompactMessageN0Enum _$compactMessageN0EnumValueOf(String name) {
  switch (name) {
    case 'number1':
      return _$compactMessageN0Enum_number1;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CompactMessageN0Enum> _$compactMessageN0EnumValues =
    BuiltSet<CompactMessageN0Enum>(const <CompactMessageN0Enum>[
      _$compactMessageN0Enum_number1,
    ]);

Serializer<CompactMessageN0Enum> _$compactMessageN0EnumSerializer =
    _$CompactMessageN0EnumSerializer();

class _$CompactMessageN0EnumSerializer
    implements PrimitiveSerializer<CompactMessageN0Enum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number1': 1,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    1: 'number1',
  };

  @override
  final Iterable<Type> types = const <Type>[CompactMessageN0Enum];
  @override
  final String wireName = 'CompactMessageN0Enum';

  @override
  Object serialize(
    Serializers serializers,
    CompactMessageN0Enum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  CompactMessageN0Enum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => CompactMessageN0Enum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$CompactMessage extends CompactMessage {
  @override
  final CompactMessageN0Enum n0;
  @override
  final int n1;
  @override
  final String? n2;
  @override
  final int n3;
  @override
  final String? n4;
  @override
  final int? n5;
  @override
  final int? n6;
  @override
  final int n7;
  @override
  final String? n8;
  @override
  final String? n9;
  @override
  final String? n10;
  @override
  final String? n11;
  @override
  final int? n12;

  factory _$CompactMessage([void Function(CompactMessageBuilder)? updates]) =>
      (CompactMessageBuilder()..update(updates))._build();

  _$CompactMessage._({
    required this.n0,
    required this.n1,
    this.n2,
    required this.n3,
    this.n4,
    this.n5,
    this.n6,
    required this.n7,
    this.n8,
    this.n9,
    this.n10,
    this.n11,
    this.n12,
  }) : super._();
  @override
  CompactMessage rebuild(void Function(CompactMessageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompactMessageBuilder toBuilder() => CompactMessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CompactMessage &&
        n0 == other.n0 &&
        n1 == other.n1 &&
        n2 == other.n2 &&
        n3 == other.n3 &&
        n4 == other.n4 &&
        n5 == other.n5 &&
        n6 == other.n6 &&
        n7 == other.n7 &&
        n8 == other.n8 &&
        n9 == other.n9 &&
        n10 == other.n10 &&
        n11 == other.n11 &&
        n12 == other.n12;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, n0.hashCode);
    _$hash = $jc(_$hash, n1.hashCode);
    _$hash = $jc(_$hash, n2.hashCode);
    _$hash = $jc(_$hash, n3.hashCode);
    _$hash = $jc(_$hash, n4.hashCode);
    _$hash = $jc(_$hash, n5.hashCode);
    _$hash = $jc(_$hash, n6.hashCode);
    _$hash = $jc(_$hash, n7.hashCode);
    _$hash = $jc(_$hash, n8.hashCode);
    _$hash = $jc(_$hash, n9.hashCode);
    _$hash = $jc(_$hash, n10.hashCode);
    _$hash = $jc(_$hash, n11.hashCode);
    _$hash = $jc(_$hash, n12.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CompactMessage')
          ..add('n0', n0)
          ..add('n1', n1)
          ..add('n2', n2)
          ..add('n3', n3)
          ..add('n4', n4)
          ..add('n5', n5)
          ..add('n6', n6)
          ..add('n7', n7)
          ..add('n8', n8)
          ..add('n9', n9)
          ..add('n10', n10)
          ..add('n11', n11)
          ..add('n12', n12))
        .toString();
  }
}

class CompactMessageBuilder
    implements Builder<CompactMessage, CompactMessageBuilder> {
  _$CompactMessage? _$v;

  CompactMessageN0Enum? _n0;
  CompactMessageN0Enum? get n0 => _$this._n0;
  set n0(CompactMessageN0Enum? n0) => _$this._n0 = n0;

  int? _n1;
  int? get n1 => _$this._n1;
  set n1(int? n1) => _$this._n1 = n1;

  String? _n2;
  String? get n2 => _$this._n2;
  set n2(String? n2) => _$this._n2 = n2;

  int? _n3;
  int? get n3 => _$this._n3;
  set n3(int? n3) => _$this._n3 = n3;

  String? _n4;
  String? get n4 => _$this._n4;
  set n4(String? n4) => _$this._n4 = n4;

  int? _n5;
  int? get n5 => _$this._n5;
  set n5(int? n5) => _$this._n5 = n5;

  int? _n6;
  int? get n6 => _$this._n6;
  set n6(int? n6) => _$this._n6 = n6;

  int? _n7;
  int? get n7 => _$this._n7;
  set n7(int? n7) => _$this._n7 = n7;

  String? _n8;
  String? get n8 => _$this._n8;
  set n8(String? n8) => _$this._n8 = n8;

  String? _n9;
  String? get n9 => _$this._n9;
  set n9(String? n9) => _$this._n9 = n9;

  String? _n10;
  String? get n10 => _$this._n10;
  set n10(String? n10) => _$this._n10 = n10;

  String? _n11;
  String? get n11 => _$this._n11;
  set n11(String? n11) => _$this._n11 = n11;

  int? _n12;
  int? get n12 => _$this._n12;
  set n12(int? n12) => _$this._n12 = n12;

  CompactMessageBuilder() {
    CompactMessage._defaults(this);
  }

  CompactMessageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _n0 = $v.n0;
      _n1 = $v.n1;
      _n2 = $v.n2;
      _n3 = $v.n3;
      _n4 = $v.n4;
      _n5 = $v.n5;
      _n6 = $v.n6;
      _n7 = $v.n7;
      _n8 = $v.n8;
      _n9 = $v.n9;
      _n10 = $v.n10;
      _n11 = $v.n11;
      _n12 = $v.n12;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CompactMessage other) {
    _$v = other as _$CompactMessage;
  }

  @override
  void update(void Function(CompactMessageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CompactMessage build() => _build();

  _$CompactMessage _build() {
    final _$result =
        _$v ??
        _$CompactMessage._(
          n0: BuiltValueNullFieldError.checkNotNull(
            n0,
            r'CompactMessage',
            'n0',
          ),
          n1: BuiltValueNullFieldError.checkNotNull(
            n1,
            r'CompactMessage',
            'n1',
          ),
          n2: n2,
          n3: BuiltValueNullFieldError.checkNotNull(
            n3,
            r'CompactMessage',
            'n3',
          ),
          n4: n4,
          n5: n5,
          n6: n6,
          n7: BuiltValueNullFieldError.checkNotNull(
            n7,
            r'CompactMessage',
            'n7',
          ),
          n8: n8,
          n9: n9,
          n10: n10,
          n11: n11,
          n12: n12,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
