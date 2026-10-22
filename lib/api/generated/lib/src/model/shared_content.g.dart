// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shared_content.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SharedContentTargetTypeEnum _$sharedContentTargetTypeEnum_record =
    const SharedContentTargetTypeEnum._('record');
const SharedContentTargetTypeEnum _$sharedContentTargetTypeEnum_alert =
    const SharedContentTargetTypeEnum._('alert');
const SharedContentTargetTypeEnum _$sharedContentTargetTypeEnum_view =
    const SharedContentTargetTypeEnum._('view');
const SharedContentTargetTypeEnum _$sharedContentTargetTypeEnum_track =
    const SharedContentTargetTypeEnum._('track');
const SharedContentTargetTypeEnum _$sharedContentTargetTypeEnum_briefingRun =
    const SharedContentTargetTypeEnum._('briefingRun');
const SharedContentTargetTypeEnum _$sharedContentTargetTypeEnum_export_ =
    const SharedContentTargetTypeEnum._('export_');

SharedContentTargetTypeEnum _$sharedContentTargetTypeEnumValueOf(String name) {
  switch (name) {
    case 'record':
      return _$sharedContentTargetTypeEnum_record;
    case 'alert':
      return _$sharedContentTargetTypeEnum_alert;
    case 'view':
      return _$sharedContentTargetTypeEnum_view;
    case 'track':
      return _$sharedContentTargetTypeEnum_track;
    case 'briefingRun':
      return _$sharedContentTargetTypeEnum_briefingRun;
    case 'export_':
      return _$sharedContentTargetTypeEnum_export_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SharedContentTargetTypeEnum>
_$sharedContentTargetTypeEnumValues =
    BuiltSet<SharedContentTargetTypeEnum>(const <SharedContentTargetTypeEnum>[
      _$sharedContentTargetTypeEnum_record,
      _$sharedContentTargetTypeEnum_alert,
      _$sharedContentTargetTypeEnum_view,
      _$sharedContentTargetTypeEnum_track,
      _$sharedContentTargetTypeEnum_briefingRun,
      _$sharedContentTargetTypeEnum_export_,
    ]);

Serializer<SharedContentTargetTypeEnum>
_$sharedContentTargetTypeEnumSerializer =
    _$SharedContentTargetTypeEnumSerializer();

class _$SharedContentTargetTypeEnumSerializer
    implements PrimitiveSerializer<SharedContentTargetTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'record': 'record',
    'alert': 'alert',
    'view': 'view',
    'track': 'track',
    'briefingRun': 'briefing-run',
    'export_': 'export',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'record': 'record',
    'alert': 'alert',
    'view': 'view',
    'track': 'track',
    'briefing-run': 'briefingRun',
    'export': 'export_',
  };

  @override
  final Iterable<Type> types = const <Type>[SharedContentTargetTypeEnum];
  @override
  final String wireName = 'SharedContentTargetTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    SharedContentTargetTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SharedContentTargetTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SharedContentTargetTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SharedContent extends SharedContent {
  @override
  final SharedContentTargetTypeEnum targetType;
  @override
  final String? title;
  @override
  final DateTime expiresAt;
  @override
  final bool masked;
  @override
  final int? precisionM;
  @override
  final BuiltMap<String, JsonObject?> data;
  @override
  final BuiltList<Attribution> attributions;
  @override
  final SharedContentLinks? links;

  factory _$SharedContent([void Function(SharedContentBuilder)? updates]) =>
      (SharedContentBuilder()..update(updates))._build();

  _$SharedContent._({
    required this.targetType,
    this.title,
    required this.expiresAt,
    required this.masked,
    this.precisionM,
    required this.data,
    required this.attributions,
    this.links,
  }) : super._();
  @override
  SharedContent rebuild(void Function(SharedContentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SharedContentBuilder toBuilder() => SharedContentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SharedContent &&
        targetType == other.targetType &&
        title == other.title &&
        expiresAt == other.expiresAt &&
        masked == other.masked &&
        precisionM == other.precisionM &&
        data == other.data &&
        attributions == other.attributions &&
        links == other.links;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, targetType.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jc(_$hash, masked.hashCode);
    _$hash = $jc(_$hash, precisionM.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, attributions.hashCode);
    _$hash = $jc(_$hash, links.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SharedContent')
          ..add('targetType', targetType)
          ..add('title', title)
          ..add('expiresAt', expiresAt)
          ..add('masked', masked)
          ..add('precisionM', precisionM)
          ..add('data', data)
          ..add('attributions', attributions)
          ..add('links', links))
        .toString();
  }
}

class SharedContentBuilder
    implements Builder<SharedContent, SharedContentBuilder> {
  _$SharedContent? _$v;

  SharedContentTargetTypeEnum? _targetType;
  SharedContentTargetTypeEnum? get targetType => _$this._targetType;
  set targetType(SharedContentTargetTypeEnum? targetType) =>
      _$this._targetType = targetType;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  bool? _masked;
  bool? get masked => _$this._masked;
  set masked(bool? masked) => _$this._masked = masked;

  int? _precisionM;
  int? get precisionM => _$this._precisionM;
  set precisionM(int? precisionM) => _$this._precisionM = precisionM;

  MapBuilder<String, JsonObject?>? _data;
  MapBuilder<String, JsonObject?> get data =>
      _$this._data ??= MapBuilder<String, JsonObject?>();
  set data(MapBuilder<String, JsonObject?>? data) => _$this._data = data;

  ListBuilder<Attribution>? _attributions;
  ListBuilder<Attribution> get attributions =>
      _$this._attributions ??= ListBuilder<Attribution>();
  set attributions(ListBuilder<Attribution>? attributions) =>
      _$this._attributions = attributions;

  SharedContentLinksBuilder? _links;
  SharedContentLinksBuilder get links =>
      _$this._links ??= SharedContentLinksBuilder();
  set links(SharedContentLinksBuilder? links) => _$this._links = links;

  SharedContentBuilder() {
    SharedContent._defaults(this);
  }

  SharedContentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _targetType = $v.targetType;
      _title = $v.title;
      _expiresAt = $v.expiresAt;
      _masked = $v.masked;
      _precisionM = $v.precisionM;
      _data = $v.data.toBuilder();
      _attributions = $v.attributions.toBuilder();
      _links = $v.links?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SharedContent other) {
    _$v = other as _$SharedContent;
  }

  @override
  void update(void Function(SharedContentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SharedContent build() => _build();

  _$SharedContent _build() {
    _$SharedContent _$result;
    try {
      _$result =
          _$v ??
          _$SharedContent._(
            targetType: BuiltValueNullFieldError.checkNotNull(
              targetType,
              r'SharedContent',
              'targetType',
            ),
            title: title,
            expiresAt: BuiltValueNullFieldError.checkNotNull(
              expiresAt,
              r'SharedContent',
              'expiresAt',
            ),
            masked: BuiltValueNullFieldError.checkNotNull(
              masked,
              r'SharedContent',
              'masked',
            ),
            precisionM: precisionM,
            data: data.build(),
            attributions: attributions.build(),
            links: _links?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
        _$failedField = 'attributions';
        attributions.build();
        _$failedField = 'links';
        _links?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SharedContent',
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
