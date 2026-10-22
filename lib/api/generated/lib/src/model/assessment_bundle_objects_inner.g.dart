// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assessment_bundle_objects_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssessmentBundleObjectsInner extends AssessmentBundleObjectsInner {
  @override
  final String ref;
  @override
  final ObjectEnvelope envelope;
  @override
  final BuiltMap<String, JsonObject?>? data;
  @override
  final Provenance? provenance;

  factory _$AssessmentBundleObjectsInner([
    void Function(AssessmentBundleObjectsInnerBuilder)? updates,
  ]) => (AssessmentBundleObjectsInnerBuilder()..update(updates))._build();

  _$AssessmentBundleObjectsInner._({
    required this.ref,
    required this.envelope,
    this.data,
    this.provenance,
  }) : super._();
  @override
  AssessmentBundleObjectsInner rebuild(
    void Function(AssessmentBundleObjectsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AssessmentBundleObjectsInnerBuilder toBuilder() =>
      AssessmentBundleObjectsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssessmentBundleObjectsInner &&
        ref == other.ref &&
        envelope == other.envelope &&
        data == other.data &&
        provenance == other.provenance;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, envelope.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, provenance.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AssessmentBundleObjectsInner')
          ..add('ref', ref)
          ..add('envelope', envelope)
          ..add('data', data)
          ..add('provenance', provenance))
        .toString();
  }
}

class AssessmentBundleObjectsInnerBuilder
    implements
        Builder<
          AssessmentBundleObjectsInner,
          AssessmentBundleObjectsInnerBuilder
        > {
  _$AssessmentBundleObjectsInner? _$v;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  ObjectEnvelopeBuilder? _envelope;
  ObjectEnvelopeBuilder get envelope =>
      _$this._envelope ??= ObjectEnvelopeBuilder();
  set envelope(ObjectEnvelopeBuilder? envelope) => _$this._envelope = envelope;

  MapBuilder<String, JsonObject?>? _data;
  MapBuilder<String, JsonObject?> get data =>
      _$this._data ??= MapBuilder<String, JsonObject?>();
  set data(MapBuilder<String, JsonObject?>? data) => _$this._data = data;

  ProvenanceBuilder? _provenance;
  ProvenanceBuilder get provenance =>
      _$this._provenance ??= ProvenanceBuilder();
  set provenance(ProvenanceBuilder? provenance) =>
      _$this._provenance = provenance;

  AssessmentBundleObjectsInnerBuilder() {
    AssessmentBundleObjectsInner._defaults(this);
  }

  AssessmentBundleObjectsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ref = $v.ref;
      _envelope = $v.envelope.toBuilder();
      _data = $v.data?.toBuilder();
      _provenance = $v.provenance?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssessmentBundleObjectsInner other) {
    _$v = other as _$AssessmentBundleObjectsInner;
  }

  @override
  void update(void Function(AssessmentBundleObjectsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssessmentBundleObjectsInner build() => _build();

  _$AssessmentBundleObjectsInner _build() {
    _$AssessmentBundleObjectsInner _$result;
    try {
      _$result =
          _$v ??
          _$AssessmentBundleObjectsInner._(
            ref: BuiltValueNullFieldError.checkNotNull(
              ref,
              r'AssessmentBundleObjectsInner',
              'ref',
            ),
            envelope: envelope.build(),
            data: _data?.build(),
            provenance: _provenance?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'envelope';
        envelope.build();
        _$failedField = 'data';
        _data?.build();
        _$failedField = 'provenance';
        _provenance?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AssessmentBundleObjectsInner',
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
