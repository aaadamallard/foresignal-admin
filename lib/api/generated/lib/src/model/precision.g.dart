// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'precision.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Precision extends Precision {
  @override
  final DateTime? since;
  @override
  final DateTime generatedAt;
  @override
  final BuiltList<PrecisionComponentsInner> components;

  factory _$Precision([void Function(PrecisionBuilder)? updates]) =>
      (PrecisionBuilder()..update(updates))._build();

  _$Precision._({
    this.since,
    required this.generatedAt,
    required this.components,
  }) : super._();
  @override
  Precision rebuild(void Function(PrecisionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrecisionBuilder toBuilder() => PrecisionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Precision &&
        since == other.since &&
        generatedAt == other.generatedAt &&
        components == other.components;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, since.hashCode);
    _$hash = $jc(_$hash, generatedAt.hashCode);
    _$hash = $jc(_$hash, components.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Precision')
          ..add('since', since)
          ..add('generatedAt', generatedAt)
          ..add('components', components))
        .toString();
  }
}

class PrecisionBuilder implements Builder<Precision, PrecisionBuilder> {
  _$Precision? _$v;

  DateTime? _since;
  DateTime? get since => _$this._since;
  set since(DateTime? since) => _$this._since = since;

  DateTime? _generatedAt;
  DateTime? get generatedAt => _$this._generatedAt;
  set generatedAt(DateTime? generatedAt) => _$this._generatedAt = generatedAt;

  ListBuilder<PrecisionComponentsInner>? _components;
  ListBuilder<PrecisionComponentsInner> get components =>
      _$this._components ??= ListBuilder<PrecisionComponentsInner>();
  set components(ListBuilder<PrecisionComponentsInner>? components) =>
      _$this._components = components;

  PrecisionBuilder() {
    Precision._defaults(this);
  }

  PrecisionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _since = $v.since;
      _generatedAt = $v.generatedAt;
      _components = $v.components.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Precision other) {
    _$v = other as _$Precision;
  }

  @override
  void update(void Function(PrecisionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Precision build() => _build();

  _$Precision _build() {
    _$Precision _$result;
    try {
      _$result =
          _$v ??
          _$Precision._(
            since: since,
            generatedAt: BuiltValueNullFieldError.checkNotNull(
              generatedAt,
              r'Precision',
              'generatedAt',
            ),
            components: components.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'components';
        components.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Precision',
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
