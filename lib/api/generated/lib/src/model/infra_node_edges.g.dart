// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'infra_node_edges.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InfraNodeEdges extends InfraNodeEdges {
  @override
  final BuiltList<InfraEdge>? in_;
  @override
  final BuiltList<InfraEdge>? out_;

  factory _$InfraNodeEdges([void Function(InfraNodeEdgesBuilder)? updates]) =>
      (InfraNodeEdgesBuilder()..update(updates))._build();

  _$InfraNodeEdges._({this.in_, this.out_}) : super._();
  @override
  InfraNodeEdges rebuild(void Function(InfraNodeEdgesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InfraNodeEdgesBuilder toBuilder() => InfraNodeEdgesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InfraNodeEdges && in_ == other.in_ && out_ == other.out_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, in_.hashCode);
    _$hash = $jc(_$hash, out_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InfraNodeEdges')
          ..add('in_', in_)
          ..add('out_', out_))
        .toString();
  }
}

class InfraNodeEdgesBuilder
    implements Builder<InfraNodeEdges, InfraNodeEdgesBuilder> {
  _$InfraNodeEdges? _$v;

  ListBuilder<InfraEdge>? _in_;
  ListBuilder<InfraEdge> get in_ => _$this._in_ ??= ListBuilder<InfraEdge>();
  set in_(ListBuilder<InfraEdge>? in_) => _$this._in_ = in_;

  ListBuilder<InfraEdge>? _out_;
  ListBuilder<InfraEdge> get out_ => _$this._out_ ??= ListBuilder<InfraEdge>();
  set out_(ListBuilder<InfraEdge>? out_) => _$this._out_ = out_;

  InfraNodeEdgesBuilder() {
    InfraNodeEdges._defaults(this);
  }

  InfraNodeEdgesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _in_ = $v.in_?.toBuilder();
      _out_ = $v.out_?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InfraNodeEdges other) {
    _$v = other as _$InfraNodeEdges;
  }

  @override
  void update(void Function(InfraNodeEdgesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InfraNodeEdges build() => _build();

  _$InfraNodeEdges _build() {
    _$InfraNodeEdges _$result;
    try {
      _$result = _$v ??
          _$InfraNodeEdges._(
            in_: _in_?.build(),
            out_: _out_?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'in_';
        _in_?.build();
        _$failedField = 'out_';
        _out_?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'InfraNodeEdges', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
