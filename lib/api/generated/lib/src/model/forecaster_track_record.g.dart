// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecaster_track_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ForecasterTrackRecordLabelEnum _$forecasterTrackRecordLabelEnum_ok =
    const ForecasterTrackRecordLabelEnum._('ok');
const ForecasterTrackRecordLabelEnum
    _$forecasterTrackRecordLabelEnum_insufficient =
    const ForecasterTrackRecordLabelEnum._('insufficient');

ForecasterTrackRecordLabelEnum _$forecasterTrackRecordLabelEnumValueOf(
    String name) {
  switch (name) {
    case 'ok':
      return _$forecasterTrackRecordLabelEnum_ok;
    case 'insufficient':
      return _$forecasterTrackRecordLabelEnum_insufficient;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ForecasterTrackRecordLabelEnum>
    _$forecasterTrackRecordLabelEnumValues = BuiltSet<
        ForecasterTrackRecordLabelEnum>(const <ForecasterTrackRecordLabelEnum>[
  _$forecasterTrackRecordLabelEnum_ok,
  _$forecasterTrackRecordLabelEnum_insufficient,
]);

Serializer<ForecasterTrackRecordLabelEnum>
    _$forecasterTrackRecordLabelEnumSerializer =
    _$ForecasterTrackRecordLabelEnumSerializer();

class _$ForecasterTrackRecordLabelEnumSerializer
    implements PrimitiveSerializer<ForecasterTrackRecordLabelEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ok': 'ok',
    'insufficient': 'insufficient',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ok': 'ok',
    'insufficient': 'insufficient',
  };

  @override
  final Iterable<Type> types = const <Type>[ForecasterTrackRecordLabelEnum];
  @override
  final String wireName = 'ForecasterTrackRecordLabelEnum';

  @override
  Object serialize(
          Serializers serializers, ForecasterTrackRecordLabelEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ForecasterTrackRecordLabelEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ForecasterTrackRecordLabelEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ForecasterTrackRecord extends ForecasterTrackRecord {
  @override
  final int nResolved;
  @override
  final num? brier;
  @override
  final ForecasterTrackRecordLabelEnum label;

  factory _$ForecasterTrackRecord(
          [void Function(ForecasterTrackRecordBuilder)? updates]) =>
      (ForecasterTrackRecordBuilder()..update(updates))._build();

  _$ForecasterTrackRecord._(
      {required this.nResolved, this.brier, required this.label})
      : super._();
  @override
  ForecasterTrackRecord rebuild(
          void Function(ForecasterTrackRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForecasterTrackRecordBuilder toBuilder() =>
      ForecasterTrackRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForecasterTrackRecord &&
        nResolved == other.nResolved &&
        brier == other.brier &&
        label == other.label;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nResolved.hashCode);
    _$hash = $jc(_$hash, brier.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ForecasterTrackRecord')
          ..add('nResolved', nResolved)
          ..add('brier', brier)
          ..add('label', label))
        .toString();
  }
}

class ForecasterTrackRecordBuilder
    implements Builder<ForecasterTrackRecord, ForecasterTrackRecordBuilder> {
  _$ForecasterTrackRecord? _$v;

  int? _nResolved;
  int? get nResolved => _$this._nResolved;
  set nResolved(int? nResolved) => _$this._nResolved = nResolved;

  num? _brier;
  num? get brier => _$this._brier;
  set brier(num? brier) => _$this._brier = brier;

  ForecasterTrackRecordLabelEnum? _label;
  ForecasterTrackRecordLabelEnum? get label => _$this._label;
  set label(ForecasterTrackRecordLabelEnum? label) => _$this._label = label;

  ForecasterTrackRecordBuilder() {
    ForecasterTrackRecord._defaults(this);
  }

  ForecasterTrackRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nResolved = $v.nResolved;
      _brier = $v.brier;
      _label = $v.label;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForecasterTrackRecord other) {
    _$v = other as _$ForecasterTrackRecord;
  }

  @override
  void update(void Function(ForecasterTrackRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForecasterTrackRecord build() => _build();

  _$ForecasterTrackRecord _build() {
    final _$result = _$v ??
        _$ForecasterTrackRecord._(
          nResolved: BuiltValueNullFieldError.checkNotNull(
              nResolved, r'ForecasterTrackRecord', 'nResolved'),
          brier: brier,
          label: BuiltValueNullFieldError.checkNotNull(
              label, r'ForecasterTrackRecord', 'label'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
