// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intel_board_benchmarks_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IntelBoardBenchmarksInnerStatusEnum
_$intelBoardBenchmarksInnerStatusEnum_pass =
    const IntelBoardBenchmarksInnerStatusEnum._('pass');
const IntelBoardBenchmarksInnerStatusEnum
_$intelBoardBenchmarksInnerStatusEnum_warn =
    const IntelBoardBenchmarksInnerStatusEnum._('warn');
const IntelBoardBenchmarksInnerStatusEnum
_$intelBoardBenchmarksInnerStatusEnum_fail =
    const IntelBoardBenchmarksInnerStatusEnum._('fail');
const IntelBoardBenchmarksInnerStatusEnum
_$intelBoardBenchmarksInnerStatusEnum_unknown =
    const IntelBoardBenchmarksInnerStatusEnum._('unknown');

IntelBoardBenchmarksInnerStatusEnum
_$intelBoardBenchmarksInnerStatusEnumValueOf(String name) {
  switch (name) {
    case 'pass':
      return _$intelBoardBenchmarksInnerStatusEnum_pass;
    case 'warn':
      return _$intelBoardBenchmarksInnerStatusEnum_warn;
    case 'fail':
      return _$intelBoardBenchmarksInnerStatusEnum_fail;
    case 'unknown':
      return _$intelBoardBenchmarksInnerStatusEnum_unknown;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<IntelBoardBenchmarksInnerStatusEnum>
_$intelBoardBenchmarksInnerStatusEnumValues =
    BuiltSet<IntelBoardBenchmarksInnerStatusEnum>(
      const <IntelBoardBenchmarksInnerStatusEnum>[
        _$intelBoardBenchmarksInnerStatusEnum_pass,
        _$intelBoardBenchmarksInnerStatusEnum_warn,
        _$intelBoardBenchmarksInnerStatusEnum_fail,
        _$intelBoardBenchmarksInnerStatusEnum_unknown,
      ],
    );

Serializer<IntelBoardBenchmarksInnerStatusEnum>
_$intelBoardBenchmarksInnerStatusEnumSerializer =
    _$IntelBoardBenchmarksInnerStatusEnumSerializer();

class _$IntelBoardBenchmarksInnerStatusEnumSerializer
    implements PrimitiveSerializer<IntelBoardBenchmarksInnerStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pass': 'pass',
    'warn': 'warn',
    'fail': 'fail',
    'unknown': 'unknown',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'pass': 'pass',
    'warn': 'warn',
    'fail': 'fail',
    'unknown': 'unknown',
  };

  @override
  final Iterable<Type> types = const <Type>[
    IntelBoardBenchmarksInnerStatusEnum,
  ];
  @override
  final String wireName = 'IntelBoardBenchmarksInnerStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    IntelBoardBenchmarksInnerStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  IntelBoardBenchmarksInnerStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => IntelBoardBenchmarksInnerStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$IntelBoardBenchmarksInner extends IntelBoardBenchmarksInner {
  @override
  final String component;
  @override
  final IntelBoardBenchmarksInnerStatusEnum status;

  factory _$IntelBoardBenchmarksInner([
    void Function(IntelBoardBenchmarksInnerBuilder)? updates,
  ]) => (IntelBoardBenchmarksInnerBuilder()..update(updates))._build();

  _$IntelBoardBenchmarksInner._({required this.component, required this.status})
    : super._();
  @override
  IntelBoardBenchmarksInner rebuild(
    void Function(IntelBoardBenchmarksInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  IntelBoardBenchmarksInnerBuilder toBuilder() =>
      IntelBoardBenchmarksInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntelBoardBenchmarksInner &&
        component == other.component &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, component.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IntelBoardBenchmarksInner')
          ..add('component', component)
          ..add('status', status))
        .toString();
  }
}

class IntelBoardBenchmarksInnerBuilder
    implements
        Builder<IntelBoardBenchmarksInner, IntelBoardBenchmarksInnerBuilder> {
  _$IntelBoardBenchmarksInner? _$v;

  String? _component;
  String? get component => _$this._component;
  set component(String? component) => _$this._component = component;

  IntelBoardBenchmarksInnerStatusEnum? _status;
  IntelBoardBenchmarksInnerStatusEnum? get status => _$this._status;
  set status(IntelBoardBenchmarksInnerStatusEnum? status) =>
      _$this._status = status;

  IntelBoardBenchmarksInnerBuilder() {
    IntelBoardBenchmarksInner._defaults(this);
  }

  IntelBoardBenchmarksInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _component = $v.component;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IntelBoardBenchmarksInner other) {
    _$v = other as _$IntelBoardBenchmarksInner;
  }

  @override
  void update(void Function(IntelBoardBenchmarksInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IntelBoardBenchmarksInner build() => _build();

  _$IntelBoardBenchmarksInner _build() {
    final _$result =
        _$v ??
        _$IntelBoardBenchmarksInner._(
          component: BuiltValueNullFieldError.checkNotNull(
            component,
            r'IntelBoardBenchmarksInner',
            'component',
          ),
          status: BuiltValueNullFieldError.checkNotNull(
            status,
            r'IntelBoardBenchmarksInner',
            'status',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
