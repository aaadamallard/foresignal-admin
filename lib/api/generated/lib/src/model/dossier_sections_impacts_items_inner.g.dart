// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dossier_sections_impacts_items_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DossierSectionsImpactsItemsInner
    extends DossierSectionsImpactsItemsInner {
  @override
  final String findingId;
  @override
  final String impactFamily;
  @override
  final String? admin1;
  @override
  final num pImpact;
  @override
  final ImpactRateInterval? interval;
  @override
  final int? dependencyPaths;
  @override
  final BuiltList<String> labels;
  @override
  final String? questionId;

  factory _$DossierSectionsImpactsItemsInner([
    void Function(DossierSectionsImpactsItemsInnerBuilder)? updates,
  ]) => (DossierSectionsImpactsItemsInnerBuilder()..update(updates))._build();

  _$DossierSectionsImpactsItemsInner._({
    required this.findingId,
    required this.impactFamily,
    this.admin1,
    required this.pImpact,
    this.interval,
    this.dependencyPaths,
    required this.labels,
    this.questionId,
  }) : super._();
  @override
  DossierSectionsImpactsItemsInner rebuild(
    void Function(DossierSectionsImpactsItemsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DossierSectionsImpactsItemsInnerBuilder toBuilder() =>
      DossierSectionsImpactsItemsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DossierSectionsImpactsItemsInner &&
        findingId == other.findingId &&
        impactFamily == other.impactFamily &&
        admin1 == other.admin1 &&
        pImpact == other.pImpact &&
        interval == other.interval &&
        dependencyPaths == other.dependencyPaths &&
        labels == other.labels &&
        questionId == other.questionId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, findingId.hashCode);
    _$hash = $jc(_$hash, impactFamily.hashCode);
    _$hash = $jc(_$hash, admin1.hashCode);
    _$hash = $jc(_$hash, pImpact.hashCode);
    _$hash = $jc(_$hash, interval.hashCode);
    _$hash = $jc(_$hash, dependencyPaths.hashCode);
    _$hash = $jc(_$hash, labels.hashCode);
    _$hash = $jc(_$hash, questionId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DossierSectionsImpactsItemsInner')
          ..add('findingId', findingId)
          ..add('impactFamily', impactFamily)
          ..add('admin1', admin1)
          ..add('pImpact', pImpact)
          ..add('interval', interval)
          ..add('dependencyPaths', dependencyPaths)
          ..add('labels', labels)
          ..add('questionId', questionId))
        .toString();
  }
}

class DossierSectionsImpactsItemsInnerBuilder
    implements
        Builder<
          DossierSectionsImpactsItemsInner,
          DossierSectionsImpactsItemsInnerBuilder
        > {
  _$DossierSectionsImpactsItemsInner? _$v;

  String? _findingId;
  String? get findingId => _$this._findingId;
  set findingId(String? findingId) => _$this._findingId = findingId;

  String? _impactFamily;
  String? get impactFamily => _$this._impactFamily;
  set impactFamily(String? impactFamily) => _$this._impactFamily = impactFamily;

  String? _admin1;
  String? get admin1 => _$this._admin1;
  set admin1(String? admin1) => _$this._admin1 = admin1;

  num? _pImpact;
  num? get pImpact => _$this._pImpact;
  set pImpact(num? pImpact) => _$this._pImpact = pImpact;

  ImpactRateIntervalBuilder? _interval;
  ImpactRateIntervalBuilder get interval =>
      _$this._interval ??= ImpactRateIntervalBuilder();
  set interval(ImpactRateIntervalBuilder? interval) =>
      _$this._interval = interval;

  int? _dependencyPaths;
  int? get dependencyPaths => _$this._dependencyPaths;
  set dependencyPaths(int? dependencyPaths) =>
      _$this._dependencyPaths = dependencyPaths;

  ListBuilder<String>? _labels;
  ListBuilder<String> get labels => _$this._labels ??= ListBuilder<String>();
  set labels(ListBuilder<String>? labels) => _$this._labels = labels;

  String? _questionId;
  String? get questionId => _$this._questionId;
  set questionId(String? questionId) => _$this._questionId = questionId;

  DossierSectionsImpactsItemsInnerBuilder() {
    DossierSectionsImpactsItemsInner._defaults(this);
  }

  DossierSectionsImpactsItemsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _findingId = $v.findingId;
      _impactFamily = $v.impactFamily;
      _admin1 = $v.admin1;
      _pImpact = $v.pImpact;
      _interval = $v.interval?.toBuilder();
      _dependencyPaths = $v.dependencyPaths;
      _labels = $v.labels.toBuilder();
      _questionId = $v.questionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DossierSectionsImpactsItemsInner other) {
    _$v = other as _$DossierSectionsImpactsItemsInner;
  }

  @override
  void update(void Function(DossierSectionsImpactsItemsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DossierSectionsImpactsItemsInner build() => _build();

  _$DossierSectionsImpactsItemsInner _build() {
    _$DossierSectionsImpactsItemsInner _$result;
    try {
      _$result =
          _$v ??
          _$DossierSectionsImpactsItemsInner._(
            findingId: BuiltValueNullFieldError.checkNotNull(
              findingId,
              r'DossierSectionsImpactsItemsInner',
              'findingId',
            ),
            impactFamily: BuiltValueNullFieldError.checkNotNull(
              impactFamily,
              r'DossierSectionsImpactsItemsInner',
              'impactFamily',
            ),
            admin1: admin1,
            pImpact: BuiltValueNullFieldError.checkNotNull(
              pImpact,
              r'DossierSectionsImpactsItemsInner',
              'pImpact',
            ),
            interval: _interval?.build(),
            dependencyPaths: dependencyPaths,
            labels: labels.build(),
            questionId: questionId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'interval';
        _interval?.build();

        _$failedField = 'labels';
        labels.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'DossierSectionsImpactsItemsInner',
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
