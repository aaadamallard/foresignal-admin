// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'taxii_envelope.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TaxiiEnvelope extends TaxiiEnvelope {
  @override
  final bool? more;
  @override
  final String? next;
  @override
  final BuiltList<BuiltMap<String, JsonObject?>>? objects;

  factory _$TaxiiEnvelope([void Function(TaxiiEnvelopeBuilder)? updates]) =>
      (TaxiiEnvelopeBuilder()..update(updates))._build();

  _$TaxiiEnvelope._({this.more, this.next, this.objects}) : super._();
  @override
  TaxiiEnvelope rebuild(void Function(TaxiiEnvelopeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TaxiiEnvelopeBuilder toBuilder() => TaxiiEnvelopeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TaxiiEnvelope &&
        more == other.more &&
        next == other.next &&
        objects == other.objects;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, more.hashCode);
    _$hash = $jc(_$hash, next.hashCode);
    _$hash = $jc(_$hash, objects.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TaxiiEnvelope')
          ..add('more', more)
          ..add('next', next)
          ..add('objects', objects))
        .toString();
  }
}

class TaxiiEnvelopeBuilder
    implements Builder<TaxiiEnvelope, TaxiiEnvelopeBuilder> {
  _$TaxiiEnvelope? _$v;

  bool? _more;
  bool? get more => _$this._more;
  set more(bool? more) => _$this._more = more;

  String? _next;
  String? get next => _$this._next;
  set next(String? next) => _$this._next = next;

  ListBuilder<BuiltMap<String, JsonObject?>>? _objects;
  ListBuilder<BuiltMap<String, JsonObject?>> get objects =>
      _$this._objects ??= ListBuilder<BuiltMap<String, JsonObject?>>();
  set objects(ListBuilder<BuiltMap<String, JsonObject?>>? objects) =>
      _$this._objects = objects;

  TaxiiEnvelopeBuilder() {
    TaxiiEnvelope._defaults(this);
  }

  TaxiiEnvelopeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _more = $v.more;
      _next = $v.next;
      _objects = $v.objects?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TaxiiEnvelope other) {
    _$v = other as _$TaxiiEnvelope;
  }

  @override
  void update(void Function(TaxiiEnvelopeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TaxiiEnvelope build() => _build();

  _$TaxiiEnvelope _build() {
    _$TaxiiEnvelope _$result;
    try {
      _$result =
          _$v ??
          _$TaxiiEnvelope._(more: more, next: next, objects: _objects?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'objects';
        _objects?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TaxiiEnvelope',
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
