// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_subscription_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PushSubscriptionInputTransportLabelEnum
_$pushSubscriptionInputTransportLabelEnum_browser =
    const PushSubscriptionInputTransportLabelEnum._('browser');
const PushSubscriptionInputTransportLabelEnum
_$pushSubscriptionInputTransportLabelEnum_unifiedpush =
    const PushSubscriptionInputTransportLabelEnum._('unifiedpush');
const PushSubscriptionInputTransportLabelEnum
_$pushSubscriptionInputTransportLabelEnum_other =
    const PushSubscriptionInputTransportLabelEnum._('other');

PushSubscriptionInputTransportLabelEnum
_$pushSubscriptionInputTransportLabelEnumValueOf(String name) {
  switch (name) {
    case 'browser':
      return _$pushSubscriptionInputTransportLabelEnum_browser;
    case 'unifiedpush':
      return _$pushSubscriptionInputTransportLabelEnum_unifiedpush;
    case 'other':
      return _$pushSubscriptionInputTransportLabelEnum_other;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PushSubscriptionInputTransportLabelEnum>
_$pushSubscriptionInputTransportLabelEnumValues =
    BuiltSet<PushSubscriptionInputTransportLabelEnum>(
      const <PushSubscriptionInputTransportLabelEnum>[
        _$pushSubscriptionInputTransportLabelEnum_browser,
        _$pushSubscriptionInputTransportLabelEnum_unifiedpush,
        _$pushSubscriptionInputTransportLabelEnum_other,
      ],
    );

const PushSubscriptionInputPayloadFormatEnum
_$pushSubscriptionInputPayloadFormatEnum_foresignal =
    const PushSubscriptionInputPayloadFormatEnum._('foresignal');
const PushSubscriptionInputPayloadFormatEnum
_$pushSubscriptionInputPayloadFormatEnum_declarative =
    const PushSubscriptionInputPayloadFormatEnum._('declarative');

PushSubscriptionInputPayloadFormatEnum
_$pushSubscriptionInputPayloadFormatEnumValueOf(String name) {
  switch (name) {
    case 'foresignal':
      return _$pushSubscriptionInputPayloadFormatEnum_foresignal;
    case 'declarative':
      return _$pushSubscriptionInputPayloadFormatEnum_declarative;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PushSubscriptionInputPayloadFormatEnum>
_$pushSubscriptionInputPayloadFormatEnumValues =
    BuiltSet<PushSubscriptionInputPayloadFormatEnum>(
      const <PushSubscriptionInputPayloadFormatEnum>[
        _$pushSubscriptionInputPayloadFormatEnum_foresignal,
        _$pushSubscriptionInputPayloadFormatEnum_declarative,
      ],
    );

Serializer<PushSubscriptionInputTransportLabelEnum>
_$pushSubscriptionInputTransportLabelEnumSerializer =
    _$PushSubscriptionInputTransportLabelEnumSerializer();
Serializer<PushSubscriptionInputPayloadFormatEnum>
_$pushSubscriptionInputPayloadFormatEnumSerializer =
    _$PushSubscriptionInputPayloadFormatEnumSerializer();

class _$PushSubscriptionInputTransportLabelEnumSerializer
    implements PrimitiveSerializer<PushSubscriptionInputTransportLabelEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'browser': 'browser',
    'unifiedpush': 'unifiedpush',
    'other': 'other',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'browser': 'browser',
    'unifiedpush': 'unifiedpush',
    'other': 'other',
  };

  @override
  final Iterable<Type> types = const <Type>[
    PushSubscriptionInputTransportLabelEnum,
  ];
  @override
  final String wireName = 'PushSubscriptionInputTransportLabelEnum';

  @override
  Object serialize(
    Serializers serializers,
    PushSubscriptionInputTransportLabelEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PushSubscriptionInputTransportLabelEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PushSubscriptionInputTransportLabelEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PushSubscriptionInputPayloadFormatEnumSerializer
    implements PrimitiveSerializer<PushSubscriptionInputPayloadFormatEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'foresignal': 'foresignal',
    'declarative': 'declarative',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'foresignal': 'foresignal',
    'declarative': 'declarative',
  };

  @override
  final Iterable<Type> types = const <Type>[
    PushSubscriptionInputPayloadFormatEnum,
  ];
  @override
  final String wireName = 'PushSubscriptionInputPayloadFormatEnum';

  @override
  Object serialize(
    Serializers serializers,
    PushSubscriptionInputPayloadFormatEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PushSubscriptionInputPayloadFormatEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PushSubscriptionInputPayloadFormatEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PushSubscriptionInput extends PushSubscriptionInput {
  @override
  final String? name;
  @override
  final PushSubscriptionInputSubscription subscription;
  @override
  final PushFilters? filters;
  @override
  final PushSubscriptionInputTransportLabelEnum? transportLabel;
  @override
  final PushSubscriptionInputPayloadFormatEnum? payloadFormat;
  @override
  final String? lang;

  factory _$PushSubscriptionInput([
    void Function(PushSubscriptionInputBuilder)? updates,
  ]) => (PushSubscriptionInputBuilder()..update(updates))._build();

  _$PushSubscriptionInput._({
    this.name,
    required this.subscription,
    this.filters,
    this.transportLabel,
    this.payloadFormat,
    this.lang,
  }) : super._();
  @override
  PushSubscriptionInput rebuild(
    void Function(PushSubscriptionInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PushSubscriptionInputBuilder toBuilder() =>
      PushSubscriptionInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PushSubscriptionInput &&
        name == other.name &&
        subscription == other.subscription &&
        filters == other.filters &&
        transportLabel == other.transportLabel &&
        payloadFormat == other.payloadFormat &&
        lang == other.lang;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, subscription.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, transportLabel.hashCode);
    _$hash = $jc(_$hash, payloadFormat.hashCode);
    _$hash = $jc(_$hash, lang.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PushSubscriptionInput')
          ..add('name', name)
          ..add('subscription', subscription)
          ..add('filters', filters)
          ..add('transportLabel', transportLabel)
          ..add('payloadFormat', payloadFormat)
          ..add('lang', lang))
        .toString();
  }
}

class PushSubscriptionInputBuilder
    implements Builder<PushSubscriptionInput, PushSubscriptionInputBuilder> {
  _$PushSubscriptionInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  PushSubscriptionInputSubscriptionBuilder? _subscription;
  PushSubscriptionInputSubscriptionBuilder get subscription =>
      _$this._subscription ??= PushSubscriptionInputSubscriptionBuilder();
  set subscription(PushSubscriptionInputSubscriptionBuilder? subscription) =>
      _$this._subscription = subscription;

  PushFiltersBuilder? _filters;
  PushFiltersBuilder get filters => _$this._filters ??= PushFiltersBuilder();
  set filters(PushFiltersBuilder? filters) => _$this._filters = filters;

  PushSubscriptionInputTransportLabelEnum? _transportLabel;
  PushSubscriptionInputTransportLabelEnum? get transportLabel =>
      _$this._transportLabel;
  set transportLabel(PushSubscriptionInputTransportLabelEnum? transportLabel) =>
      _$this._transportLabel = transportLabel;

  PushSubscriptionInputPayloadFormatEnum? _payloadFormat;
  PushSubscriptionInputPayloadFormatEnum? get payloadFormat =>
      _$this._payloadFormat;
  set payloadFormat(PushSubscriptionInputPayloadFormatEnum? payloadFormat) =>
      _$this._payloadFormat = payloadFormat;

  String? _lang;
  String? get lang => _$this._lang;
  set lang(String? lang) => _$this._lang = lang;

  PushSubscriptionInputBuilder() {
    PushSubscriptionInput._defaults(this);
  }

  PushSubscriptionInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _subscription = $v.subscription.toBuilder();
      _filters = $v.filters?.toBuilder();
      _transportLabel = $v.transportLabel;
      _payloadFormat = $v.payloadFormat;
      _lang = $v.lang;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PushSubscriptionInput other) {
    _$v = other as _$PushSubscriptionInput;
  }

  @override
  void update(void Function(PushSubscriptionInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PushSubscriptionInput build() => _build();

  _$PushSubscriptionInput _build() {
    _$PushSubscriptionInput _$result;
    try {
      _$result =
          _$v ??
          _$PushSubscriptionInput._(
            name: name,
            subscription: subscription.build(),
            filters: _filters?.build(),
            transportLabel: transportLabel,
            payloadFormat: payloadFormat,
            lang: lang,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'subscription';
        subscription.build();
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PushSubscriptionInput',
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
