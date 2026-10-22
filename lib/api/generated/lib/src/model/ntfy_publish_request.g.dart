// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ntfy_publish_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NtfyPublishRequest extends NtfyPublishRequest {
  @override
  final String topic;
  @override
  final String? message;
  @override
  final String? title;
  @override
  final int? priority;
  @override
  final BuiltList<String>? tags;
  @override
  final String? click;

  factory _$NtfyPublishRequest([
    void Function(NtfyPublishRequestBuilder)? updates,
  ]) => (NtfyPublishRequestBuilder()..update(updates))._build();

  _$NtfyPublishRequest._({
    required this.topic,
    this.message,
    this.title,
    this.priority,
    this.tags,
    this.click,
  }) : super._();
  @override
  NtfyPublishRequest rebuild(
    void Function(NtfyPublishRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  NtfyPublishRequestBuilder toBuilder() =>
      NtfyPublishRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NtfyPublishRequest &&
        topic == other.topic &&
        message == other.message &&
        title == other.title &&
        priority == other.priority &&
        tags == other.tags &&
        click == other.click;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, topic.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, priority.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, click.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NtfyPublishRequest')
          ..add('topic', topic)
          ..add('message', message)
          ..add('title', title)
          ..add('priority', priority)
          ..add('tags', tags)
          ..add('click', click))
        .toString();
  }
}

class NtfyPublishRequestBuilder
    implements Builder<NtfyPublishRequest, NtfyPublishRequestBuilder> {
  _$NtfyPublishRequest? _$v;

  String? _topic;
  String? get topic => _$this._topic;
  set topic(String? topic) => _$this._topic = topic;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  int? _priority;
  int? get priority => _$this._priority;
  set priority(int? priority) => _$this._priority = priority;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  String? _click;
  String? get click => _$this._click;
  set click(String? click) => _$this._click = click;

  NtfyPublishRequestBuilder() {
    NtfyPublishRequest._defaults(this);
  }

  NtfyPublishRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _topic = $v.topic;
      _message = $v.message;
      _title = $v.title;
      _priority = $v.priority;
      _tags = $v.tags?.toBuilder();
      _click = $v.click;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NtfyPublishRequest other) {
    _$v = other as _$NtfyPublishRequest;
  }

  @override
  void update(void Function(NtfyPublishRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NtfyPublishRequest build() => _build();

  _$NtfyPublishRequest _build() {
    _$NtfyPublishRequest _$result;
    try {
      _$result =
          _$v ??
          _$NtfyPublishRequest._(
            topic: BuiltValueNullFieldError.checkNotNull(
              topic,
              r'NtfyPublishRequest',
              'topic',
            ),
            message: message,
            title: title,
            priority: priority,
            tags: _tags?.build(),
            click: click,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'NtfyPublishRequest',
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
