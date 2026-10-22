// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spc_outlook_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SpcOutlookPayloadTypeEnum _$spcOutlookPayloadTypeEnum_cat =
    const SpcOutlookPayloadTypeEnum._('cat');
const SpcOutlookPayloadTypeEnum _$spcOutlookPayloadTypeEnum_torn =
    const SpcOutlookPayloadTypeEnum._('torn');
const SpcOutlookPayloadTypeEnum _$spcOutlookPayloadTypeEnum_wind =
    const SpcOutlookPayloadTypeEnum._('wind');
const SpcOutlookPayloadTypeEnum _$spcOutlookPayloadTypeEnum_hail =
    const SpcOutlookPayloadTypeEnum._('hail');
const SpcOutlookPayloadTypeEnum _$spcOutlookPayloadTypeEnum_sigtorn =
    const SpcOutlookPayloadTypeEnum._('sigtorn');
const SpcOutlookPayloadTypeEnum _$spcOutlookPayloadTypeEnum_sigwind =
    const SpcOutlookPayloadTypeEnum._('sigwind');
const SpcOutlookPayloadTypeEnum _$spcOutlookPayloadTypeEnum_sighail =
    const SpcOutlookPayloadTypeEnum._('sighail');
const SpcOutlookPayloadTypeEnum _$spcOutlookPayloadTypeEnum_prob =
    const SpcOutlookPayloadTypeEnum._('prob');
const SpcOutlookPayloadTypeEnum _$spcOutlookPayloadTypeEnum_sigprob =
    const SpcOutlookPayloadTypeEnum._('sigprob');

SpcOutlookPayloadTypeEnum _$spcOutlookPayloadTypeEnumValueOf(String name) {
  switch (name) {
    case 'cat':
      return _$spcOutlookPayloadTypeEnum_cat;
    case 'torn':
      return _$spcOutlookPayloadTypeEnum_torn;
    case 'wind':
      return _$spcOutlookPayloadTypeEnum_wind;
    case 'hail':
      return _$spcOutlookPayloadTypeEnum_hail;
    case 'sigtorn':
      return _$spcOutlookPayloadTypeEnum_sigtorn;
    case 'sigwind':
      return _$spcOutlookPayloadTypeEnum_sigwind;
    case 'sighail':
      return _$spcOutlookPayloadTypeEnum_sighail;
    case 'prob':
      return _$spcOutlookPayloadTypeEnum_prob;
    case 'sigprob':
      return _$spcOutlookPayloadTypeEnum_sigprob;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SpcOutlookPayloadTypeEnum> _$spcOutlookPayloadTypeEnumValues =
    BuiltSet<SpcOutlookPayloadTypeEnum>(const <SpcOutlookPayloadTypeEnum>[
      _$spcOutlookPayloadTypeEnum_cat,
      _$spcOutlookPayloadTypeEnum_torn,
      _$spcOutlookPayloadTypeEnum_wind,
      _$spcOutlookPayloadTypeEnum_hail,
      _$spcOutlookPayloadTypeEnum_sigtorn,
      _$spcOutlookPayloadTypeEnum_sigwind,
      _$spcOutlookPayloadTypeEnum_sighail,
      _$spcOutlookPayloadTypeEnum_prob,
      _$spcOutlookPayloadTypeEnum_sigprob,
    ]);

Serializer<SpcOutlookPayloadTypeEnum> _$spcOutlookPayloadTypeEnumSerializer =
    _$SpcOutlookPayloadTypeEnumSerializer();

class _$SpcOutlookPayloadTypeEnumSerializer
    implements PrimitiveSerializer<SpcOutlookPayloadTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'cat': 'cat',
    'torn': 'torn',
    'wind': 'wind',
    'hail': 'hail',
    'sigtorn': 'sigtorn',
    'sigwind': 'sigwind',
    'sighail': 'sighail',
    'prob': 'prob',
    'sigprob': 'sigprob',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'cat': 'cat',
    'torn': 'torn',
    'wind': 'wind',
    'hail': 'hail',
    'sigtorn': 'sigtorn',
    'sigwind': 'sigwind',
    'sighail': 'sighail',
    'prob': 'prob',
    'sigprob': 'sigprob',
  };

  @override
  final Iterable<Type> types = const <Type>[SpcOutlookPayloadTypeEnum];
  @override
  final String wireName = 'SpcOutlookPayloadTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    SpcOutlookPayloadTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SpcOutlookPayloadTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SpcOutlookPayloadTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SpcOutlookPayload extends SpcOutlookPayload {
  @override
  final int day;
  @override
  final SpcOutlookPayloadTypeEnum type;
  @override
  final String label;
  @override
  final String? label2;
  @override
  final int dn;
  @override
  final DateTime? issue;
  @override
  final DateTime? valid;
  @override
  final DateTime? expire;
  @override
  final String title;

  factory _$SpcOutlookPayload([
    void Function(SpcOutlookPayloadBuilder)? updates,
  ]) => (SpcOutlookPayloadBuilder()..update(updates))._build();

  _$SpcOutlookPayload._({
    required this.day,
    required this.type,
    required this.label,
    this.label2,
    required this.dn,
    this.issue,
    this.valid,
    this.expire,
    required this.title,
  }) : super._();
  @override
  SpcOutlookPayload rebuild(void Function(SpcOutlookPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpcOutlookPayloadBuilder toBuilder() =>
      SpcOutlookPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpcOutlookPayload &&
        day == other.day &&
        type == other.type &&
        label == other.label &&
        label2 == other.label2 &&
        dn == other.dn &&
        issue == other.issue &&
        valid == other.valid &&
        expire == other.expire &&
        title == other.title;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, day.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, label2.hashCode);
    _$hash = $jc(_$hash, dn.hashCode);
    _$hash = $jc(_$hash, issue.hashCode);
    _$hash = $jc(_$hash, valid.hashCode);
    _$hash = $jc(_$hash, expire.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SpcOutlookPayload')
          ..add('day', day)
          ..add('type', type)
          ..add('label', label)
          ..add('label2', label2)
          ..add('dn', dn)
          ..add('issue', issue)
          ..add('valid', valid)
          ..add('expire', expire)
          ..add('title', title))
        .toString();
  }
}

