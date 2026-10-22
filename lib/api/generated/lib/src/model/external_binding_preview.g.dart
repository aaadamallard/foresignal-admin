// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'external_binding_preview.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExternalBindingPreview extends ExternalBindingPreview {
  @override
  final int evaluated;
  @override
  final int matched;
  @override
  final BuiltList<ExternalBindingPreviewEffectsInner> effects;
  @override
  final BuiltList<String>? errors;

  factory _$ExternalBindingPreview([
    void Function(ExternalBindingPreviewBuilder)? updates,
  ]) => (ExternalBindingPreviewBuilder()..update(updates))._build();

  _$ExternalBindingPreview._({
    required this.evaluated,
    required this.matched,
    required this.effects,
    this.errors,
  }) : super._();
  @override
  ExternalBindingPreview rebuild(
    void Function(ExternalBindingPreviewBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ExternalBindingPreviewBuilder toBuilder() =>
      ExternalBindingPreviewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExternalBindingPreview &&
        evaluated == other.evaluated &&
        matched == other.matched &&
        effects == other.effects &&
        errors == other.errors;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, evaluated.hashCode);
    _$hash = $jc(_$hash, matched.hashCode);
    _$hash = $jc(_$hash, effects.hashCode);
    _$hash = $jc(_$hash, errors.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExternalBindingPreview')
          ..add('evaluated', evaluated)
          ..add('matched', matched)
          ..add('effects', effects)
          ..add('errors', errors))
        .toString();
  }
}

class ExternalBindingPreviewBuilder
    implements Builder<ExternalBindingPreview, ExternalBindingPreviewBuilder> {
  _$ExternalBindingPreview? _$v;

  int? _evaluated;
  int? get evaluated => _$this._evaluated;
  set evaluated(int? evaluated) => _$this._evaluated = evaluated;

  int? _matched;
  int? get matched => _$this._matched;
  set matched(int? matched) => _$this._matched = matched;

  ListBuilder<ExternalBindingPreviewEffectsInner>? _effects;
  ListBuilder<ExternalBindingPreviewEffectsInner> get effects =>
      _$this._effects ??= ListBuilder<ExternalBindingPreviewEffectsInner>();
  set effects(ListBuilder<ExternalBindingPreviewEffectsInner>? effects) =>
      _$this._effects = effects;

  ListBuilder<String>? _errors;
  ListBuilder<String> get errors => _$this._errors ??= ListBuilder<String>();
  set errors(ListBuilder<String>? errors) => _$this._errors = errors;

  ExternalBindingPreviewBuilder() {
    ExternalBindingPreview._defaults(this);
  }

  ExternalBindingPreviewBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _evaluated = $v.evaluated;
      _matched = $v.matched;
      _effects = $v.effects.toBuilder();
      _errors = $v.errors?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExternalBindingPreview other) {
    _$v = other as _$ExternalBindingPreview;
  }

  @override
  void update(void Function(ExternalBindingPreviewBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExternalBindingPreview build() => _build();

  _$ExternalBindingPreview _build() {
    _$ExternalBindingPreview _$result;
    try {
      _$result =
          _$v ??
          _$ExternalBindingPreview._(
            evaluated: BuiltValueNullFieldError.checkNotNull(
              evaluated,
              r'ExternalBindingPreview',
              'evaluated',
            ),
            matched: BuiltValueNullFieldError.checkNotNull(
              matched,
              r'ExternalBindingPreview',
              'matched',
            ),
            effects: effects.build(),
            errors: _errors?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'effects';
        effects.build();
        _$failedField = 'errors';
        _errors?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ExternalBindingPreview',
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
