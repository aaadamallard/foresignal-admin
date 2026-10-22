// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ogc_conformance.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OgcConformance extends OgcConformance {
  @override
  final BuiltList<String> conformsTo;

  factory _$OgcConformance([void Function(OgcConformanceBuilder)? updates]) =>
      (OgcConformanceBuilder()..update(updates))._build();

  _$OgcConformance._({required this.conformsTo}) : super._();
  @override
  OgcConformance rebuild(void Function(OgcConformanceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OgcConformanceBuilder toBuilder() => OgcConformanceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OgcConformance && conformsTo == other.conformsTo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, conformsTo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OgcConformance')
          ..add('conformsTo', conformsTo))
        .toString();
  }
}

class OgcConformanceBuilder
    implements Builder<OgcConformance, OgcConformanceBuilder> {
  _$OgcConformance? _$v;

  ListBuilder<String>? _conformsTo;
  ListBuilder<String> get conformsTo =>
      _$this._conformsTo ??= ListBuilder<String>();
  set conformsTo(ListBuilder<String>? conformsTo) =>
      _$this._conformsTo = conformsTo;

  OgcConformanceBuilder() {
    OgcConformance._defaults(this);
  }

  OgcConformanceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _conformsTo = $v.conformsTo.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OgcConformance other) {
    _$v = other as _$OgcConformance;
  }

  @override
  void update(void Function(OgcConformanceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OgcConformance build() => _build();

  _$OgcConformance _build() {
    _$OgcConformance _$result;
    try {
      _$result = _$v ??
          _$OgcConformance._(
            conformsTo: conformsTo.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'conformsTo';
        conformsTo.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OgcConformance', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
