// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dossier_sections_timeline.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DossierSectionsTimelineStatusEnum _$dossierSectionsTimelineStatusEnum_ok =
    const DossierSectionsTimelineStatusEnum._('ok');
const DossierSectionsTimelineStatusEnum
    _$dossierSectionsTimelineStatusEnum_empty =
    const DossierSectionsTimelineStatusEnum._('empty');
const DossierSectionsTimelineStatusEnum
    _$dossierSectionsTimelineStatusEnum_unavailable =
    const DossierSectionsTimelineStatusEnum._('unavailable');
const DossierSectionsTimelineStatusEnum
    _$dossierSectionsTimelineStatusEnum_notInstalled =
    const DossierSectionsTimelineStatusEnum._('notInstalled');

DossierSectionsTimelineStatusEnum _$dossierSectionsTimelineStatusEnumValueOf(
    String name) {
  switch (name) {
    case 'ok':
      return _$dossierSectionsTimelineStatusEnum_ok;
    case 'empty':
      return _$dossierSectionsTimelineStatusEnum_empty;
    case 'unavailable':
      return _$dossierSectionsTimelineStatusEnum_unavailable;
    case 'notInstalled':
      return _$dossierSectionsTimelineStatusEnum_notInstalled;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DossierSectionsTimelineStatusEnum>
    _$dossierSectionsTimelineStatusEnumValues = BuiltSet<
        DossierSectionsTimelineStatusEnum>(const <DossierSectionsTimelineStatusEnum>[
  _$dossierSectionsTimelineStatusEnum_ok,
  _$dossierSectionsTimelineStatusEnum_empty,
  _$dossierSectionsTimelineStatusEnum_unavailable,
  _$dossierSectionsTimelineStatusEnum_notInstalled,
]);

Serializer<DossierSectionsTimelineStatusEnum>
    _$dossierSectionsTimelineStatusEnumSerializer =
    _$DossierSectionsTimelineStatusEnumSerializer();

class _$DossierSectionsTimelineStatusEnumSerializer
    implements PrimitiveSerializer<DossierSectionsTimelineStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ok': 'ok',
    'empty': 'empty',
    'unavailable': 'unavailable',
    'notInstalled': 'not-installed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ok': 'ok',
    'empty': 'empty',
    'unavailable': 'unavailable',
    'not-installed': 'notInstalled',
  };

  @override
  final Iterable<Type> types = const <Type>[DossierSectionsTimelineStatusEnum];
  @override
  final String wireName = 'DossierSectionsTimelineStatusEnum';

  @override
  Object serialize(
          Serializers serializers, DossierSectionsTimelineStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  DossierSectionsTimelineStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      DossierSectionsTimelineStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$DossierSectionsTimeline extends DossierSectionsTimeline {
  @override
  final DossierSectionsTimelineStatusEnum status;
  @override
  final String? message;
  @override
  final DossierSectionsOverviewLinks? links;
  @override
  final DossierSectionsOverviewFacets? facets;
  @override
  final bool? truncated;
  @override
  final BuiltList<DossierSectionsTimelineItemsInner>? items;

  factory _$DossierSectionsTimeline(
          [void Function(DossierSectionsTimelineBuilder)? updates]) =>
      (DossierSectionsTimelineBuilder()..update(updates))._build();

  _$DossierSectionsTimeline._(
      {required this.status,
      this.message,
      this.links,
      this.facets,
      this.truncated,
      this.items})
      : super._();
  @override
  DossierSectionsTimeline rebuild(
          void Function(DossierSectionsTimelineBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DossierSectionsTimelineBuilder toBuilder() =>
      DossierSectionsTimelineBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DossierSectionsTimeline &&
        status == other.status &&
        message == other.message &&
        links == other.links &&
        facets == other.facets &&
        truncated == other.truncated &&
        items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, links.hashCode);
    _$hash = $jc(_$hash, facets.hashCode);
    _$hash = $jc(_$hash, truncated.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DossierSectionsTimeline')
          ..add('status', status)
          ..add('message', message)
          ..add('links', links)
          ..add('facets', facets)
          ..add('truncated', truncated)
          ..add('items', items))
        .toString();
  }
}

class DossierSectionsTimelineBuilder
    implements
        Builder<DossierSectionsTimeline, DossierSectionsTimelineBuilder> {
  _$DossierSectionsTimeline? _$v;

  DossierSectionsTimelineStatusEnum? _status;
  DossierSectionsTimelineStatusEnum? get status => _$this._status;
  set status(DossierSectionsTimelineStatusEnum? status) =>
      _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  DossierSectionsOverviewLinksBuilder? _links;
  DossierSectionsOverviewLinksBuilder get links =>
      _$this._links ??= DossierSectionsOverviewLinksBuilder();
  set links(DossierSectionsOverviewLinksBuilder? links) =>
      _$this._links = links;

  DossierSectionsOverviewFacetsBuilder? _facets;
  DossierSectionsOverviewFacetsBuilder get facets =>
      _$this._facets ??= DossierSectionsOverviewFacetsBuilder();
  set facets(DossierSectionsOverviewFacetsBuilder? facets) =>
      _$this._facets = facets;

  bool? _truncated;
  bool? get truncated => _$this._truncated;
  set truncated(bool? truncated) => _$this._truncated = truncated;

  ListBuilder<DossierSectionsTimelineItemsInner>? _items;
  ListBuilder<DossierSectionsTimelineItemsInner> get items =>
      _$this._items ??= ListBuilder<DossierSectionsTimelineItemsInner>();
  set items(ListBuilder<DossierSectionsTimelineItemsInner>? items) =>
      _$this._items = items;

  DossierSectionsTimelineBuilder() {
    DossierSectionsTimeline._defaults(this);
  }

  DossierSectionsTimelineBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _message = $v.message;
      _links = $v.links?.toBuilder();
      _facets = $v.facets?.toBuilder();
      _truncated = $v.truncated;
      _items = $v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DossierSectionsTimeline other) {
    _$v = other as _$DossierSectionsTimeline;
  }

  @override
  void update(void Function(DossierSectionsTimelineBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DossierSectionsTimeline build() => _build();

  _$DossierSectionsTimeline _build() {
    _$DossierSectionsTimeline _$result;
    try {
      _$result = _$v ??
          _$DossierSectionsTimeline._(
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'DossierSectionsTimeline', 'status'),
            message: message,
            links: _links?.build(),
            facets: _facets?.build(),
            truncated: truncated,
            items: _items?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'links';
        _links?.build();
        _$failedField = 'facets';
        _facets?.build();

        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'DossierSectionsTimeline', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
