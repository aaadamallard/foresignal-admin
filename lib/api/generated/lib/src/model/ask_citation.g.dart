// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ask_citation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AskCitationTypeEnum _$askCitationTypeEnum_record =
    const AskCitationTypeEnum._('record');
const AskCitationTypeEnum _$askCitationTypeEnum_alert =
    const AskCitationTypeEnum._('alert');
const AskCitationTypeEnum _$askCitationTypeEnum_briefing =
    const AskCitationTypeEnum._('briefing');
const AskCitationTypeEnum _$askCitationTypeEnum_weather =
    const AskCitationTypeEnum._('weather');
const AskCitationTypeEnum _$askCitationTypeEnum_unknownDefaultOpenApi =
    const AskCitationTypeEnum._('unknownDefaultOpenApi');

AskCitationTypeEnum _$askCitationTypeEnumValueOf(String name) {
  switch (name) {
    case 'record':
      return _$askCitationTypeEnum_record;
    case 'alert':
      return _$askCitationTypeEnum_alert;
    case 'briefing':
      return _$askCitationTypeEnum_briefing;
    case 'weather':
      return _$askCitationTypeEnum_weather;
    case 'unknownDefaultOpenApi':
      return _$askCitationTypeEnum_unknownDefaultOpenApi;
    default:
      return _$askCitationTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<AskCitationTypeEnum> _$askCitationTypeEnumValues =
    BuiltSet<AskCitationTypeEnum>(const <AskCitationTypeEnum>[
      _$askCitationTypeEnum_record,
      _$askCitationTypeEnum_alert,
      _$askCitationTypeEnum_briefing,
      _$askCitationTypeEnum_weather,
      _$askCitationTypeEnum_unknownDefaultOpenApi,
    ]);

Serializer<AskCitationTypeEnum> _$askCitationTypeEnumSerializer =
    _$AskCitationTypeEnumSerializer();

class _$AskCitationTypeEnumSerializer
    implements PrimitiveSerializer<AskCitationTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'record': 'record',
    'alert': 'alert',
    'briefing': 'briefing',
    'weather': 'weather',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'record': 'record',
    'alert': 'alert',
    'briefing': 'briefing',
    'weather': 'weather',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AskCitationTypeEnum];
  @override
  final String wireName = 'AskCitationTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    AskCitationTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AskCitationTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AskCitationTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AskCitation extends AskCitation {
  @override
  final String id;
  @override
  final int? seq;
  @override
  final String title;
  @override
  final AskCitationTypeEnum? type;
  @override
  final String? productId;
  @override
  final String? frameKey;
  @override
  final String? run;
  @override
  final int? step;
  @override
  final DateTime? validTime;
  @override
  final num? ageMinutes;
  @override
  final AskCitationProvenance? provenance;
  @override
  final AskCitationCorroboration? corroboration;

  factory _$AskCitation([void Function(AskCitationBuilder)? updates]) =>
      (AskCitationBuilder()..update(updates))._build();

  _$AskCitation._({
    required this.id,
    this.seq,
    required this.title,
    this.type,
    this.productId,
    this.frameKey,
    this.run,
    this.step,
    this.validTime,
    this.ageMinutes,
    this.provenance,
    this.corroboration,
  }) : super._();
  @override
  AskCitation rebuild(void Function(AskCitationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AskCitationBuilder toBuilder() => AskCitationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AskCitation &&
        id == other.id &&
        seq == other.seq &&
        title == other.title &&
        type == other.type &&
        productId == other.productId &&
        frameKey == other.frameKey &&
        run == other.run &&
        step == other.step &&
        validTime == other.validTime &&
        ageMinutes == other.ageMinutes &&
        provenance == other.provenance &&
        corroboration == other.corroboration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, seq.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, productId.hashCode);
    _$hash = $jc(_$hash, frameKey.hashCode);
    _$hash = $jc(_$hash, run.hashCode);
    _$hash = $jc(_$hash, step.hashCode);
    _$hash = $jc(_$hash, validTime.hashCode);
    _$hash = $jc(_$hash, ageMinutes.hashCode);
    _$hash = $jc(_$hash, provenance.hashCode);
    _$hash = $jc(_$hash, corroboration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AskCitation')
          ..add('id', id)
          ..add('seq', seq)
          ..add('title', title)
          ..add('type', type)
          ..add('productId', productId)
          ..add('frameKey', frameKey)
          ..add('run', run)
          ..add('step', step)
          ..add('validTime', validTime)
          ..add('ageMinutes', ageMinutes)
          ..add('provenance', provenance)
          ..add('corroboration', corroboration))
        .toString();
  }
}

class AskCitationBuilder implements Builder<AskCitation, AskCitationBuilder> {
  _$AskCitation? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _seq;
  int? get seq => _$this._seq;
  set seq(int? seq) => _$this._seq = seq;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  AskCitationTypeEnum? _type;
  AskCitationTypeEnum? get type => _$this._type;
  set type(AskCitationTypeEnum? type) => _$this._type = type;

  String? _productId;
  String? get productId => _$this._productId;
  set productId(String? productId) => _$this._productId = productId;

  String? _frameKey;
  String? get frameKey => _$this._frameKey;
  set frameKey(String? frameKey) => _$this._frameKey = frameKey;

  String? _run;
  String? get run => _$this._run;
  set run(String? run) => _$this._run = run;

  int? _step;
  int? get step => _$this._step;
  set step(int? step) => _$this._step = step;

  DateTime? _validTime;
  DateTime? get validTime => _$this._validTime;
  set validTime(DateTime? validTime) => _$this._validTime = validTime;

  num? _ageMinutes;
  num? get ageMinutes => _$this._ageMinutes;
  set ageMinutes(num? ageMinutes) => _$this._ageMinutes = ageMinutes;

  AskCitationProvenanceBuilder? _provenance;
  AskCitationProvenanceBuilder get provenance =>
      _$this._provenance ??= AskCitationProvenanceBuilder();
  set provenance(AskCitationProvenanceBuilder? provenance) =>
      _$this._provenance = provenance;

  AskCitationCorroborationBuilder? _corroboration;
  AskCitationCorroborationBuilder get corroboration =>
      _$this._corroboration ??= AskCitationCorroborationBuilder();
  set corroboration(AskCitationCorroborationBuilder? corroboration) =>
      _$this._corroboration = corroboration;

  AskCitationBuilder() {
    AskCitation._defaults(this);
  }

  AskCitationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _seq = $v.seq;
      _title = $v.title;
      _type = $v.type;
      _productId = $v.productId;
      _frameKey = $v.frameKey;
      _run = $v.run;
      _step = $v.step;
      _validTime = $v.validTime;
      _ageMinutes = $v.ageMinutes;
      _provenance = $v.provenance?.toBuilder();
      _corroboration = $v.corroboration?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AskCitation other) {
    _$v = other as _$AskCitation;
  }

  @override
  void update(void Function(AskCitationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AskCitation build() => _build();

  _$AskCitation _build() {
    _$AskCitation _$result;
    try {
      _$result =
          _$v ??
          _$AskCitation._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'AskCitation', 'id'),
            seq: seq,
            title: BuiltValueNullFieldError.checkNotNull(
              title,
              r'AskCitation',
              'title',
            ),
            type: type,
            productId: productId,
            frameKey: frameKey,
            run: run,
            step: step,
            validTime: validTime,
            ageMinutes: ageMinutes,
            provenance: _provenance?.build(),
            corroboration: _corroboration?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'provenance';
        _provenance?.build();
        _$failedField = 'corroboration';
        _corroboration?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AskCitation',
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
