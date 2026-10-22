// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edp_source_info_publisher.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EdpSourceInfoPublisher extends EdpSourceInfoPublisher {
  @override
  final String name;
  @override
  final String? url;
  @override
  final String? contact;

  factory _$EdpSourceInfoPublisher([
    void Function(EdpSourceInfoPublisherBuilder)? updates,
  ]) => (EdpSourceInfoPublisherBuilder()..update(updates))._build();

  _$EdpSourceInfoPublisher._({required this.name, this.url, this.contact})
    : super._();
  @override
  EdpSourceInfoPublisher rebuild(
    void Function(EdpSourceInfoPublisherBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EdpSourceInfoPublisherBuilder toBuilder() =>
      EdpSourceInfoPublisherBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdpSourceInfoPublisher &&
        name == other.name &&
        url == other.url &&
        contact == other.contact;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, contact.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EdpSourceInfoPublisher')
          ..add('name', name)
          ..add('url', url)
          ..add('contact', contact))
        .toString();
  }
}

class EdpSourceInfoPublisherBuilder
    implements Builder<EdpSourceInfoPublisher, EdpSourceInfoPublisherBuilder> {
  _$EdpSourceInfoPublisher? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _contact;
  String? get contact => _$this._contact;
  set contact(String? contact) => _$this._contact = contact;

  EdpSourceInfoPublisherBuilder() {
    EdpSourceInfoPublisher._defaults(this);
  }

  EdpSourceInfoPublisherBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _url = $v.url;
      _contact = $v.contact;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EdpSourceInfoPublisher other) {
    _$v = other as _$EdpSourceInfoPublisher;
  }

  @override
  void update(void Function(EdpSourceInfoPublisherBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EdpSourceInfoPublisher build() => _build();

  _$EdpSourceInfoPublisher _build() {
    final _$result =
        _$v ??
        _$EdpSourceInfoPublisher._(
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'EdpSourceInfoPublisher',
            'name',
          ),
          url: url,
          contact: contact,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
