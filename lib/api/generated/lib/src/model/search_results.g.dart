// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_results.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SearchResultsModeEnum _$searchResultsModeEnum_hybrid =
    const SearchResultsModeEnum._('hybrid');
const SearchResultsModeEnum _$searchResultsModeEnum_semantic =
    const SearchResultsModeEnum._('semantic');
const SearchResultsModeEnum _$searchResultsModeEnum_text =
    const SearchResultsModeEnum._('text');

SearchResultsModeEnum _$searchResultsModeEnumValueOf(String name) {
  switch (name) {
    case 'hybrid':
      return _$searchResultsModeEnum_hybrid;
    case 'semantic':
      return _$searchResultsModeEnum_semantic;
    case 'text':
      return _$searchResultsModeEnum_text;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SearchResultsModeEnum> _$searchResultsModeEnumValues =
    BuiltSet<SearchResultsModeEnum>(const <SearchResultsModeEnum>[
      _$searchResultsModeEnum_hybrid,
      _$searchResultsModeEnum_semantic,
      _$searchResultsModeEnum_text,
    ]);

Serializer<SearchResultsModeEnum> _$searchResultsModeEnumSerializer =
    _$SearchResultsModeEnumSerializer();

class _$SearchResultsModeEnumSerializer
    implements PrimitiveSerializer<SearchResultsModeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'hybrid': 'hybrid',
    'semantic': 'semantic',
    'text': 'text',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'hybrid': 'hybrid',
    'semantic': 'semantic',
    'text': 'text',
  };

  @override
  final Iterable<Type> types = const <Type>[SearchResultsModeEnum];
  @override
  final String wireName = 'SearchResultsModeEnum';

  @override
  Object serialize(
    Serializers serializers,
    SearchResultsModeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SearchResultsModeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SearchResultsModeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SearchResults extends SearchResults {
  @override
  final SearchResultsModeEnum mode;
  @override
  final BuiltList<SearchResult> items;
  @override
  final bool? degraded;
  @override
  final BuiltList<Attribution>? attributions;
  @override
  final int? licenceFiltered;
  @override
  final String? reason;

  factory _$SearchResults([void Function(SearchResultsBuilder)? updates]) =>
      (SearchResultsBuilder()..update(updates))._build();

  _$SearchResults._({
    required this.mode,
    required this.items,
    this.degraded,
    this.attributions,
    this.licenceFiltered,
    this.reason,
  }) : super._();
  @override
  SearchResults rebuild(void Function(SearchResultsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchResultsBuilder toBuilder() => SearchResultsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchResults &&
        mode == other.mode &&
        items == other.items &&
        degraded == other.degraded &&
        attributions == other.attributions &&
        licenceFiltered == other.licenceFiltered &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, degraded.hashCode);
    _$hash = $jc(_$hash, attributions.hashCode);
    _$hash = $jc(_$hash, licenceFiltered.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SearchResults')
          ..add('mode', mode)
          ..add('items', items)
          ..add('degraded', degraded)
          ..add('attributions', attributions)
          ..add('licenceFiltered', licenceFiltered)
          ..add('reason', reason))
        .toString();
  }
}

class SearchResultsBuilder
    implements Builder<SearchResults, SearchResultsBuilder> {
  _$SearchResults? _$v;

  SearchResultsModeEnum? _mode;
  SearchResultsModeEnum? get mode => _$this._mode;
  set mode(SearchResultsModeEnum? mode) => _$this._mode = mode;

  ListBuilder<SearchResult>? _items;
  ListBuilder<SearchResult> get items =>
      _$this._items ??= ListBuilder<SearchResult>();
  set items(ListBuilder<SearchResult>? items) => _$this._items = items;

  bool? _degraded;
  bool? get degraded => _$this._degraded;
  set degraded(bool? degraded) => _$this._degraded = degraded;

  ListBuilder<Attribution>? _attributions;
  ListBuilder<Attribution> get attributions =>
      _$this._attributions ??= ListBuilder<Attribution>();
  set attributions(ListBuilder<Attribution>? attributions) =>
      _$this._attributions = attributions;

  int? _licenceFiltered;
  int? get licenceFiltered => _$this._licenceFiltered;
  set licenceFiltered(int? licenceFiltered) =>
      _$this._licenceFiltered = licenceFiltered;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  SearchResultsBuilder() {
    SearchResults._defaults(this);
  }

  SearchResultsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mode = $v.mode;
      _items = $v.items.toBuilder();
      _degraded = $v.degraded;
      _attributions = $v.attributions?.toBuilder();
      _licenceFiltered = $v.licenceFiltered;
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchResults other) {
    _$v = other as _$SearchResults;
  }

  @override
  void update(void Function(SearchResultsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SearchResults build() => _build();

  _$SearchResults _build() {
    _$SearchResults _$result;
    try {
      _$result =
          _$v ??
          _$SearchResults._(
            mode: BuiltValueNullFieldError.checkNotNull(
              mode,
              r'SearchResults',
              'mode',
            ),
            items: items.build(),
            degraded: degraded,
            attributions: _attributions?.build(),
            licenceFiltered: licenceFiltered,
            reason: reason,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();

        _$failedField = 'attributions';
        _attributions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SearchResults',
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
