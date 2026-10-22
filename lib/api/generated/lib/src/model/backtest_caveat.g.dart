// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backtest_caveat.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BacktestCaveatCodeEnum
_$backtestCaveatCodeEnum_RANGE_CLAMPED_BY_RETENTION =
    const BacktestCaveatCodeEnum._('RANGE_CLAMPED_BY_RETENTION');
const BacktestCaveatCodeEnum _$backtestCaveatCodeEnum_DOWNSAMPLED_RANGE =
    const BacktestCaveatCodeEnum._('DOWNSAMPLED_RANGE');
const BacktestCaveatCodeEnum _$backtestCaveatCodeEnum_SAMPLED_SOURCE =
    const BacktestCaveatCodeEnum._('SAMPLED_SOURCE');
const BacktestCaveatCodeEnum _$backtestCaveatCodeEnum_COVERAGE_GAPS =
    const BacktestCaveatCodeEnum._('COVERAGE_GAPS');
const BacktestCaveatCodeEnum _$backtestCaveatCodeEnum_DEFINITION_DIFFERS =
    const BacktestCaveatCodeEnum._('DEFINITION_DIFFERS');
const BacktestCaveatCodeEnum
_$backtestCaveatCodeEnum_ENTITY_RESOLUTION_CHANGED =
    const BacktestCaveatCodeEnum._('ENTITY_RESOLUTION_CHANGED');
const BacktestCaveatCodeEnum _$backtestCaveatCodeEnum_WINDOW_APPROXIMATE =
    const BacktestCaveatCodeEnum._('WINDOW_APPROXIMATE');
const BacktestCaveatCodeEnum _$backtestCaveatCodeEnum_SMALL_SAMPLE =
    const BacktestCaveatCodeEnum._('SMALL_SAMPLE');
const BacktestCaveatCodeEnum _$backtestCaveatCodeEnum_NOT_GROUND_TRUTH =
    const BacktestCaveatCodeEnum._('NOT_GROUND_TRUTH');

