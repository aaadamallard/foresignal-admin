// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SearchResultDocTypeEnum _$searchResultDocTypeEnum_record =
    const SearchResultDocTypeEnum._('record');
const SearchResultDocTypeEnum _$searchResultDocTypeEnum_briefing =
    const SearchResultDocTypeEnum._('briefing');
const SearchResultDocTypeEnum _$searchResultDocTypeEnum_alert =
    const SearchResultDocTypeEnum._('alert');

SearchResultDocTypeEnum _$searchResultDocTypeEnumValueOf(String name) {
  switch (name) {
    case 'record':
      return _$searchResultDocTypeEnum_record;
    case 'briefing':
      return _$searchResultDocTypeEnum_briefing;
    case 'alert':
      return _$searchResultDocTypeEnum_alert;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SearchResultDocTypeEnum> _$searchResultDocTypeEnumValues =
    BuiltSet<SearchResultDocTypeEnum>(const <SearchResultDocTypeEnum>[
  _$searchResultDocTypeEnum_record,
  _$searchResultDocTypeEnum_briefing,
  _$searchResultDocTypeEnum_alert,
]);

Serializer<SearchResultDocTypeEnum> _$searchResultDocTypeEnumSerializer =
    _$SearchResultDocTypeEnumSerializer();

class _$SearchResultDocTypeEnumSerializer
    implements PrimitiveSerializer<SearchResultDocTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'record': 'record',
    'briefing': 'briefing',
    'alert': 'alert',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'record': 'record',
    'briefing': 'briefing',
    'alert': 'alert',
  };

  @override
  final Iterable<Type> types = const <Type>[SearchResultDocTypeEnum];
  @override
  final String wireName = 'SearchResultDocTypeEnum';

  @override
  Object serialize(Serializers serializers, SearchResultDocTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SearchResultDocTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SearchResultDocTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SearchResult extends SearchResult {
  @override
  final SearchResultDocTypeEnum docType;
  @override
  final String docId;
  @override
  final num score;
  @override
  final String title;
  @override
  final String? snippet;
  @override
  final DateTime? observedAt;
  @override
  final String? source_;
  @override
  final String? kind;
  @override
  final Geometry? geometry;
  @override
  final Record? record;
  @override
  final int? seq;
  @override
  final DateTime? effectiveTime;

  factory _$SearchResult([void Function(SearchResultBuilder)? updates]) =>
      (SearchResultBuilder()..update(updates))._build();

  _$SearchResult._(
      {required this.docType,
      required this.docId,
      required this.score,
      required this.title,
      this.snippet,
      this.observedAt,
      this.source_,
      this.kind,
      this.geometry,
      this.record,
      this.seq,
      this.effectiveTime})
      : super._();
  @override
  SearchResult rebuild(void Function(SearchResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchResultBuilder toBuilder() => SearchResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchResult &&
        docType == other.docType &&
        docId == other.docId &&
        score == other.score &&
        title == other.title &&
        snippet == other.snippet &&
        observedAt == other.observedAt &&
        source_ == other.source_ &&
        kind == other.kind &&
        geometry == other.geometry &&
        record == other.record &&
        seq == other.seq &&
        effectiveTime == other.effectiveTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, docType.hashCode);
    _$hash = $jc(_$hash, docId.hashCode);
    _$hash = $jc(_$hash, score.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, snippet.hashCode);
    _$hash = $jc(_$hash, observedAt.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, geometry.hashCode);
    _$hash = $jc(_$hash, record.hashCode);
    _$hash = $jc(_$hash, seq.hashCode);
    _$hash = $jc(_$hash, effectiveTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SearchResult')
          ..add('docType', docType)
          ..add('docId', docId)
          ..add('score', score)
          ..add('title', title)
          ..add('snippet', snippet)
          ..add('observedAt', observedAt)
          ..add('source_', source_)
          ..add('kind', kind)
          ..add('geometry', geometry)
          ..add('record', record)
          ..add('seq', seq)
          ..add('effectiveTime', effectiveTime))
        .toString();
  }
}

class SearchResultBuilder
    implements Builder<SearchResult, SearchResultBuilder> {
  _$SearchResult? _$v;

  SearchResultDocTypeEnum? _docType;
  SearchResultDocTypeEnum? get docType => _$this._docType;
  set docType(SearchResultDocTypeEnum? docType) => _$this._docType = docType;

  String? _docId;
  String? get docId => _$this._docId;
  set docId(String? docId) => _$this._docId = docId;

  num? _score;
  num? get score => _$this._score;
  set score(num? score) => _$this._score = score;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _snippet;
  String? get snippet => _$this._snippet;
  set snippet(String? snippet) => _$this._snippet = snippet;

  DateTime? _observedAt;
  DateTime? get observedAt => _$this._observedAt;
  set observedAt(DateTime? observedAt) => _$this._observedAt = observedAt;

  String? _source_;
  String? get source_ => _$this._source_;
  set source_(String? source_) => _$this._source_ = source_;

  String? _kind;
  String? get kind => _$this._kind;
  set kind(String? kind) => _$this._kind = kind;

  GeometryBuilder? _geometry;
  GeometryBuilder get geometry => _$this._geometry ??= GeometryBuilder();
  set geometry(GeometryBuilder? geometry) => _$this._geometry = geometry;

  RecordBuilder? _record;
  RecordBuilder get record => _$this._record ??= RecordBuilder();
  set record(RecordBuilder? record) => _$this._record = record;

  int? _seq;
  int? get seq => _$this._seq;
  set seq(int? seq) => _$this._seq = seq;

  DateTime? _effectiveTime;
  DateTime? get effectiveTime => _$this._effectiveTime;
  set effectiveTime(DateTime? effectiveTime) =>
      _$this._effectiveTime = effectiveTime;

  SearchResultBuilder() {
    SearchResult._defaults(this);
  }

  SearchResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _docType = $v.docType;
      _docId = $v.docId;
      _score = $v.score;
      _title = $v.title;
      _snippet = $v.snippet;
      _observedAt = $v.observedAt;
      _source_ = $v.source_;
      _kind = $v.kind;
      _geometry = $v.geometry?.toBuilder();
      _record = $v.record?.toBuilder();
      _seq = $v.seq;
      _effectiveTime = $v.effectiveTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchResult other) {
    _$v = other as _$SearchResult;
  }

  @override
  void update(void Function(SearchResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SearchResult build() => _build();

  _$SearchResult _build() {
    _$SearchResult _$result;
    try {
      _$result = _$v ??
          _$SearchResult._(
            docType: BuiltValueNullFieldError.checkNotNull(
                docType, r'SearchResult', 'docType'),
            docId: BuiltValueNullFieldError.checkNotNull(
                docId, r'SearchResult', 'docId'),
            score: BuiltValueNullFieldError.checkNotNull(
                score, r'SearchResult', 'score'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'SearchResult', 'title'),
            snippet: snippet,
            observedAt: observedAt,
            source_: source_,
            kind: kind,
            geometry: _geometry?.build(),
            record: _record?.build(),
            seq: seq,
            effectiveTime: effectiveTime,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'geometry';
        _geometry?.build();
        _$failedField = 'record';
        _record?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SearchResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
