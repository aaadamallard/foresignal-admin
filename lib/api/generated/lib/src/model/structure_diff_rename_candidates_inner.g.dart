// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'structure_diff_rename_candidates_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const StructureDiffRenameCandidatesInnerReasonEnum
    _$structureDiffRenameCandidatesInnerReasonEnum_nameSimilarity =
    const StructureDiffRenameCandidatesInnerReasonEnum._('nameSimilarity');
const StructureDiffRenameCandidatesInnerReasonEnum
    _$structureDiffRenameCandidatesInnerReasonEnum_snakeCamel =
    const StructureDiffRenameCandidatesInnerReasonEnum._('snakeCamel');
const StructureDiffRenameCandidatesInnerReasonEnum
    _$structureDiffRenameCandidatesInnerReasonEnum_valueDistribution =
    const StructureDiffRenameCandidatesInnerReasonEnum._('valueDistribution');

StructureDiffRenameCandidatesInnerReasonEnum
    _$structureDiffRenameCandidatesInnerReasonEnumValueOf(String name) {
  switch (name) {
    case 'nameSimilarity':
      return _$structureDiffRenameCandidatesInnerReasonEnum_nameSimilarity;
    case 'snakeCamel':
      return _$structureDiffRenameCandidatesInnerReasonEnum_snakeCamel;
    case 'valueDistribution':
      return _$structureDiffRenameCandidatesInnerReasonEnum_valueDistribution;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<StructureDiffRenameCandidatesInnerReasonEnum>
    _$structureDiffRenameCandidatesInnerReasonEnumValues = BuiltSet<
        StructureDiffRenameCandidatesInnerReasonEnum>(const <StructureDiffRenameCandidatesInnerReasonEnum>[
  _$structureDiffRenameCandidatesInnerReasonEnum_nameSimilarity,
  _$structureDiffRenameCandidatesInnerReasonEnum_snakeCamel,
  _$structureDiffRenameCandidatesInnerReasonEnum_valueDistribution,
]);

Serializer<StructureDiffRenameCandidatesInnerReasonEnum>
    _$structureDiffRenameCandidatesInnerReasonEnumSerializer =
    _$StructureDiffRenameCandidatesInnerReasonEnumSerializer();

class _$StructureDiffRenameCandidatesInnerReasonEnumSerializer
    implements
        PrimitiveSerializer<StructureDiffRenameCandidatesInnerReasonEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'nameSimilarity': 'name-similarity',
    'snakeCamel': 'snake-camel',
    'valueDistribution': 'value-distribution',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'name-similarity': 'nameSimilarity',
    'snake-camel': 'snakeCamel',
    'value-distribution': 'valueDistribution',
  };

  @override
  final Iterable<Type> types = const <Type>[
    StructureDiffRenameCandidatesInnerReasonEnum
  ];
  @override
  final String wireName = 'StructureDiffRenameCandidatesInnerReasonEnum';

  @override
  Object serialize(Serializers serializers,
          StructureDiffRenameCandidatesInnerReasonEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  StructureDiffRenameCandidatesInnerReasonEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      StructureDiffRenameCandidatesInnerReasonEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$StructureDiffRenameCandidatesInner
    extends StructureDiffRenameCandidatesInner {
  @override
  final String from;
  @override
  final String to;
  @override
  final num score;
  @override
  final StructureDiffRenameCandidatesInnerReasonEnum reason;
  @override
  final bool? readByParser;

  factory _$StructureDiffRenameCandidatesInner(
          [void Function(StructureDiffRenameCandidatesInnerBuilder)?
              updates]) =>
      (StructureDiffRenameCandidatesInnerBuilder()..update(updates))._build();

  _$StructureDiffRenameCandidatesInner._(
      {required this.from,
      required this.to,
      required this.score,
      required this.reason,
      this.readByParser})
      : super._();
  @override
  StructureDiffRenameCandidatesInner rebuild(
          void Function(StructureDiffRenameCandidatesInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StructureDiffRenameCandidatesInnerBuilder toBuilder() =>
      StructureDiffRenameCandidatesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StructureDiffRenameCandidatesInner &&
        from == other.from &&
        to == other.to &&
        score == other.score &&
        reason == other.reason &&
        readByParser == other.readByParser;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, score.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, readByParser.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StructureDiffRenameCandidatesInner')
          ..add('from', from)
          ..add('to', to)
          ..add('score', score)
          ..add('reason', reason)
          ..add('readByParser', readByParser))
        .toString();
  }
}

class StructureDiffRenameCandidatesInnerBuilder
    implements
        Builder<StructureDiffRenameCandidatesInner,
            StructureDiffRenameCandidatesInnerBuilder> {
  _$StructureDiffRenameCandidatesInner? _$v;

  String? _from;
  String? get from => _$this._from;
  set from(String? from) => _$this._from = from;

  String? _to;
  String? get to => _$this._to;
  set to(String? to) => _$this._to = to;

  num? _score;
  num? get score => _$this._score;
  set score(num? score) => _$this._score = score;

  StructureDiffRenameCandidatesInnerReasonEnum? _reason;
  StructureDiffRenameCandidatesInnerReasonEnum? get reason => _$this._reason;
  set reason(StructureDiffRenameCandidatesInnerReasonEnum? reason) =>
      _$this._reason = reason;

  bool? _readByParser;
  bool? get readByParser => _$this._readByParser;
  set readByParser(bool? readByParser) => _$this._readByParser = readByParser;

  StructureDiffRenameCandidatesInnerBuilder() {
    StructureDiffRenameCandidatesInner._defaults(this);
  }

  StructureDiffRenameCandidatesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _from = $v.from;
      _to = $v.to;
      _score = $v.score;
      _reason = $v.reason;
      _readByParser = $v.readByParser;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StructureDiffRenameCandidatesInner other) {
    _$v = other as _$StructureDiffRenameCandidatesInner;
  }

  @override
  void update(
      void Function(StructureDiffRenameCandidatesInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StructureDiffRenameCandidatesInner build() => _build();

  _$StructureDiffRenameCandidatesInner _build() {
    final _$result = _$v ??
        _$StructureDiffRenameCandidatesInner._(
          from: BuiltValueNullFieldError.checkNotNull(
              from, r'StructureDiffRenameCandidatesInner', 'from'),
          to: BuiltValueNullFieldError.checkNotNull(
              to, r'StructureDiffRenameCandidatesInner', 'to'),
          score: BuiltValueNullFieldError.checkNotNull(
              score, r'StructureDiffRenameCandidatesInner', 'score'),
          reason: BuiltValueNullFieldError.checkNotNull(
              reason, r'StructureDiffRenameCandidatesInner', 'reason'),
          readByParser: readByParser,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
