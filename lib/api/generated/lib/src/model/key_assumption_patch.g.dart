// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'key_assumption_patch.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const KeyAssumptionPatchStatusEnum _$keyAssumptionPatchStatusEnum_solid =
    const KeyAssumptionPatchStatusEnum._('solid');
const KeyAssumptionPatchStatusEnum _$keyAssumptionPatchStatusEnum_caveated =
    const KeyAssumptionPatchStatusEnum._('caveated');
const KeyAssumptionPatchStatusEnum _$keyAssumptionPatchStatusEnum_unsupported =
    const KeyAssumptionPatchStatusEnum._('unsupported');
const KeyAssumptionPatchStatusEnum _$keyAssumptionPatchStatusEnum_broken =
    const KeyAssumptionPatchStatusEnum._('broken');

KeyAssumptionPatchStatusEnum _$keyAssumptionPatchStatusEnumValueOf(
  String name,
) {
  switch (name) {
    case 'solid':
      return _$keyAssumptionPatchStatusEnum_solid;
    case 'caveated':
      return _$keyAssumptionPatchStatusEnum_caveated;
    case 'unsupported':
      return _$keyAssumptionPatchStatusEnum_unsupported;
    case 'broken':
      return _$keyAssumptionPatchStatusEnum_broken;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<KeyAssumptionPatchStatusEnum>
_$keyAssumptionPatchStatusEnumValues =
    BuiltSet<KeyAssumptionPatchStatusEnum>(const <KeyAssumptionPatchStatusEnum>[
      _$keyAssumptionPatchStatusEnum_solid,
      _$keyAssumptionPatchStatusEnum_caveated,
      _$keyAssumptionPatchStatusEnum_unsupported,
      _$keyAssumptionPatchStatusEnum_broken,
    ]);

Serializer<KeyAssumptionPatchStatusEnum>
_$keyAssumptionPatchStatusEnumSerializer =
    _$KeyAssumptionPatchStatusEnumSerializer();

class _$KeyAssumptionPatchStatusEnumSerializer
    implements PrimitiveSerializer<KeyAssumptionPatchStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'solid': 'solid',
    'caveated': 'caveated',
    'unsupported': 'unsupported',
    'broken': 'broken',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'solid': 'solid',
    'caveated': 'caveated',
    'unsupported': 'unsupported',
    'broken': 'broken',
  };

  @override
  final Iterable<Type> types = const <Type>[KeyAssumptionPatchStatusEnum];
  @override
  final String wireName = 'KeyAssumptionPatchStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    KeyAssumptionPatchStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  KeyAssumptionPatchStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => KeyAssumptionPatchStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$KeyAssumptionPatch extends KeyAssumptionPatch {
  @override
  final String? text;
  @override
  final bool? linchpin;
  @override
  final String? rationale;
  @override
  final String? wouldBeWrongIf;
  @override
  final KeyAssumptionPatchStatusEnum? status;
  @override
  final BuiltList<String>? indicatorIds;
  @override
  final DateTime? reviewDue;

  factory _$KeyAssumptionPatch([
    void Function(KeyAssumptionPatchBuilder)? updates,
  ]) => (KeyAssumptionPatchBuilder()..update(updates))._build();

  _$KeyAssumptionPatch._({
    this.text,
    this.linchpin,
    this.rationale,
    this.wouldBeWrongIf,
    this.status,
    this.indicatorIds,
    this.reviewDue,
  }) : super._();
  @override
  KeyAssumptionPatch rebuild(
    void Function(KeyAssumptionPatchBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  KeyAssumptionPatchBuilder toBuilder() =>
      KeyAssumptionPatchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KeyAssumptionPatch &&
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
    return (newBuiltValueToStringHelper(r'KeyAssumptionPatch')
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

class KeyAssumptionPatchBuilder
    implements Builder<KeyAssumptionPatch, KeyAssumptionPatchBuilder> {
  _$KeyAssumptionPatch? _$v;

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

  KeyAssumptionPatchStatusEnum? _status;
  KeyAssumptionPatchStatusEnum? get status => _$this._status;
  set status(KeyAssumptionPatchStatusEnum? status) => _$this._status = status;

  ListBuilder<String>? _indicatorIds;
  ListBuilder<String> get indicatorIds =>
      _$this._indicatorIds ??= ListBuilder<String>();
  set indicatorIds(ListBuilder<String>? indicatorIds) =>
      _$this._indicatorIds = indicatorIds;

  DateTime? _reviewDue;
  DateTime? get reviewDue => _$this._reviewDue;
  set reviewDue(DateTime? reviewDue) => _$this._reviewDue = reviewDue;

  KeyAssumptionPatchBuilder() {
    KeyAssumptionPatch._defaults(this);
  }

  KeyAssumptionPatchBuilder get _$this {
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
  void replace(KeyAssumptionPatch other) {
    _$v = other as _$KeyAssumptionPatch;
  }

  @override
  void update(void Function(KeyAssumptionPatchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  KeyAssumptionPatch build() => _build();

  _$KeyAssumptionPatch _build() {
    _$KeyAssumptionPatch _$result;
    try {
      _$result =
          _$v ??
          _$KeyAssumptionPatch._(
            text: text,
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
          r'KeyAssumptionPatch',
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
