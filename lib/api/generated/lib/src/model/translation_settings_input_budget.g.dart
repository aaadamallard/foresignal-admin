// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translation_settings_input_budget.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TranslationSettingsInputBudgetWindowEnum
_$translationSettingsInputBudgetWindowEnum_hour =
    const TranslationSettingsInputBudgetWindowEnum._('hour');
const TranslationSettingsInputBudgetWindowEnum
_$translationSettingsInputBudgetWindowEnum_day =
    const TranslationSettingsInputBudgetWindowEnum._('day');
const TranslationSettingsInputBudgetWindowEnum
_$translationSettingsInputBudgetWindowEnum_month =
    const TranslationSettingsInputBudgetWindowEnum._('month');
const TranslationSettingsInputBudgetWindowEnum
_$translationSettingsInputBudgetWindowEnum_unknownDefaultOpenApi =
    const TranslationSettingsInputBudgetWindowEnum._('unknownDefaultOpenApi');

TranslationSettingsInputBudgetWindowEnum
_$translationSettingsInputBudgetWindowEnumValueOf(String name) {
  switch (name) {
    case 'hour':
      return _$translationSettingsInputBudgetWindowEnum_hour;
    case 'day':
      return _$translationSettingsInputBudgetWindowEnum_day;
    case 'month':
      return _$translationSettingsInputBudgetWindowEnum_month;
    case 'unknownDefaultOpenApi':
      return _$translationSettingsInputBudgetWindowEnum_unknownDefaultOpenApi;
    default:
      return _$translationSettingsInputBudgetWindowEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<TranslationSettingsInputBudgetWindowEnum>
_$translationSettingsInputBudgetWindowEnumValues =
    BuiltSet<TranslationSettingsInputBudgetWindowEnum>(
      const <TranslationSettingsInputBudgetWindowEnum>[
        _$translationSettingsInputBudgetWindowEnum_hour,
        _$translationSettingsInputBudgetWindowEnum_day,
        _$translationSettingsInputBudgetWindowEnum_month,
        _$translationSettingsInputBudgetWindowEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<TranslationSettingsInputBudgetWindowEnum>
_$translationSettingsInputBudgetWindowEnumSerializer =
    _$TranslationSettingsInputBudgetWindowEnumSerializer();

class _$TranslationSettingsInputBudgetWindowEnumSerializer
    implements PrimitiveSerializer<TranslationSettingsInputBudgetWindowEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'hour': 'hour',
    'day': 'day',
    'month': 'month',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'hour': 'hour',
    'day': 'day',
    'month': 'month',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    TranslationSettingsInputBudgetWindowEnum,
  ];
  @override
  final String wireName = 'TranslationSettingsInputBudgetWindowEnum';

  @override
  Object serialize(
    Serializers serializers,
    TranslationSettingsInputBudgetWindowEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  TranslationSettingsInputBudgetWindowEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => TranslationSettingsInputBudgetWindowEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$TranslationSettingsInputBudget extends TranslationSettingsInputBudget {
  @override
  final TranslationSettingsInputBudgetWindowEnum? window;
  @override
  final num? capUsd;

  factory _$TranslationSettingsInputBudget([
    void Function(TranslationSettingsInputBudgetBuilder)? updates,
  ]) => (TranslationSettingsInputBudgetBuilder()..update(updates))._build();

  _$TranslationSettingsInputBudget._({this.window, this.capUsd}) : super._();
  @override
  TranslationSettingsInputBudget rebuild(
    void Function(TranslationSettingsInputBudgetBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TranslationSettingsInputBudgetBuilder toBuilder() =>
      TranslationSettingsInputBudgetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TranslationSettingsInputBudget &&
        window == other.window &&
        capUsd == other.capUsd;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, window.hashCode);
    _$hash = $jc(_$hash, capUsd.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TranslationSettingsInputBudget')
          ..add('window', window)
          ..add('capUsd', capUsd))
        .toString();
  }
}

class TranslationSettingsInputBudgetBuilder
    implements
        Builder<
          TranslationSettingsInputBudget,
          TranslationSettingsInputBudgetBuilder
        > {
  _$TranslationSettingsInputBudget? _$v;

  TranslationSettingsInputBudgetWindowEnum? _window;
  TranslationSettingsInputBudgetWindowEnum? get window => _$this._window;
  set window(TranslationSettingsInputBudgetWindowEnum? window) =>
      _$this._window = window;

  num? _capUsd;
  num? get capUsd => _$this._capUsd;
  set capUsd(num? capUsd) => _$this._capUsd = capUsd;

  TranslationSettingsInputBudgetBuilder() {
    TranslationSettingsInputBudget._defaults(this);
  }

  TranslationSettingsInputBudgetBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _window = $v.window;
      _capUsd = $v.capUsd;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TranslationSettingsInputBudget other) {
    _$v = other as _$TranslationSettingsInputBudget;
  }

  @override
  void update(void Function(TranslationSettingsInputBudgetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TranslationSettingsInputBudget build() => _build();

  _$TranslationSettingsInputBudget _build() {
    final _$result =
        _$v ??
        _$TranslationSettingsInputBudget._(window: window, capUsd: capUsd);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
