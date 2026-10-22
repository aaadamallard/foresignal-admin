// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proposed_patch.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProposedPatch extends ProposedPatch {
  @override
  final String file;
  @override
  final String unifiedDiff;
  @override
  final bool patchApplies;
  @override
  final ProposedPatchSanityChecks? sanityChecks;
  @override
  final String label;
  @override
  final String? error;

  factory _$ProposedPatch([void Function(ProposedPatchBuilder)? updates]) =>
      (ProposedPatchBuilder()..update(updates))._build();

  _$ProposedPatch._(
      {required this.file,
      required this.unifiedDiff,
      required this.patchApplies,
      this.sanityChecks,
      required this.label,
      this.error})
      : super._();
  @override
  ProposedPatch rebuild(void Function(ProposedPatchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProposedPatchBuilder toBuilder() => ProposedPatchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProposedPatch &&
        file == other.file &&
        unifiedDiff == other.unifiedDiff &&
        patchApplies == other.patchApplies &&
        sanityChecks == other.sanityChecks &&
        label == other.label &&
        error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, file.hashCode);
    _$hash = $jc(_$hash, unifiedDiff.hashCode);
    _$hash = $jc(_$hash, patchApplies.hashCode);
    _$hash = $jc(_$hash, sanityChecks.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProposedPatch')
          ..add('file', file)
          ..add('unifiedDiff', unifiedDiff)
          ..add('patchApplies', patchApplies)
          ..add('sanityChecks', sanityChecks)
          ..add('label', label)
          ..add('error', error))
        .toString();
  }
}

class ProposedPatchBuilder
    implements Builder<ProposedPatch, ProposedPatchBuilder> {
  _$ProposedPatch? _$v;

  String? _file;
  String? get file => _$this._file;
  set file(String? file) => _$this._file = file;

  String? _unifiedDiff;
  String? get unifiedDiff => _$this._unifiedDiff;
  set unifiedDiff(String? unifiedDiff) => _$this._unifiedDiff = unifiedDiff;

  bool? _patchApplies;
  bool? get patchApplies => _$this._patchApplies;
  set patchApplies(bool? patchApplies) => _$this._patchApplies = patchApplies;

  ProposedPatchSanityChecksBuilder? _sanityChecks;
  ProposedPatchSanityChecksBuilder get sanityChecks =>
      _$this._sanityChecks ??= ProposedPatchSanityChecksBuilder();
  set sanityChecks(ProposedPatchSanityChecksBuilder? sanityChecks) =>
      _$this._sanityChecks = sanityChecks;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  ProposedPatchBuilder() {
    ProposedPatch._defaults(this);
  }

  ProposedPatchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _file = $v.file;
      _unifiedDiff = $v.unifiedDiff;
      _patchApplies = $v.patchApplies;
      _sanityChecks = $v.sanityChecks?.toBuilder();
      _label = $v.label;
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProposedPatch other) {
    _$v = other as _$ProposedPatch;
  }

  @override
  void update(void Function(ProposedPatchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProposedPatch build() => _build();

  _$ProposedPatch _build() {
    _$ProposedPatch _$result;
    try {
      _$result = _$v ??
          _$ProposedPatch._(
            file: BuiltValueNullFieldError.checkNotNull(
                file, r'ProposedPatch', 'file'),
            unifiedDiff: BuiltValueNullFieldError.checkNotNull(
                unifiedDiff, r'ProposedPatch', 'unifiedDiff'),
            patchApplies: BuiltValueNullFieldError.checkNotNull(
                patchApplies, r'ProposedPatch', 'patchApplies'),
            sanityChecks: _sanityChecks?.build(),
            label: BuiltValueNullFieldError.checkNotNull(
                label, r'ProposedPatch', 'label'),
            error: error,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sanityChecks';
        _sanityChecks?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ProposedPatch', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
