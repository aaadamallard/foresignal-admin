// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edr_instance_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EdrInstanceList extends EdrInstanceList {
  @override
  final BuiltList<EdrInstanceListInstancesInner> instances;
  @override
  final BuiltList<OgcLink>? links;

  factory _$EdrInstanceList([void Function(EdrInstanceListBuilder)? updates]) =>
      (EdrInstanceListBuilder()..update(updates))._build();

  _$EdrInstanceList._({required this.instances, this.links}) : super._();
  @override
  EdrInstanceList rebuild(void Function(EdrInstanceListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EdrInstanceListBuilder toBuilder() => EdrInstanceListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdrInstanceList &&
        instances == other.instances &&
        links == other.links;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instances.hashCode);
    _$hash = $jc(_$hash, links.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EdrInstanceList')
          ..add('instances', instances)
          ..add('links', links))
        .toString();
  }
}

class EdrInstanceListBuilder
    implements Builder<EdrInstanceList, EdrInstanceListBuilder> {
  _$EdrInstanceList? _$v;

  ListBuilder<EdrInstanceListInstancesInner>? _instances;
  ListBuilder<EdrInstanceListInstancesInner> get instances =>
      _$this._instances ??= ListBuilder<EdrInstanceListInstancesInner>();
  set instances(ListBuilder<EdrInstanceListInstancesInner>? instances) =>
      _$this._instances = instances;

  ListBuilder<OgcLink>? _links;
  ListBuilder<OgcLink> get links => _$this._links ??= ListBuilder<OgcLink>();
  set links(ListBuilder<OgcLink>? links) => _$this._links = links;

  EdrInstanceListBuilder() {
    EdrInstanceList._defaults(this);
  }

  EdrInstanceListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instances = $v.instances.toBuilder();
      _links = $v.links?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EdrInstanceList other) {
    _$v = other as _$EdrInstanceList;
  }

  @override
  void update(void Function(EdrInstanceListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EdrInstanceList build() => _build();

  _$EdrInstanceList _build() {
    _$EdrInstanceList _$result;
    try {
      _$result = _$v ??
          _$EdrInstanceList._(
            instances: instances.build(),
            links: _links?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instances';
        instances.build();
        _$failedField = 'links';
        _links?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'EdrInstanceList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
