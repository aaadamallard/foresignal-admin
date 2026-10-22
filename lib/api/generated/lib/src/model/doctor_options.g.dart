// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DoctorOptionsLlmEnum _$doctorOptionsLlmEnum_auto =
    const DoctorOptionsLlmEnum._('auto');
const DoctorOptionsLlmEnum _$doctorOptionsLlmEnum_on_ =
    const DoctorOptionsLlmEnum._('on_');
const DoctorOptionsLlmEnum _$doctorOptionsLlmEnum_off =
    const DoctorOptionsLlmEnum._('off');

DoctorOptionsLlmEnum _$doctorOptionsLlmEnumValueOf(String name) {
  switch (name) {
    case 'auto':
      return _$doctorOptionsLlmEnum_auto;
    case 'on_':
      return _$doctorOptionsLlmEnum_on_;
    case 'off':
      return _$doctorOptionsLlmEnum_off;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DoctorOptionsLlmEnum> _$doctorOptionsLlmEnumValues =
    BuiltSet<DoctorOptionsLlmEnum>(const <DoctorOptionsLlmEnum>[
      _$doctorOptionsLlmEnum_auto,
      _$doctorOptionsLlmEnum_on_,
      _$doctorOptionsLlmEnum_off,
    ]);

const DoctorOptionsDetailEnum _$doctorOptionsDetailEnum_compact =
    const DoctorOptionsDetailEnum._('compact');
const DoctorOptionsDetailEnum _$doctorOptionsDetailEnum_full =
    const DoctorOptionsDetailEnum._('full');

DoctorOptionsDetailEnum _$doctorOptionsDetailEnumValueOf(String name) {
  switch (name) {
    case 'compact':
      return _$doctorOptionsDetailEnum_compact;
    case 'full':
      return _$doctorOptionsDetailEnum_full;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DoctorOptionsDetailEnum> _$doctorOptionsDetailEnumValues =
    BuiltSet<DoctorOptionsDetailEnum>(const <DoctorOptionsDetailEnum>[
      _$doctorOptionsDetailEnum_compact,
      _$doctorOptionsDetailEnum_full,
    ]);

Serializer<DoctorOptionsLlmEnum> _$doctorOptionsLlmEnumSerializer =
    _$DoctorOptionsLlmEnumSerializer();
Serializer<DoctorOptionsDetailEnum> _$doctorOptionsDetailEnumSerializer =
    _$DoctorOptionsDetailEnumSerializer();

class _$DoctorOptionsLlmEnumSerializer
    implements PrimitiveSerializer<DoctorOptionsLlmEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'auto': 'auto',
    'on_': 'on',
    'off': 'off',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'auto': 'auto',
    'on': 'on_',
    'off': 'off',
  };

  @override
  final Iterable<Type> types = const <Type>[DoctorOptionsLlmEnum];
  @override
  final String wireName = 'DoctorOptionsLlmEnum';

  @override
  Object serialize(
    Serializers serializers,
    DoctorOptionsLlmEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  DoctorOptionsLlmEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => DoctorOptionsLlmEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$DoctorOptionsDetailEnumSerializer
    implements PrimitiveSerializer<DoctorOptionsDetailEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'compact': 'compact',
    'full': 'full',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'compact': 'compact',
    'full': 'full',
  };

  @override
  final Iterable<Type> types = const <Type>[DoctorOptionsDetailEnum];
  @override
  final String wireName = 'DoctorOptionsDetailEnum';

  @override
  Object serialize(
    Serializers serializers,
    DoctorOptionsDetailEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  DoctorOptionsDetailEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => DoctorOptionsDetailEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$DoctorOptions extends DoctorOptions {
  @override
  final bool? probe;
  @override
  final DoctorOptionsLlmEnum? llm;
  @override
  final DoctorOptionsDetailEnum? detail;

  factory _$DoctorOptions([void Function(DoctorOptionsBuilder)? updates]) =>
      (DoctorOptionsBuilder()..update(updates))._build();

  _$DoctorOptions._({this.probe, this.llm, this.detail}) : super._();
  @override
  DoctorOptions rebuild(void Function(DoctorOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DoctorOptionsBuilder toBuilder() => DoctorOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DoctorOptions &&
        probe == other.probe &&
        llm == other.llm &&
        detail == other.detail;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, probe.hashCode);
    _$hash = $jc(_$hash, llm.hashCode);
    _$hash = $jc(_$hash, detail.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DoctorOptions')
          ..add('probe', probe)
          ..add('llm', llm)
          ..add('detail', detail))
        .toString();
  }
}

class DoctorOptionsBuilder
    implements Builder<DoctorOptions, DoctorOptionsBuilder> {
  _$DoctorOptions? _$v;

  bool? _probe;
  bool? get probe => _$this._probe;
  set probe(bool? probe) => _$this._probe = probe;

  DoctorOptionsLlmEnum? _llm;
  DoctorOptionsLlmEnum? get llm => _$this._llm;
  set llm(DoctorOptionsLlmEnum? llm) => _$this._llm = llm;

  DoctorOptionsDetailEnum? _detail;
  DoctorOptionsDetailEnum? get detail => _$this._detail;
  set detail(DoctorOptionsDetailEnum? detail) => _$this._detail = detail;

  DoctorOptionsBuilder() {
    DoctorOptions._defaults(this);
  }

  DoctorOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _probe = $v.probe;
      _llm = $v.llm;
      _detail = $v.detail;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DoctorOptions other) {
    _$v = other as _$DoctorOptions;
  }

  @override
  void update(void Function(DoctorOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DoctorOptions build() => _build();

  _$DoctorOptions _build() {
    final _$result =
        _$v ?? _$DoctorOptions._(probe: probe, llm: llm, detail: detail);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
