// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dossier_sections_overview_facets.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DossierSectionsOverviewFacets extends DossierSectionsOverviewFacets {
  @override
  final BuiltMap<String, int>? byEvidenceClass;
  @override
  final BuiltMap<String, int>? bySource;

  factory _$DossierSectionsOverviewFacets([
    void Function(DossierSectionsOverviewFacetsBuilder)? updates,
  ]) => (DossierSectionsOverviewFacetsBuilder()..update(updates))._build();

  _$DossierSectionsOverviewFacets._({this.byEvidenceClass, this.bySource})
    : super._();
  @override
  DossierSectionsOverviewFacets rebuild(
    void Function(DossierSectionsOverviewFacetsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DossierSectionsOverviewFacetsBuilder toBuilder() =>
      DossierSectionsOverviewFacetsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DossierSectionsOverviewFacets &&
        byEvidenceClass == other.byEvidenceClass &&
        bySource == other.bySource;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, byEvidenceClass.hashCode);
    _$hash = $jc(_$hash, bySource.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DossierSectionsOverviewFacets')
          ..add('byEvidenceClass', byEvidenceClass)
          ..add('bySource', bySource))
        .toString();
  }
}

class DossierSectionsOverviewFacetsBuilder
    implements
        Builder<
          DossierSectionsOverviewFacets,
          DossierSectionsOverviewFacetsBuilder
        > {
  _$DossierSectionsOverviewFacets? _$v;

  MapBuilder<String, int>? _byEvidenceClass;
  MapBuilder<String, int> get byEvidenceClass =>
      _$this._byEvidenceClass ??= MapBuilder<String, int>();
  set byEvidenceClass(MapBuilder<String, int>? byEvidenceClass) =>
      _$this._byEvidenceClass = byEvidenceClass;

  MapBuilder<String, int>? _bySource;
  MapBuilder<String, int> get bySource =>
      _$this._bySource ??= MapBuilder<String, int>();
  set bySource(MapBuilder<String, int>? bySource) =>
      _$this._bySource = bySource;

  DossierSectionsOverviewFacetsBuilder() {
    DossierSectionsOverviewFacets._defaults(this);
  }

  DossierSectionsOverviewFacetsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _byEvidenceClass = $v.byEvidenceClass?.toBuilder();
      _bySource = $v.bySource?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DossierSectionsOverviewFacets other) {
    _$v = other as _$DossierSectionsOverviewFacets;
  }

  @override
  void update(void Function(DossierSectionsOverviewFacetsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DossierSectionsOverviewFacets build() => _build();

  _$DossierSectionsOverviewFacets _build() {
    _$DossierSectionsOverviewFacets _$result;
    try {
      _$result =
          _$v ??
          _$DossierSectionsOverviewFacets._(
            byEvidenceClass: _byEvidenceClass?.build(),
            bySource: _bySource?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'byEvidenceClass';
        _byEvidenceClass?.build();
        _$failedField = 'bySource';
        _bySource?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'DossierSectionsOverviewFacets',
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
