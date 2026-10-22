// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reference_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReferenceStatus extends ReferenceStatus {
  @override
  final BuiltList<ReferenceDataset> datasets;
  @override
  final bool? loading;
  @override
  final BuiltList<String>? attributions;
  @override
  final String? boundaryNote;

  factory _$ReferenceStatus([void Function(ReferenceStatusBuilder)? updates]) =>
      (ReferenceStatusBuilder()..update(updates))._build();

  _$ReferenceStatus._({
    required this.datasets,
    this.loading,
    this.attributions,
    this.boundaryNote,
  }) : super._();
  @override
  ReferenceStatus rebuild(void Function(ReferenceStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReferenceStatusBuilder toBuilder() => ReferenceStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReferenceStatus &&
        datasets == other.datasets &&
        loading == other.loading &&
        attributions == other.attributions &&
        boundaryNote == other.boundaryNote;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, datasets.hashCode);
    _$hash = $jc(_$hash, loading.hashCode);
    _$hash = $jc(_$hash, attributions.hashCode);
    _$hash = $jc(_$hash, boundaryNote.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReferenceStatus')
          ..add('datasets', datasets)
          ..add('loading', loading)
          ..add('attributions', attributions)
          ..add('boundaryNote', boundaryNote))
        .toString();
  }
}

class ReferenceStatusBuilder
    implements Builder<ReferenceStatus, ReferenceStatusBuilder> {
  _$ReferenceStatus? _$v;

  ListBuilder<ReferenceDataset>? _datasets;
  ListBuilder<ReferenceDataset> get datasets =>
      _$this._datasets ??= ListBuilder<ReferenceDataset>();
  set datasets(ListBuilder<ReferenceDataset>? datasets) =>
      _$this._datasets = datasets;

  bool? _loading;
  bool? get loading => _$this._loading;
  set loading(bool? loading) => _$this._loading = loading;

  ListBuilder<String>? _attributions;
  ListBuilder<String> get attributions =>
      _$this._attributions ??= ListBuilder<String>();
  set attributions(ListBuilder<String>? attributions) =>
      _$this._attributions = attributions;

  String? _boundaryNote;
  String? get boundaryNote => _$this._boundaryNote;
  set boundaryNote(String? boundaryNote) => _$this._boundaryNote = boundaryNote;

  ReferenceStatusBuilder() {
    ReferenceStatus._defaults(this);
  }

  ReferenceStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _datasets = $v.datasets.toBuilder();
      _loading = $v.loading;
      _attributions = $v.attributions?.toBuilder();
      _boundaryNote = $v.boundaryNote;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReferenceStatus other) {
    _$v = other as _$ReferenceStatus;
  }

  @override
  void update(void Function(ReferenceStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReferenceStatus build() => _build();

  _$ReferenceStatus _build() {
    _$ReferenceStatus _$result;
    try {
      _$result =
          _$v ??
          _$ReferenceStatus._(
            datasets: datasets.build(),
            loading: loading,
            attributions: _attributions?.build(),
            boundaryNote: boundaryNote,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'datasets';
        datasets.build();

        _$failedField = 'attributions';
        _attributions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ReferenceStatus',
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
