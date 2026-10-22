// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_search_hit.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SavedSearchHitMatchedByEnum _$savedSearchHitMatchedByEnum_text =
    const SavedSearchHitMatchedByEnum._('text');
const SavedSearchHitMatchedByEnum _$savedSearchHitMatchedByEnum_semantic =
    const SavedSearchHitMatchedByEnum._('semantic');
const SavedSearchHitMatchedByEnum _$savedSearchHitMatchedByEnum_hybrid =
    const SavedSearchHitMatchedByEnum._('hybrid');
const SavedSearchHitMatchedByEnum _$savedSearchHitMatchedByEnum_filter =
    const SavedSearchHitMatchedByEnum._('filter');

SavedSearchHitMatchedByEnum _$savedSearchHitMatchedByEnumValueOf(String name) {
  switch (name) {
    case 'text':
      return _$savedSearchHitMatchedByEnum_text;
    case 'semantic':
      return _$savedSearchHitMatchedByEnum_semantic;
    case 'hybrid':
      return _$savedSearchHitMatchedByEnum_hybrid;
    case 'filter':
      return _$savedSearchHitMatchedByEnum_filter;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SavedSearchHitMatchedByEnum>
    _$savedSearchHitMatchedByEnumValues =
    BuiltSet<SavedSearchHitMatchedByEnum>(const <SavedSearchHitMatchedByEnum>[
  _$savedSearchHitMatchedByEnum_text,
  _$savedSearchHitMatchedByEnum_semantic,
  _$savedSearchHitMatchedByEnum_hybrid,
  _$savedSearchHitMatchedByEnum_filter,
]);

Serializer<SavedSearchHitMatchedByEnum>
    _$savedSearchHitMatchedByEnumSerializer =
    _$SavedSearchHitMatchedByEnumSerializer();

class _$SavedSearchHitMatchedByEnumSerializer
    implements PrimitiveSerializer<SavedSearchHitMatchedByEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'text': 'text',
    'semantic': 'semantic',
    'hybrid': 'hybrid',
    'filter': 'filter',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'text': 'text',
    'semantic': 'semantic',
    'hybrid': 'hybrid',
    'filter': 'filter',
  };

  @override
  final Iterable<Type> types = const <Type>[SavedSearchHitMatchedByEnum];
  @override
  final String wireName = 'SavedSearchHitMatchedByEnum';

  @override
  Object serialize(Serializers serializers, SavedSearchHitMatchedByEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SavedSearchHitMatchedByEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SavedSearchHitMatchedByEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SavedSearchHit extends SavedSearchHit {
  @override
  final ObjectEnvelope envelope;
  @override
  final num? score;
  @override
  final SavedSearchHitMatchedByEnum? matchedBy;

  factory _$SavedSearchHit([void Function(SavedSearchHitBuilder)? updates]) =>
      (SavedSearchHitBuilder()..update(updates))._build();

  _$SavedSearchHit._({required this.envelope, this.score, this.matchedBy})
      : super._();
  @override
  SavedSearchHit rebuild(void Function(SavedSearchHitBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SavedSearchHitBuilder toBuilder() => SavedSearchHitBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SavedSearchHit &&
        envelope == other.envelope &&
        score == other.score &&
        matchedBy == other.matchedBy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, envelope.hashCode);
    _$hash = $jc(_$hash, score.hashCode);
    _$hash = $jc(_$hash, matchedBy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SavedSearchHit')
          ..add('envelope', envelope)
          ..add('score', score)
          ..add('matchedBy', matchedBy))
        .toString();
  }
}

class SavedSearchHitBuilder
    implements Builder<SavedSearchHit, SavedSearchHitBuilder> {
  _$SavedSearchHit? _$v;

  ObjectEnvelopeBuilder? _envelope;
  ObjectEnvelopeBuilder get envelope =>
      _$this._envelope ??= ObjectEnvelopeBuilder();
  set envelope(ObjectEnvelopeBuilder? envelope) => _$this._envelope = envelope;

  num? _score;
  num? get score => _$this._score;
  set score(num? score) => _$this._score = score;

  SavedSearchHitMatchedByEnum? _matchedBy;
  SavedSearchHitMatchedByEnum? get matchedBy => _$this._matchedBy;
  set matchedBy(SavedSearchHitMatchedByEnum? matchedBy) =>
      _$this._matchedBy = matchedBy;

  SavedSearchHitBuilder() {
    SavedSearchHit._defaults(this);
  }

  SavedSearchHitBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _envelope = $v.envelope.toBuilder();
      _score = $v.score;
      _matchedBy = $v.matchedBy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SavedSearchHit other) {
    _$v = other as _$SavedSearchHit;
  }

  @override
  void update(void Function(SavedSearchHitBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SavedSearchHit build() => _build();

  _$SavedSearchHit _build() {
    _$SavedSearchHit _$result;
    try {
      _$result = _$v ??
          _$SavedSearchHit._(
            envelope: envelope.build(),
            score: score,
            matchedBy: matchedBy,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'envelope';
        envelope.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SavedSearchHit', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