class SpcOutlookPayloadBuilder
    implements Builder<SpcOutlookPayload, SpcOutlookPayloadBuilder> {
  _$SpcOutlookPayload? _$v;

  int? _day;
  int? get day => _$this._day;
  set day(int? day) => _$this._day = day;

  SpcOutlookPayloadTypeEnum? _type;
  SpcOutlookPayloadTypeEnum? get type => _$this._type;
  set type(SpcOutlookPayloadTypeEnum? type) => _$this._type = type;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _label2;
  String? get label2 => _$this._label2;
  set label2(String? label2) => _$this._label2 = label2;

  int? _dn;
  int? get dn => _$this._dn;
  set dn(int? dn) => _$this._dn = dn;

  DateTime? _issue;
  DateTime? get issue => _$this._issue;
  set issue(DateTime? issue) => _$this._issue = issue;

  DateTime? _valid;
  DateTime? get valid => _$this._valid;
  set valid(DateTime? valid) => _$this._valid = valid;

  DateTime? _expire;
  DateTime? get expire => _$this._expire;
  set expire(DateTime? expire) => _$this._expire = expire;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  SpcOutlookPayloadBuilder() {
    SpcOutlookPayload._defaults(this);
  }

  SpcOutlookPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _day = $v.day;
      _type = $v.type;
      _label = $v.label;
      _label2 = $v.label2;
      _dn = $v.dn;
      _issue = $v.issue;
      _valid = $v.valid;
      _expire = $v.expire;
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SpcOutlookPayload other) {
    _$v = other as _$SpcOutlookPayload;
  }

  @override
  void update(void Function(SpcOutlookPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SpcOutlookPayload build() => _build();

  _$SpcOutlookPayload _build() {
    final _$result =
        _$v ??
        _$SpcOutlookPayload._(
          day: BuiltValueNullFieldError.checkNotNull(
            day,
            r'SpcOutlookPayload',
            'day',
          ),
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'SpcOutlookPayload',
            'type',
          ),
          label: BuiltValueNullFieldError.checkNotNull(
            label,
            r'SpcOutlookPayload',
            'label',
          ),
          label2: label2,
          dn: BuiltValueNullFieldError.checkNotNull(
            dn,
            r'SpcOutlookPayload',
            'dn',
          ),
          issue: issue,
          valid: valid,
          expire: expire,
          title: BuiltValueNullFieldError.checkNotNull(
            title,
            r'SpcOutlookPayload',
            'title',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
