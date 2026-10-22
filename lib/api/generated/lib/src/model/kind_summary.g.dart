// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kind_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$KindSummary extends KindSummary {
  @override
  final String kind;
  @override
  final int currentCount;
  @override
  final BuiltList<String> sources;
  @override
  final KindDisplay? display;

  factory _$KindSummary([void Function(KindSummaryBuilder)? updates]) =>
      (KindSummaryBuilder()..update(updates))._build();

  _$KindSummary._({
    required this.kind,
    required this.currentCount,
    required this.sources,
    this.display,
  }) : super._();
  @override
  KindSummary rebuild(void Function(KindSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KindSummaryBuilder toBuilder() => KindSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KindSummary &&
        kind == other.kind &&
        currentCount == other.currentCount &&
        sources == other.sources &&
        display == other.display;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, currentCount.hashCode);
    _$hash = $jc(_$hash, sources.hashCode);
    _$hash = $jc(_$hash, display.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'KindSummary')
          ..add('kind', kind)
          ..add('currentCount', currentCount)
          ..add('sources', sources)
          ..add('display', display))
        .toString();
  }
}

class KindSummaryBuilder implements Builder<KindSummary, KindSummaryBuilder> {
  _$KindSummary? _$v;

  String? _kind;
  String? get kind => _$this._kind;
  set kind(String? kind) => _$this._kind = kind;

  int? _currentCount;
  int? get currentCount => _$this._currentCount;
  set currentCount(int? currentCount) => _$this._currentCount = currentCount;

  ListBuilder<String>? _sources;
  ListBuilder<String> get sources => _$this._sources ??= ListBuilder<String>();
  set sources(ListBuilder<String>? sources) => _$this._sources = sources;

  KindDisplayBuilder? _display;
  KindDisplayBuilder get display => _$this._display ??= KindDisplayBuilder();
  set display(KindDisplayBuilder? display) => _$this._display = display;

  KindSummaryBuilder() {
    KindSummary._defaults(this);
  }

  KindSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kind = $v.kind;
      _currentCount = $v.currentCount;
      _sources = $v.sources.toBuilder();
      _display = $v.display?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KindSummary other) {
    _$v = other as _$KindSummary;
  }

  @override
  void update(void Function(KindSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  KindSummary build() => _build();

  _$KindSummary _build() {
    _$KindSummary _$result;
    try {
      _$result =
          _$v ??
          _$KindSummary._(
            kind: BuiltValueNullFieldError.checkNotNull(
              kind,
              r'KindSummary',
              'kind',
            ),
            currentCount: BuiltValueNullFieldError.checkNotNull(
              currentCount,
              r'KindSummary',
              'currentCount',
            ),
            sources: sources.build(),
            display: _display?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sources';
        sources.build();
        _$failedField = 'display';
        _display?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'KindSummary',
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
