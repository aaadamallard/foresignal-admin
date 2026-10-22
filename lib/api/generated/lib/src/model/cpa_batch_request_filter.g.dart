// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cpa_batch_request_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CpaBatchRequestFilter extends CpaBatchRequestFilter {
  @override
  final BuiltList<String>? kinds;
  @override
  final BuiltList<String>? sources;
  @override
  final BuiltList<num>? bbox;

  factory _$CpaBatchRequestFilter(
          [void Function(CpaBatchRequestFilterBuilder)? updates]) =>
      (CpaBatchRequestFilterBuilder()..update(updates))._build();

  _$CpaBatchRequestFilter._({this.kinds, this.sources, this.bbox}) : super._();
  @override
  CpaBatchRequestFilter rebuild(
          void Function(CpaBatchRequestFilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CpaBatchRequestFilterBuilder toBuilder() =>
      CpaBatchRequestFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CpaBatchRequestFilter &&
        kinds == other.kinds &&
        sources == other.sources &&
        bbox == other.bbox;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kinds.hashCode);
    _$hash = $jc(_$hash, sources.hashCode);
    _$hash = $jc(_$hash, bbox.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CpaBatchRequestFilter')
          ..add('kinds', kinds)
          ..add('sources', sources)
          ..add('bbox', bbox))
        .toString();
  }
}

class CpaBatchRequestFilterBuilder
    implements Builder<CpaBatchRequestFilter, CpaBatchRequestFilterBuilder> {
  _$CpaBatchRequestFilter? _$v;

  ListBuilder<String>? _kinds;
  ListBuilder<String> get kinds => _$this._kinds ??= ListBuilder<String>();
  set kinds(ListBuilder<String>? kinds) => _$this._kinds = kinds;

  ListBuilder<String>? _sources;
  ListBuilder<String> get sources => _$this._sources ??= ListBuilder<String>();
  set sources(ListBuilder<String>? sources) => _$this._sources = sources;

  ListBuilder<num>? _bbox;
  ListBuilder<num> get bbox => _$this._bbox ??= ListBuilder<num>();
  set bbox(ListBuilder<num>? bbox) => _$this._bbox = bbox;

  CpaBatchRequestFilterBuilder() {
    CpaBatchRequestFilter._defaults(this);
  }

  CpaBatchRequestFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kinds = $v.kinds?.toBuilder();
      _sources = $v.sources?.toBuilder();
      _bbox = $v.bbox?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CpaBatchRequestFilter other) {
    _$v = other as _$CpaBatchRequestFilter;
  }

  @override
  void update(void Function(CpaBatchRequestFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CpaBatchRequestFilter build() => _build();

  _$CpaBatchRequestFilter _build() {
    _$CpaBatchRequestFilter _$result;
    try {
      _$result = _$v ??
          _$CpaBatchRequestFilter._(
            kinds: _kinds?.build(),
            sources: _sources?.build(),
            bbox: _bbox?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'kinds';
        _kinds?.build();
        _$failedField = 'sources';
        _sources?.build();
        _$failedField = 'bbox';
        _bbox?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CpaBatchRequestFilter', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
