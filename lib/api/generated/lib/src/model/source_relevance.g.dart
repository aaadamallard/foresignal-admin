// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source_relevance.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SourceRelevanceVerdictEnum _$sourceRelevanceVerdictEnum_relevant =
    const SourceRelevanceVerdictEnum._('relevant');
const SourceRelevanceVerdictEnum _$sourceRelevanceVerdictEnum_marginal =
    const SourceRelevanceVerdictEnum._('marginal');
const SourceRelevanceVerdictEnum _$sourceRelevanceVerdictEnum_notMeaningful =
    const SourceRelevanceVerdictEnum._('notMeaningful');
const SourceRelevanceVerdictEnum _$sourceRelevanceVerdictEnum_unrated =
    const SourceRelevanceVerdictEnum._('unrated');
const SourceRelevanceVerdictEnum
_$sourceRelevanceVerdictEnum_unknownDefaultOpenApi =
    const SourceRelevanceVerdictEnum._('unknownDefaultOpenApi');

SourceRelevanceVerdictEnum _$sourceRelevanceVerdictEnumValueOf(String name) {
  switch (name) {
    case 'relevant':
      return _$sourceRelevanceVerdictEnum_relevant;
    case 'marginal':
      return _$sourceRelevanceVerdictEnum_marginal;
    case 'notMeaningful':
      return _$sourceRelevanceVerdictEnum_notMeaningful;
    case 'unrated':
      return _$sourceRelevanceVerdictEnum_unrated;
    case 'unknownDefaultOpenApi':
      return _$sourceRelevanceVerdictEnum_unknownDefaultOpenApi;
    default:
      return _$sourceRelevanceVerdictEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SourceRelevanceVerdictEnum> _$sourceRelevanceVerdictEnumValues =
    BuiltSet<SourceRelevanceVerdictEnum>(const <SourceRelevanceVerdictEnum>[
      _$sourceRelevanceVerdictEnum_relevant,
      _$sourceRelevanceVerdictEnum_marginal,
      _$sourceRelevanceVerdictEnum_notMeaningful,
      _$sourceRelevanceVerdictEnum_unrated,
      _$sourceRelevanceVerdictEnum_unknownDefaultOpenApi,
    ]);

Serializer<SourceRelevanceVerdictEnum> _$sourceRelevanceVerdictEnumSerializer =
    _$SourceRelevanceVerdictEnumSerializer();

class _$SourceRelevanceVerdictEnumSerializer
    implements PrimitiveSerializer<SourceRelevanceVerdictEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'relevant': 'relevant',
    'marginal': 'marginal',
    'notMeaningful': 'not-meaningful',
    'unrated': 'unrated',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'relevant': 'relevant',
    'marginal': 'marginal',
    'not-meaningful': 'notMeaningful',
    'unrated': 'unrated',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SourceRelevanceVerdictEnum];
  @override
  final String wireName = 'SourceRelevanceVerdictEnum';

  @override
  Object serialize(
    Serializers serializers,
    SourceRelevanceVerdictEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SourceRelevanceVerdictEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SourceRelevanceVerdictEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SourceRelevance extends SourceRelevance {
  @override
  final String sourceId;
  @override
  final String name;
  @override
  final BuiltList<String> kinds;
  @override
  final SourceRelevanceVerdictEnum verdict;
  @override
  final String reason;

  factory _$SourceRelevance([void Function(SourceRelevanceBuilder)? updates]) =>
      (SourceRelevanceBuilder()..update(updates))._build();

  _$SourceRelevance._({
    required this.sourceId,
    required this.name,
    required this.kinds,
    required this.verdict,
    required this.reason,
  }) : super._();
  @override
  SourceRelevance rebuild(void Function(SourceRelevanceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SourceRelevanceBuilder toBuilder() => SourceRelevanceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SourceRelevance &&
        sourceId == other.sourceId &&
        name == other.name &&
        kinds == other.kinds &&
        verdict == other.verdict &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, kinds.hashCode);
    _$hash = $jc(_$hash, verdict.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SourceRelevance')
          ..add('sourceId', sourceId)
          ..add('name', name)
          ..add('kinds', kinds)
          ..add('verdict', verdict)
          ..add('reason', reason))
        .toString();
  }
}

class SourceRelevanceBuilder
    implements Builder<SourceRelevance, SourceRelevanceBuilder> {
  _$SourceRelevance? _$v;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<String>? _kinds;
  ListBuilder<String> get kinds => _$this._kinds ??= ListBuilder<String>();
  set kinds(ListBuilder<String>? kinds) => _$this._kinds = kinds;

  SourceRelevanceVerdictEnum? _verdict;
  SourceRelevanceVerdictEnum? get verdict => _$this._verdict;
  set verdict(SourceRelevanceVerdictEnum? verdict) => _$this._verdict = verdict;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  SourceRelevanceBuilder() {
    SourceRelevance._defaults(this);
  }

  SourceRelevanceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sourceId = $v.sourceId;
      _name = $v.name;
      _kinds = $v.kinds.toBuilder();
      _verdict = $v.verdict;
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SourceRelevance other) {
    _$v = other as _$SourceRelevance;
  }

  @override
  void update(void Function(SourceRelevanceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SourceRelevance build() => _build();

  _$SourceRelevance _build() {
    _$SourceRelevance _$result;
    try {
      _$result =
          _$v ??
          _$SourceRelevance._(
            sourceId: BuiltValueNullFieldError.checkNotNull(
              sourceId,
              r'SourceRelevance',
              'sourceId',
            ),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'SourceRelevance',
              'name',
            ),
            kinds: kinds.build(),
            verdict: BuiltValueNullFieldError.checkNotNull(
              verdict,
              r'SourceRelevance',
              'verdict',
            ),
            reason: BuiltValueNullFieldError.checkNotNull(
              reason,
              r'SourceRelevance',
              'reason',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'kinds';
        kinds.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SourceRelevance',
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
