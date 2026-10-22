// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_payload_actions_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PushPayloadActionsInner extends PushPayloadActionsInner {
  @override
  final String action;
  @override
  final String title;
  @override
  final String url;

  factory _$PushPayloadActionsInner([
    void Function(PushPayloadActionsInnerBuilder)? updates,
  ]) => (PushPayloadActionsInnerBuilder()..update(updates))._build();

  _$PushPayloadActionsInner._({
    required this.action,
    required this.title,
    required this.url,
  }) : super._();
  @override
  PushPayloadActionsInner rebuild(
    void Function(PushPayloadActionsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PushPayloadActionsInnerBuilder toBuilder() =>
      PushPayloadActionsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PushPayloadActionsInner &&
        action == other.action &&
        title == other.title &&
        url == other.url;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PushPayloadActionsInner')
          ..add('action', action)
          ..add('title', title)
          ..add('url', url))
        .toString();
  }
}

class PushPayloadActionsInnerBuilder
    implements
        Builder<PushPayloadActionsInner, PushPayloadActionsInnerBuilder> {
  _$PushPayloadActionsInner? _$v;

  String? _action;
  String? get action => _$this._action;
  set action(String? action) => _$this._action = action;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  PushPayloadActionsInnerBuilder() {
    PushPayloadActionsInner._defaults(this);
  }

  PushPayloadActionsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _action = $v.action;
      _title = $v.title;
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PushPayloadActionsInner other) {
    _$v = other as _$PushPayloadActionsInner;
  }

  @override
  void update(void Function(PushPayloadActionsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PushPayloadActionsInner build() => _build();

  _$PushPayloadActionsInner _build() {
    final _$result =
        _$v ??
        _$PushPayloadActionsInner._(
          action: BuiltValueNullFieldError.checkNotNull(
            action,
            r'PushPayloadActionsInner',
            'action',
          ),
          title: BuiltValueNullFieldError.checkNotNull(
            title,
            r'PushPayloadActionsInner',
            'title',
          ),
          url: BuiltValueNullFieldError.checkNotNull(
            url,
            r'PushPayloadActionsInner',
            'url',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
