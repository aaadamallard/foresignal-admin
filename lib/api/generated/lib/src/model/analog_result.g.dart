// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analog_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AnalogResultMethodEnum _$analogResultMethodEnum_fused =
    const AnalogResultMethodEnum._('fused');
const AnalogResultMethodEnum _$analogResultMethodEnum_featureOnly =
    const AnalogResultMethodEnum._('featureOnly');
const AnalogResultMethodEnum _$analogResultMethodEnum_unknownDefaultOpenApi =
    const AnalogResultMethodEnum._('unknownDefaultOpenApi');

AnalogResultMethodEnum _$analogResultMethodEnumValueOf(String name) {
  switch (name) {
    case 'fused':
      return _$analogResultMethodEnum_fused;
    case 'featureOnly':
      return _$analogResultMethodEnum_featureOnly;
    case 'unknownDefaultOpenApi':
      return _$analogResultMethodEnum_unknownDefaultOpenApi;
    default:
      return _$analogResultMethodEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<AnalogResultMethodEnum> _$analogResultMethodEnumValues =
    BuiltSet<AnalogResultMethodEnum>(const <AnalogResultMethodEnum>[
      _$analogResultMethodEnum_fused,
      _$analogResultMethodEnum_featureOnly,
      _$analogResultMethodEnum_unknownDefaultOpenApi,
    ]);

Serializer<AnalogResultMethodEnum> _$analogResultMethodEnumSerializer =
    _$AnalogResultMethodEnumSerializer();

class _$AnalogResultMethodEnumSerializer
    implements PrimitiveSerializer<AnalogResultMethodEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'fused': 'fused',
    'featureOnly': 'feature-only',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'fused': 'fused',
    'feature-only': 'featureOnly',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AnalogResultMethodEnum];
  @override
  final String wireName = 'AnalogResultMethodEnum';

  @override
  Object serialize(
    Serializers serializers,
    AnalogResultMethodEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AnalogResultMethodEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AnalogResultMethodEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AnalogResult extends AnalogResult {
  @override
  final AnalogResultTarget target;
  @override
  final int k;
  @override
  final int countFound;
  @override
  final AnalogResultMethodEnum method;
  @override
  final String? methodNote;
  @override
  final AnalogResultSignature? signature;
  @override
  final BuiltList<Analog> analogs;
  @override
  final AnalogResultOutcomeDistribution? outcomeDistribution;
  @override
  final BuiltList<Caveat> caveats;
  @override
  final DetectorRef detector;
  @override
  final String manifestId;

  factory _$AnalogResult([void Function(AnalogResultBuilder)? updates]) =>
      (AnalogResultBuilder()..update(updates))._build();

  _$AnalogResult._({
    required this.target,
    required this.k,
    required this.countFound,
    required this.method,
    this.methodNote,
    this.signature,
    required this.analogs,
    this.outcomeDistribution,
    required this.caveats,
    required this.detector,
    required this.manifestId,
  }) : super._();
  @override
  AnalogResult rebuild(void Function(AnalogResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnalogResultBuilder toBuilder() => AnalogResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalogResult &&
        target == other.target &&
        k == other.k &&
        countFound == other.countFound &&
        method == other.method &&
        methodNote == other.methodNote &&
        signature == other.signature &&
        analogs == other.analogs &&
        outcomeDistribution == other.outcomeDistribution &&
        caveats == other.caveats &&
        detector == other.detector &&
        manifestId == other.manifestId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, target.hashCode);
    _$hash = $jc(_$hash, k.hashCode);
    _$hash = $jc(_$hash, countFound.hashCode);
    _$hash = $jc(_$hash, method.hashCode);
    _$hash = $jc(_$hash, methodNote.hashCode);
    _$hash = $jc(_$hash, signature.hashCode);
    _$hash = $jc(_$hash, analogs.hashCode);
    _$hash = $jc(_$hash, outcomeDistribution.hashCode);
    _$hash = $jc(_$hash, caveats.hashCode);
    _$hash = $jc(_$hash, detector.hashCode);
    _$hash = $jc(_$hash, manifestId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnalogResult')
          ..add('target', target)
          ..add('k', k)
          ..add('countFound', countFound)
          ..add('method', method)
          ..add('methodNote', methodNote)
          ..add('signature', signature)
          ..add('analogs', analogs)
          ..add('outcomeDistribution', outcomeDistribution)
          ..add('caveats', caveats)
          ..add('detector', detector)
          ..add('manifestId', manifestId))
        .toString();
  }
}

class AnalogResultBuilder
    implements Builder<AnalogResult, AnalogResultBuilder> {
  _$AnalogResult? _$v;

  AnalogResultTargetBuilder? _target;
  AnalogResultTargetBuilder get target =>
      _$this._target ??= AnalogResultTargetBuilder();
  set target(AnalogResultTargetBuilder? target) => _$this._target = target;

  int? _k;
  int? get k => _$this._k;
  set k(int? k) => _$this._k = k;

  int? _countFound;
  int? get countFound => _$this._countFound;
  set countFound(int? countFound) => _$this._countFound = countFound;

  AnalogResultMethodEnum? _method;
  AnalogResultMethodEnum? get method => _$this._method;
  set method(AnalogResultMethodEnum? method) => _$this._method = method;

  String? _methodNote;
  String? get methodNote => _$this._methodNote;
  set methodNote(String? methodNote) => _$this._methodNote = methodNote;

  AnalogResultSignatureBuilder? _signature;
  AnalogResultSignatureBuilder get signature =>
      _$this._signature ??= AnalogResultSignatureBuilder();
  set signature(AnalogResultSignatureBuilder? signature) =>
      _$this._signature = signature;

  ListBuilder<Analog>? _analogs;
  ListBuilder<Analog> get analogs => _$this._analogs ??= ListBuilder<Analog>();
  set analogs(ListBuilder<Analog>? analogs) => _$this._analogs = analogs;

  AnalogResultOutcomeDistributionBuilder? _outcomeDistribution;
  AnalogResultOutcomeDistributionBuilder get outcomeDistribution =>
      _$this._outcomeDistribution ??= AnalogResultOutcomeDistributionBuilder();
  set outcomeDistribution(
    AnalogResultOutcomeDistributionBuilder? outcomeDistribution,
  ) => _$this._outcomeDistribution = outcomeDistribution;

  ListBuilder<Caveat>? _caveats;
  ListBuilder<Caveat> get caveats => _$this._caveats ??= ListBuilder<Caveat>();
  set caveats(ListBuilder<Caveat>? caveats) => _$this._caveats = caveats;

  DetectorRefBuilder? _detector;
  DetectorRefBuilder get detector => _$this._detector ??= DetectorRefBuilder();
  set detector(DetectorRefBuilder? detector) => _$this._detector = detector;

  String? _manifestId;
  String? get manifestId => _$this._manifestId;
  set manifestId(String? manifestId) => _$this._manifestId = manifestId;

  AnalogResultBuilder() {
    AnalogResult._defaults(this);
  }

  AnalogResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _target = $v.target.toBuilder();
      _k = $v.k;
      _countFound = $v.countFound;
      _method = $v.method;
      _methodNote = $v.methodNote;
      _signature = $v.signature?.toBuilder();
      _analogs = $v.analogs.toBuilder();
      _outcomeDistribution = $v.outcomeDistribution?.toBuilder();
      _caveats = $v.caveats.toBuilder();
      _detector = $v.detector.toBuilder();
      _manifestId = $v.manifestId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalogResult other) {
    _$v = other as _$AnalogResult;
  }

  @override
  void update(void Function(AnalogResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalogResult build() => _build();

  _$AnalogResult _build() {
    _$AnalogResult _$result;
    try {
      _$result =
          _$v ??
          _$AnalogResult._(
            target: target.build(),
            k: BuiltValueNullFieldError.checkNotNull(k, r'AnalogResult', 'k'),
            countFound: BuiltValueNullFieldError.checkNotNull(
              countFound,
              r'AnalogResult',
              'countFound',
            ),
            method: BuiltValueNullFieldError.checkNotNull(
              method,
              r'AnalogResult',
              'method',
            ),
            methodNote: methodNote,
            signature: _signature?.build(),
            analogs: analogs.build(),
            outcomeDistribution: _outcomeDistribution?.build(),
            caveats: caveats.build(),
            detector: detector.build(),
            manifestId: BuiltValueNullFieldError.checkNotNull(
              manifestId,
              r'AnalogResult',
              'manifestId',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'target';
        target.build();

        _$failedField = 'signature';
        _signature?.build();
        _$failedField = 'analogs';
        analogs.build();
        _$failedField = 'outcomeDistribution';
        _outcomeDistribution?.build();
        _$failedField = 'caveats';
        caveats.build();
        _$failedField = 'detector';
        detector.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AnalogResult',
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
