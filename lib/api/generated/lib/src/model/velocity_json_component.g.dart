// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'velocity_json_component.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VelocityJsonComponent extends VelocityJsonComponent {
  @override
  final VelocityJsonComponentHeader header;
  @override
  final BuiltList<num?> data;

  factory _$VelocityJsonComponent(
          [void Function(VelocityJsonComponentBuilder)? updates]) =>
      (VelocityJsonComponentBuilder()..update(updates))._build();

  _$VelocityJsonComponent._({required this.header, required this.data})
      : super._();
  @override
  VelocityJsonComponent rebuild(
          void Function(VelocityJsonComponentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VelocityJsonComponentBuilder toBuilder() =>
      VelocityJsonComponentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VelocityJsonComponent &&
        header == other.header &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, header.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VelocityJsonComponent')
          ..add('header', header)
          ..add('data', data))
        .toString();
  }
}

class VelocityJsonComponentBuilder
    implements Builder<VelocityJsonComponent, VelocityJsonComponentBuilder> {
  _$VelocityJsonComponent? _$v;

  VelocityJsonComponentHeaderBuilder? _header;
  VelocityJsonComponentHeaderBuilder get header =>
      _$this._header ??= VelocityJsonComponentHeaderBuilder();
  set header(VelocityJsonComponentHeaderBuilder? header) =>
      _$this._header = header;

  ListBuilder<num?>? _data;
  ListBuilder<num?> get data => _$this._data ??= ListBuilder<num?>();
  set data(ListBuilder<num?>? data) => _$this._data = data;

  VelocityJsonComponentBuilder() {
    VelocityJsonComponent._defaults(this);
  }

  VelocityJsonComponentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _header = $v.header.toBuilder();
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VelocityJsonComponent other) {
    _$v = other as _$VelocityJsonComponent;
  }

  @override
  void update(void Function(VelocityJsonComponentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VelocityJsonComponent build() => _build();

  _$VelocityJsonComponent _build() {
    _$VelocityJsonComponent _$result;
    try {
      _$result = _$v ??
          _$VelocityJsonComponent._(
            header: header.build(),
            data: data.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'header';
        header.build();
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'VelocityJsonComponent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
