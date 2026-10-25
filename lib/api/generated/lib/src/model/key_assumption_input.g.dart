// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'key_assumption_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const KeyAssumptionInputStatusEnum _$keyAssumptionInputStatusEnum_solid =
    const KeyAssumptionInputStatusEnum._('solid');
const KeyAssumptionInputStatusEnum _$keyAssumptionInputStatusEnum_caveated =
    const KeyAssumptionInputStatusEnum._('caveated');
const KeyAssumptionInputStatusEnum _$keyAssumptionInputStatusEnum_unsupported =
    const KeyAssumptionInputStatusEnum._('unsupported');
const KeyAssumptionInputStatusEnum _$keyAssumptionInputStatusEnum_broken =
    const KeyAssumptionInputStatusEnum._('broken');
const KeyAssumptionInputStatusEnum
_$keyAssumptionInputStatusEnum_unknownDefaultOpenApi =
    const KeyAssumptionInputStatusEnum._('unknownDefaultOpenApi');

KeyAssumptionInputStatusEnum _$keyAssumptionInputStatusEnumValueOf(
  String name,
) {
  switch (name) {
    case 'solid':
      return _$keyAssumptionInputStatusEnum_solid;
    case 'caveated':
      return _$keyAssumptionInputStatusEnum_caveated;
    case 'unsupported':
      return _$keyAssumptionInputStatusEnum_unsupported;
    case 'broken':
      return _$keyAssumptionInputStatusEnum_broken;
    case 'unknownDefaultOpenApi':
      return _$keyAssumptionInputStatusEnum_unknownDefaultOpenApi;
    default:
      return _$keyAssumptionInputStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<KeyAssumptionInputStatusEnum>
_$keyAssumptionInputStatusEnumValues =
    BuiltSet<KeyAssumptionInputStatusEnum>(const <KeyAssumptionInputStatusEnum>[
      _$keyAssumptionInputStatusEnum_solid,
      _$keyAssumptionInputStatusEnum_caveated,
      _$keyAssumptionInputStatusEnum_unsupported,
      _$keyAssumptionInputStatusEnum_broken,
      _$keyAssumptionInputStatusEnum_unknownDefaultOpenApi,
    ]);

Serializer<KeyAssumptionInputStatusEnum>
_$keyAssumptionInputStatusEnumSerializer =
    _$KeyAssumptionInputStatusEnumSerializer();

class _$KeyAssumptionInputStatusEnumSerializer
    implements PrimitiveSerializer<KeyAssumptionInputStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'solid': 'solid',
    'caveated': 'caveated',
    'unsupported': 'unsupported',
    'broken': 'broken',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'solid': 'solid',
    'caveated': 'caveated',
    'unsupported': 'unsupported',
    'broken': 'broken',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[KeyAssumptionInputStatusEnum];
  @override
  final String wireName = 'KeyAssumptionInputStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    KeyAssumptionInputStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  KeyAssumptionInputStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => KeyAssumptionInputStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$KeyAssumptionInput extends KeyAssumptionInput {
  @override
  final String text;
  @override
  final bool? linchpin;
  @override
  final String? rationale;
  @override
  final String? wouldBeWrongIf;
  @override
  final KeyAssumptionInputStatusEnum? status;
  @override
  final BuiltList<String>? indicatorIds;
  @override
  final DateTime? reviewDue;

  factory _$KeyAssumptionInput([
    void Function(KeyAssumptionInputBuilder)? updates,
  ]) => (KeyAssumptionInputBuilder()..update(updates))._build();

  _$KeyAssumptionInput._({
    required this.text,
    this.linchpin,
    this.rationale,
    this.wouldBeWrongIf,
    this.status,
    this.indicatorIds,
    this.reviewDue,
  }) : super._();
  @override
  KeyAssumptionInput rebuild(
    void Function(KeyAssumptionInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  KeyAssumptionInputBuilder toBuilder() =>
      KeyAssumptionInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KeyAssumptionInput &&
        text == other.text &&
        linchpin == other.linchpin &&
        rationale == other.rationale &&
        wouldBeWrongIf == other.wouldBeWrongIf &&
        status == other.status &&
        indicatorIds == other.indicatorIds &&
        reviewDue == other.reviewDue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, linchpin.hashCode);
    _$hash = $jc(_$hash, rationale.hashCode);
    _$hash = $jc(_$hash, wouldBeWrongIf.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, indicatorIds.hashCode);
    _$hash = $jc(_$hash, reviewDue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'KeyAssumptionInput')
          ..add('text', text)
          ..add('linchpin', linchpin)
          ..add('rationale', rationale)
          ..add('wouldBeWrongIf', wouldBeWrongIf)
          ..add('status', status)
          ..add('indicatorIds', indicatorIds)
          ..add('reviewDue', reviewDue))
        .toString();
  }
}

class KeyAssumptionInputBuilder
    implements Builder<KeyAssumptionInput, KeyAssumptionInputBuilder> {
  _$KeyAssumptionInput? _$v;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  bool? _linchpin;
  bool? get linchpin => _$this._linchpin;
  set linchpin(bool? linchpin) => _$this._linchpin = linchpin;

  String? _rationale;
  String? get rationale => _$this._rationale;
  set rationale(String? rationale) => _$this._rationale = rationale;

  String? _wouldBeWrongIf;
  String? get wouldBeWrongIf => _$this._wouldBeWrongIf;
  set wouldBeWrongIf(String? wouldBeWrongIf) =>
      _$this._wouldBeWrongIf = wouldBeWrongIf;

  KeyAssumptionInputStatusEnum? _status;
  KeyAssumptionInputStatusEnum? get status => _$this._status;
  set status(KeyAssumptionInputStatusEnum? status) => _$this._status = status;

  ListBuilder<String>? _indicatorIds;
  ListBuilder<String> get indicatorIds =>
      _$this._indicatorIds ??= ListBuilder<String>();
  set indicatorIds(ListBuilder<String>? indicatorIds) =>
      _$this._indicatorIds = indicatorIds;

  DateTime? _reviewDue;
  DateTime? get reviewDue => _$this._reviewDue;
  set reviewDue(DateTime? reviewDue) => _$this._reviewDue = reviewDue;

  KeyAssumptionInputBuilder() {
    KeyAssumptionInput._defaults(this);
  }

  KeyAssumptionInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _text = $v.text;
      _linchpin = $v.linchpin;
      _rationale = $v.rationale;
      _wouldBeWrongIf = $v.wouldBeWrongIf;
      _status = $v.status;
      _indicatorIds = $v.indicatorIds?.toBuilder();
      _reviewDue = $v.reviewDue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KeyAssumptionInput other) {
    _$v = other as _$KeyAssumptionInput;
  }

  @override
  void update(void Function(KeyAssumptionInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  KeyAssumptionInput build() => _build();

  _$KeyAssumptionInput _build() {
    _$KeyAssumptionInput _$result;
    try {
      _$result =
          _$v ??
          _$KeyAssumptionInput._(
            text: BuiltValueNullFieldError.checkNotNull(
              text,
              r'KeyAssumptionInput',
              'text',
            ),
            linchpin: linchpin,
            rationale: rationale,
            wouldBeWrongIf: wouldBeWrongIf,
            status: status,
            indicatorIds: _indicatorIds?.build(),
            reviewDue: reviewDue,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'indicatorIds';
        _indicatorIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'KeyAssumptionInput',
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
