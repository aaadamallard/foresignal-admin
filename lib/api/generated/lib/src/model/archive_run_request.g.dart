// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'archive_run_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ArchiveRunRequest extends ArchiveRunRequest {
  @override
  final DateTime? cutoff;
  @override
  final BuiltList<String>? sources;
  @override
  final bool? dryRun;

  factory _$ArchiveRunRequest([
    void Function(ArchiveRunRequestBuilder)? updates,
  ]) => (ArchiveRunRequestBuilder()..update(updates))._build();

  _$ArchiveRunRequest._({this.cutoff, this.sources, this.dryRun}) : super._();
  @override
  ArchiveRunRequest rebuild(void Function(ArchiveRunRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArchiveRunRequestBuilder toBuilder() =>
      ArchiveRunRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ArchiveRunRequest &&
        cutoff == other.cutoff &&
        sources == other.sources &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cutoff.hashCode);
    _$hash = $jc(_$hash, sources.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ArchiveRunRequest')
          ..add('cutoff', cutoff)
          ..add('sources', sources)
          ..add('dryRun', dryRun))
        .toString();
  }
}

class ArchiveRunRequestBuilder
    implements Builder<ArchiveRunRequest, ArchiveRunRequestBuilder> {
  _$ArchiveRunRequest? _$v;

  DateTime? _cutoff;
  DateTime? get cutoff => _$this._cutoff;
  set cutoff(DateTime? cutoff) => _$this._cutoff = cutoff;

  ListBuilder<String>? _sources;
  ListBuilder<String> get sources => _$this._sources ??= ListBuilder<String>();
  set sources(ListBuilder<String>? sources) => _$this._sources = sources;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  ArchiveRunRequestBuilder() {
    ArchiveRunRequest._defaults(this);
  }

  ArchiveRunRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cutoff = $v.cutoff;
      _sources = $v.sources?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ArchiveRunRequest other) {
    _$v = other as _$ArchiveRunRequest;
  }

  @override
  void update(void Function(ArchiveRunRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ArchiveRunRequest build() => _build();

  _$ArchiveRunRequest _build() {
    _$ArchiveRunRequest _$result;
    try {
      _$result =
          _$v ??
          _$ArchiveRunRequest._(
            cutoff: cutoff,
            sources: _sources?.build(),
            dryRun: dryRun,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sources';
        _sources?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ArchiveRunRequest',
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
