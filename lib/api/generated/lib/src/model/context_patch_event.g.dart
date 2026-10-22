// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'context_patch_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ContextPatchEvent extends ContextPatchEvent {
  @override
  final String workspaceId;
  @override
  final int version;
  @override
  final BuiltMap<String, JsonObject?> patch_;
  @override
  final String? originClientId;
  @override
  final String? principal;
  @override
  final DateTime at;

  factory _$ContextPatchEvent([
    void Function(ContextPatchEventBuilder)? updates,
  ]) => (ContextPatchEventBuilder()..update(updates))._build();

  _$ContextPatchEvent._({
    required this.workspaceId,
    required this.version,
    required this.patch_,
    this.originClientId,
    this.principal,
    required this.at,
  }) : super._();
  @override
  ContextPatchEvent rebuild(void Function(ContextPatchEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContextPatchEventBuilder toBuilder() =>
      ContextPatchEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContextPatchEvent &&
        workspaceId == other.workspaceId &&
        version == other.version &&
        patch_ == other.patch_ &&
        originClientId == other.originClientId &&
        principal == other.principal &&
        at == other.at;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, workspaceId.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, patch_.hashCode);
    _$hash = $jc(_$hash, originClientId.hashCode);
    _$hash = $jc(_$hash, principal.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ContextPatchEvent')
          ..add('workspaceId', workspaceId)
          ..add('version', version)
          ..add('patch_', patch_)
          ..add('originClientId', originClientId)
          ..add('principal', principal)
          ..add('at', at))
        .toString();
  }
}

class ContextPatchEventBuilder
    implements Builder<ContextPatchEvent, ContextPatchEventBuilder> {
  _$ContextPatchEvent? _$v;

  String? _workspaceId;
  String? get workspaceId => _$this._workspaceId;
  set workspaceId(String? workspaceId) => _$this._workspaceId = workspaceId;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  MapBuilder<String, JsonObject?>? _patch_;
  MapBuilder<String, JsonObject?> get patch_ =>
      _$this._patch_ ??= MapBuilder<String, JsonObject?>();
  set patch_(MapBuilder<String, JsonObject?>? patch_) =>
      _$this._patch_ = patch_;

  String? _originClientId;
  String? get originClientId => _$this._originClientId;
  set originClientId(String? originClientId) =>
      _$this._originClientId = originClientId;

  String? _principal;
  String? get principal => _$this._principal;
  set principal(String? principal) => _$this._principal = principal;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  ContextPatchEventBuilder() {
    ContextPatchEvent._defaults(this);
  }

  ContextPatchEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _workspaceId = $v.workspaceId;
      _version = $v.version;
      _patch_ = $v.patch_.toBuilder();
      _originClientId = $v.originClientId;
      _principal = $v.principal;
      _at = $v.at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContextPatchEvent other) {
    _$v = other as _$ContextPatchEvent;
  }

  @override
  void update(void Function(ContextPatchEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ContextPatchEvent build() => _build();

  _$ContextPatchEvent _build() {
    _$ContextPatchEvent _$result;
    try {
      _$result =
          _$v ??
          _$ContextPatchEvent._(
            workspaceId: BuiltValueNullFieldError.checkNotNull(
              workspaceId,
              r'ContextPatchEvent',
              'workspaceId',
            ),
            version: BuiltValueNullFieldError.checkNotNull(
              version,
              r'ContextPatchEvent',
              'version',
            ),
            patch_: patch_.build(),
            originClientId: originClientId,
            principal: principal,
            at: BuiltValueNullFieldError.checkNotNull(
              at,
              r'ContextPatchEvent',
              'at',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patch_';
        patch_.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ContextPatchEvent',
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
