// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ask_citation_provenance.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AskCitationProvenance extends AskCitationProvenance {
  @override
  final BuiltList<String> refs;
  @override
  final String? reason;

  factory _$AskCitationProvenance([
    void Function(AskCitationProvenanceBuilder)? updates,
  ]) => (AskCitationProvenanceBuilder()..update(updates))._build();

  _$AskCitationProvenance._({required this.refs, this.reason}) : super._();
  @override
  AskCitationProvenance rebuild(
    void Function(AskCitationProvenanceBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AskCitationProvenanceBuilder toBuilder() =>
      AskCitationProvenanceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AskCitationProvenance &&
        refs == other.refs &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, refs.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AskCitationProvenance')
          ..add('refs', refs)
          ..add('reason', reason))
        .toString();
  }
}

class AskCitationProvenanceBuilder
    implements Builder<AskCitationProvenance, AskCitationProvenanceBuilder> {
  _$AskCitationProvenance? _$v;

  ListBuilder<String>? _refs;
  ListBuilder<String> get refs => _$this._refs ??= ListBuilder<String>();
  set refs(ListBuilder<String>? refs) => _$this._refs = refs;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  AskCitationProvenanceBuilder() {
    AskCitationProvenance._defaults(this);
  }

  AskCitationProvenanceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _refs = $v.refs.toBuilder();
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AskCitationProvenance other) {
    _$v = other as _$AskCitationProvenance;
  }

  @override
  void update(void Function(AskCitationProvenanceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AskCitationProvenance build() => _build();

  _$AskCitationProvenance _build() {
    _$AskCitationProvenance _$result;
    try {
      _$result =
          _$v ?? _$AskCitationProvenance._(refs: refs.build(), reason: reason);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'refs';
        refs.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AskCitationProvenance',
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