BacktestCaveatCodeEnum _$backtestCaveatCodeEnumValueOf(String name) {
  switch (name) {
    case 'RANGE_CLAMPED_BY_RETENTION':
      return _$backtestCaveatCodeEnum_RANGE_CLAMPED_BY_RETENTION;
    case 'DOWNSAMPLED_RANGE':
      return _$backtestCaveatCodeEnum_DOWNSAMPLED_RANGE;
    case 'SAMPLED_SOURCE':
      return _$backtestCaveatCodeEnum_SAMPLED_SOURCE;
    case 'COVERAGE_GAPS':
      return _$backtestCaveatCodeEnum_COVERAGE_GAPS;
    case 'DEFINITION_DIFFERS':
      return _$backtestCaveatCodeEnum_DEFINITION_DIFFERS;
    case 'ENTITY_RESOLUTION_CHANGED':
      return _$backtestCaveatCodeEnum_ENTITY_RESOLUTION_CHANGED;
    case 'WINDOW_APPROXIMATE':
      return _$backtestCaveatCodeEnum_WINDOW_APPROXIMATE;
    case 'SMALL_SAMPLE':
      return _$backtestCaveatCodeEnum_SMALL_SAMPLE;
    case 'NOT_GROUND_TRUTH':
      return _$backtestCaveatCodeEnum_NOT_GROUND_TRUTH;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<BacktestCaveatCodeEnum> _$backtestCaveatCodeEnumValues =
    BuiltSet<BacktestCaveatCodeEnum>(const <BacktestCaveatCodeEnum>[
      _$backtestCaveatCodeEnum_RANGE_CLAMPED_BY_RETENTION,
      _$backtestCaveatCodeEnum_DOWNSAMPLED_RANGE,
      _$backtestCaveatCodeEnum_SAMPLED_SOURCE,
      _$backtestCaveatCodeEnum_COVERAGE_GAPS,
      _$backtestCaveatCodeEnum_DEFINITION_DIFFERS,
      _$backtestCaveatCodeEnum_ENTITY_RESOLUTION_CHANGED,
      _$backtestCaveatCodeEnum_WINDOW_APPROXIMATE,
      _$backtestCaveatCodeEnum_SMALL_SAMPLE,
      _$backtestCaveatCodeEnum_NOT_GROUND_TRUTH,
    ]);

Serializer<BacktestCaveatCodeEnum> _$backtestCaveatCodeEnumSerializer =
    _$BacktestCaveatCodeEnumSerializer();

class _$BacktestCaveatCodeEnumSerializer
    implements PrimitiveSerializer<BacktestCaveatCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'RANGE_CLAMPED_BY_RETENTION': 'RANGE_CLAMPED_BY_RETENTION',
    'DOWNSAMPLED_RANGE': 'DOWNSAMPLED_RANGE',
    'SAMPLED_SOURCE': 'SAMPLED_SOURCE',
    'COVERAGE_GAPS': 'COVERAGE_GAPS',
    'DEFINITION_DIFFERS': 'DEFINITION_DIFFERS',
    'ENTITY_RESOLUTION_CHANGED': 'ENTITY_RESOLUTION_CHANGED',
    'WINDOW_APPROXIMATE': 'WINDOW_APPROXIMATE',
    'SMALL_SAMPLE': 'SMALL_SAMPLE',
    'NOT_GROUND_TRUTH': 'NOT_GROUND_TRUTH',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'RANGE_CLAMPED_BY_RETENTION': 'RANGE_CLAMPED_BY_RETENTION',
    'DOWNSAMPLED_RANGE': 'DOWNSAMPLED_RANGE',
    'SAMPLED_SOURCE': 'SAMPLED_SOURCE',
    'COVERAGE_GAPS': 'COVERAGE_GAPS',
    'DEFINITION_DIFFERS': 'DEFINITION_DIFFERS',
    'ENTITY_RESOLUTION_CHANGED': 'ENTITY_RESOLUTION_CHANGED',
    'WINDOW_APPROXIMATE': 'WINDOW_APPROXIMATE',
    'SMALL_SAMPLE': 'SMALL_SAMPLE',
    'NOT_GROUND_TRUTH': 'NOT_GROUND_TRUTH',
  };

  @override
  final Iterable<Type> types = const <Type>[BacktestCaveatCodeEnum];
  @override
  final String wireName = 'BacktestCaveatCodeEnum';

  @override
  Object serialize(
    Serializers serializers,
    BacktestCaveatCodeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  BacktestCaveatCodeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => BacktestCaveatCodeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$BacktestCaveat extends BacktestCaveat {
  @override
  final BacktestCaveatCodeEnum code;
  @override
  final String text;
  @override
  final BuiltMap<String, JsonObject?>? data;

  factory _$BacktestCaveat([void Function(BacktestCaveatBuilder)? updates]) =>
      (BacktestCaveatBuilder()..update(updates))._build();

  _$BacktestCaveat._({required this.code, required this.text, this.data})
    : super._();
  @override
  BacktestCaveat rebuild(void Function(BacktestCaveatBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BacktestCaveatBuilder toBuilder() => BacktestCaveatBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BacktestCaveat &&
        code == other.code &&
        text == other.text &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BacktestCaveat')
          ..add('code', code)
          ..add('text', text)
          ..add('data', data))
        .toString();
  }
}

class BacktestCaveatBuilder
    implements Builder<BacktestCaveat, BacktestCaveatBuilder> {
  _$BacktestCaveat? _$v;

  BacktestCaveatCodeEnum? _code;
  BacktestCaveatCodeEnum? get code => _$this._code;
  set code(BacktestCaveatCodeEnum? code) => _$this._code = code;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  MapBuilder<String, JsonObject?>? _data;
  MapBuilder<String, JsonObject?> get data =>
      _$this._data ??= MapBuilder<String, JsonObject?>();
  set data(MapBuilder<String, JsonObject?>? data) => _$this._data = data;

  BacktestCaveatBuilder() {
    BacktestCaveat._defaults(this);
  }

  BacktestCaveatBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _text = $v.text;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BacktestCaveat other) {
    _$v = other as _$BacktestCaveat;
  }

  @override
  void update(void Function(BacktestCaveatBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BacktestCaveat build() => _build();

  _$BacktestCaveat _build() {
    _$BacktestCaveat _$result;
    try {
      _$result =
          _$v ??
          _$BacktestCaveat._(
            code: BuiltValueNullFieldError.checkNotNull(
              code,
              r'BacktestCaveat',
              'code',
            ),
            text: BuiltValueNullFieldError.checkNotNull(
              text,
              r'BacktestCaveat',
              'text',
            ),
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'BacktestCaveat',
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
