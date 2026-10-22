// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'context_link_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ContextLinkRequest extends ContextLinkRequest {
  @override
  final WorkspaceContext context;
  @override
  final String? workspaceId;

  factory _$ContextLinkRequest(
          [void Function(ContextLinkRequestBuilder)? updates]) =>
      (ContextLinkRequestBuilder()..update(updates))._build();

  _$ContextLinkRequest._({required this.context, this.workspaceId}) : super._();
  @override
  ContextLinkRequest rebuild(
          void Function(ContextLinkRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContextLinkRequestBuilder toBuilder() =>
      ContextLinkRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContextLinkRequest &&
        context == other.context &&
        workspaceId == other.workspaceId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, context.hashCode);
    _$hash = $jc(_$hash, workspaceId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ContextLinkRequest')
          ..add('context', context)
          ..add('workspaceId', workspaceId))
        .toString();
  }
}

class ContextLinkRequestBuilder
    implements Builder<ContextLinkRequest, ContextLinkRequestBuilder> {
  _$ContextLinkRequest? _$v;

  WorkspaceContextBuilder? _context;
  WorkspaceContextBuilder get context =>
      _$this._context ??= WorkspaceContextBuilder();
  set context(WorkspaceContextBuilder? context) => _$this._context = context;

  String? _workspaceId;
  String? get workspaceId => _$this._workspaceId;
  set workspaceId(String? workspaceId) => _$this._workspaceId = workspaceId;

  ContextLinkRequestBuilder() {
    ContextLinkRequest._defaults(this);
  }

  ContextLinkRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _context = $v.context.toBuilder();
      _workspaceId = $v.workspaceId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContextLinkRequest other) {
    _$v = other as _$ContextLinkRequest;
  }

  @override
  void update(void Function(ContextLinkRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ContextLinkRequest build() => _build();

  _$ContextLinkRequest _build() {
    _$ContextLinkRequest _$result;
    try {
      _$result = _$v ??
          _$ContextLinkRequest._(
            context: context.build(),
            workspaceId: workspaceId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'context';
        context.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ContextLinkRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
