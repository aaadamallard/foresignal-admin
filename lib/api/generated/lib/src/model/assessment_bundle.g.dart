// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assessment_bundle.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssessmentBundle extends AssessmentBundle {
  @override
  final Assessment assessment;
  @override
  final DateTime generatedAt;
  @override
  final BuiltList<AssessmentBundleObjectsInner> objects;
  @override
  final BuiltList<AnalysisManifest>? manifests;

  factory _$AssessmentBundle(
          [void Function(AssessmentBundleBuilder)? updates]) =>
      (AssessmentBundleBuilder()..update(updates))._build();

  _$AssessmentBundle._(
      {required this.assessment,
      required this.generatedAt,
      required this.objects,
      this.manifests})
      : super._();
  @override
  AssessmentBundle rebuild(void Function(AssessmentBundleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssessmentBundleBuilder toBuilder() =>
      AssessmentBundleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssessmentBundle &&
        assessment == other.assessment &&
        generatedAt == other.generatedAt &&
        objects == other.objects &&
        manifests == other.manifests;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, assessment.hashCode);
    _$hash = $jc(_$hash, generatedAt.hashCode);
    _$hash = $jc(_$hash, objects.hashCode);
    _$hash = $jc(_$hash, manifests.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AssessmentBundle')
          ..add('assessment', assessment)
          ..add('generatedAt', generatedAt)
          ..add('objects', objects)
          ..add('manifests', manifests))
        .toString();
  }
}

class AssessmentBundleBuilder
    implements Builder<AssessmentBundle, AssessmentBundleBuilder> {
  _$AssessmentBundle? _$v;

  AssessmentBuilder? _assessment;
  AssessmentBuilder get assessment =>
      _$this._assessment ??= AssessmentBuilder();
  set assessment(AssessmentBuilder? assessment) =>
      _$this._assessment = assessment;

  DateTime? _generatedAt;
  DateTime? get generatedAt => _$this._generatedAt;
  set generatedAt(DateTime? generatedAt) => _$this._generatedAt = generatedAt;

  ListBuilder<AssessmentBundleObjectsInner>? _objects;
  ListBuilder<AssessmentBundleObjectsInner> get objects =>
      _$this._objects ??= ListBuilder<AssessmentBundleObjectsInner>();
  set objects(ListBuilder<AssessmentBundleObjectsInner>? objects) =>
      _$this._objects = objects;

  ListBuilder<AnalysisManifest>? _manifests;
  ListBuilder<AnalysisManifest> get manifests =>
      _$this._manifests ??= ListBuilder<AnalysisManifest>();
  set manifests(ListBuilder<AnalysisManifest>? manifests) =>
      _$this._manifests = manifests;

  AssessmentBundleBuilder() {
    AssessmentBundle._defaults(this);
  }

  AssessmentBundleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _assessment = $v.assessment.toBuilder();
      _generatedAt = $v.generatedAt;
      _objects = $v.objects.toBuilder();
      _manifests = $v.manifests?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssessmentBundle other) {
    _$v = other as _$AssessmentBundle;
  }

  @override
  void update(void Function(AssessmentBundleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssessmentBundle build() => _build();

  _$AssessmentBundle _build() {
    _$AssessmentBundle _$result;
    try {
      _$result = _$v ??
          _$AssessmentBundle._(
            assessment: assessment.build(),
            generatedAt: BuiltValueNullFieldError.checkNotNull(
                generatedAt, r'AssessmentBundle', 'generatedAt'),
            objects: objects.build(),
            manifests: _manifests?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'assessment';
        assessment.build();

        _$failedField = 'objects';
        objects.build();
        _$failedField = 'manifests';
        _manifests?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AssessmentBundle', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
