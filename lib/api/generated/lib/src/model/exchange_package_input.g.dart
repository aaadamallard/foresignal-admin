// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_package_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ExchangePackageInputDeliverEnum _$exchangePackageInputDeliverEnum_peer =
    const ExchangePackageInputDeliverEnum._('peer');
const ExchangePackageInputDeliverEnum _$exchangePackageInputDeliverEnum_file =
    const ExchangePackageInputDeliverEnum._('file');
const ExchangePackageInputDeliverEnum
_$exchangePackageInputDeliverEnum_unknownDefaultOpenApi =
    const ExchangePackageInputDeliverEnum._('unknownDefaultOpenApi');

ExchangePackageInputDeliverEnum _$exchangePackageInputDeliverEnumValueOf(
  String name,
) {
  switch (name) {
    case 'peer':
      return _$exchangePackageInputDeliverEnum_peer;
    case 'file':
      return _$exchangePackageInputDeliverEnum_file;
    case 'unknownDefaultOpenApi':
      return _$exchangePackageInputDeliverEnum_unknownDefaultOpenApi;
    default:
      return _$exchangePackageInputDeliverEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ExchangePackageInputDeliverEnum>
_$exchangePackageInputDeliverEnumValues =
    BuiltSet<ExchangePackageInputDeliverEnum>(
      const <ExchangePackageInputDeliverEnum>[
        _$exchangePackageInputDeliverEnum_peer,
        _$exchangePackageInputDeliverEnum_file,
        _$exchangePackageInputDeliverEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<ExchangePackageInputDeliverEnum>
_$exchangePackageInputDeliverEnumSerializer =
    _$ExchangePackageInputDeliverEnumSerializer();

class _$ExchangePackageInputDeliverEnumSerializer
    implements PrimitiveSerializer<ExchangePackageInputDeliverEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'peer': 'peer',
    'file': 'file',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'peer': 'peer',
    'file': 'file',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ExchangePackageInputDeliverEnum];
  @override
  final String wireName = 'ExchangePackageInputDeliverEnum';

  @override
  Object serialize(
    Serializers serializers,
    ExchangePackageInputDeliverEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ExchangePackageInputDeliverEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ExchangePackageInputDeliverEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ExchangePackageInput extends ExchangePackageInput {
  @override
  final String objectRef;
  @override
  final JsonObject? recipients;
  @override
  final String? message;
  @override
  final ExchangePackageInputDeliverEnum? deliver;
  @override
  final ExchangePackageInputExtract? extract;

  factory _$ExchangePackageInput([
    void Function(ExchangePackageInputBuilder)? updates,
  ]) => (ExchangePackageInputBuilder()..update(updates))._build();

  _$ExchangePackageInput._({
    required this.objectRef,
    this.recipients,
    this.message,
    this.deliver,
    this.extract,
  }) : super._();
  @override
  ExchangePackageInput rebuild(
    void Function(ExchangePackageInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ExchangePackageInputBuilder toBuilder() =>
      ExchangePackageInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExchangePackageInput &&
        objectRef == other.objectRef &&
        recipients == other.recipients &&
        message == other.message &&
        deliver == other.deliver &&
        extract == other.extract;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, objectRef.hashCode);
    _$hash = $jc(_$hash, recipients.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, deliver.hashCode);
    _$hash = $jc(_$hash, extract.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExchangePackageInput')
          ..add('objectRef', objectRef)
          ..add('recipients', recipients)
          ..add('message', message)
          ..add('deliver', deliver)
          ..add('extract', extract))
        .toString();
  }
}

class ExchangePackageInputBuilder
    implements Builder<ExchangePackageInput, ExchangePackageInputBuilder> {
  _$ExchangePackageInput? _$v;

  String? _objectRef;
  String? get objectRef => _$this._objectRef;
  set objectRef(String? objectRef) => _$this._objectRef = objectRef;

  JsonObject? _recipients;
  JsonObject? get recipients => _$this._recipients;
  set recipients(JsonObject? recipients) => _$this._recipients = recipients;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ExchangePackageInputDeliverEnum? _deliver;
  ExchangePackageInputDeliverEnum? get deliver => _$this._deliver;
  set deliver(ExchangePackageInputDeliverEnum? deliver) =>
      _$this._deliver = deliver;

  ExchangePackageInputExtractBuilder? _extract;
  ExchangePackageInputExtractBuilder get extract =>
      _$this._extract ??= ExchangePackageInputExtractBuilder();
  set extract(ExchangePackageInputExtractBuilder? extract) =>
      _$this._extract = extract;

  ExchangePackageInputBuilder() {
    ExchangePackageInput._defaults(this);
  }

  ExchangePackageInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _objectRef = $v.objectRef;
      _recipients = $v.recipients;
      _message = $v.message;
      _deliver = $v.deliver;
      _extract = $v.extract?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExchangePackageInput other) {
    _$v = other as _$ExchangePackageInput;
  }

  @override
  void update(void Function(ExchangePackageInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExchangePackageInput build() => _build();

  _$ExchangePackageInput _build() {
    _$ExchangePackageInput _$result;
    try {
      _$result =
          _$v ??
          _$ExchangePackageInput._(
            objectRef: BuiltValueNullFieldError.checkNotNull(
              objectRef,
              r'ExchangePackageInput',
              'objectRef',
            ),
            recipients: recipients,
            message: message,
            deliver: deliver,
            extract: _extract?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'extract';
        _extract?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ExchangePackageInput',
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
