// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dossier_sections_overview_links.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DossierSectionsOverviewLinks extends DossierSectionsOverviewLinks {
  @override
  final String? full;

  factory _$DossierSectionsOverviewLinks(
          [void Function(DossierSectionsOverviewLinksBuilder)? updates]) =>
      (DossierSectionsOverviewLinksBuilder()..update(updates))._build();

  _$DossierSectionsOverviewLinks._({this.full}) : super._();
  @override
  DossierSectionsOverviewLinks rebuild(
          void Function(DossierSectionsOverviewLinksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DossierSectionsOverviewLinksBuilder toBuilder() =>
      DossierSectionsOverviewLinksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DossierSectionsOverviewLinks && full == other.full;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, full.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DossierSectionsOverviewLinks')
          ..add('full', full))
        .toString();
  }
}

class DossierSectionsOverviewLinksBuilder
    implements
        Builder<DossierSectionsOverviewLinks,
            DossierSectionsOverviewLinksBuilder> {
  _$DossierSectionsOverviewLinks? _$v;

  String? _full;
  String? get full => _$this._full;
  set full(String? full) => _$this._full = full;

  DossierSectionsOverviewLinksBuilder() {
    DossierSectionsOverviewLinks._defaults(this);
  }

  DossierSectionsOverviewLinksBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _full = $v.full;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DossierSectionsOverviewLinks other) {
    _$v = other as _$DossierSectionsOverviewLinks;
  }

  @override
  void update(void Function(DossierSectionsOverviewLinksBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DossierSectionsOverviewLinks build() => _build();

  _$DossierSectionsOverviewLinks _build() {
    final _$result = _$v ??
        _$DossierSectionsOverviewLinks._(
          full: full,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
