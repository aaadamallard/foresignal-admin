// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'taxii_discovery.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TaxiiDiscovery extends TaxiiDiscovery {
  @override
  final String title;
  @override
  final String? description;
  @override
  final String? contact;
  @override
  final String? default_;
  @override
  final BuiltList<String>? apiRoots;

  factory _$TaxiiDiscovery([void Function(TaxiiDiscoveryBuilder)? updates]) =>
      (TaxiiDiscoveryBuilder()..update(updates))._build();

  _$TaxiiDiscovery._(
      {required this.title,
      this.description,
      this.contact,
      this.default_,
      this.apiRoots})
      : super._();
  @override
  TaxiiDiscovery rebuild(void Function(TaxiiDiscoveryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TaxiiDiscoveryBuilder toBuilder() => TaxiiDiscoveryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TaxiiDiscovery &&
        title == other.title &&
        description == other.description &&
        contact == other.contact &&
        default_ == other.default_ &&
        apiRoots == other.apiRoots;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, contact.hashCode);
    _$hash = $jc(_$hash, default_.hashCode);
    _$hash = $jc(_$hash, apiRoots.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TaxiiDiscovery')
          ..add('title', title)
          ..add('description', description)
          ..add('contact', contact)
          ..add('default_', default_)
          ..add('apiRoots', apiRoots))
        .toString();
  }
}

class TaxiiDiscoveryBuilder
    implements Builder<TaxiiDiscovery, TaxiiDiscoveryBuilder> {
  _$TaxiiDiscovery? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _contact;
  String? get contact => _$this._contact;
  set contact(String? contact) => _$this._contact = contact;

  String? _default_;
  String? get default_ => _$this._default_;
  set default_(String? default_) => _$this._default_ = default_;

  ListBuilder<String>? _apiRoots;
  ListBuilder<String> get apiRoots =>
      _$this._apiRoots ??= ListBuilder<String>();
  set apiRoots(ListBuilder<String>? apiRoots) => _$this._apiRoots = apiRoots;

  TaxiiDiscoveryBuilder() {
    TaxiiDiscovery._defaults(this);
  }

  TaxiiDiscoveryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _description = $v.description;
      _contact = $v.contact;
      _default_ = $v.default_;
      _apiRoots = $v.apiRoots?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TaxiiDiscovery other) {
    _$v = other as _$TaxiiDiscovery;
  }

  @override
  void update(void Function(TaxiiDiscoveryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TaxiiDiscovery build() => _build();

  _$TaxiiDiscovery _build() {
    _$TaxiiDiscovery _$result;
    try {
      _$result = _$v ??
          _$TaxiiDiscovery._(
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'TaxiiDiscovery', 'title'),
            description: description,
            contact: contact,
            default_: default_,
            apiRoots: _apiRoots?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'apiRoots';
        _apiRoots?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'TaxiiDiscovery', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
