// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_patch.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ReportPatchStatusEnum _$reportPatchStatusEnum_draft =
    const ReportPatchStatusEnum._('draft');
const ReportPatchStatusEnum _$reportPatchStatusEnum_review =
    const ReportPatchStatusEnum._('review');

ReportPatchStatusEnum _$reportPatchStatusEnumValueOf(String name) {
  switch (name) {
    case 'draft':
      return _$reportPatchStatusEnum_draft;
    case 'review':
      return _$reportPatchStatusEnum_review;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ReportPatchStatusEnum> _$reportPatchStatusEnumValues =
    BuiltSet<ReportPatchStatusEnum>(const <ReportPatchStatusEnum>[
      _$reportPatchStatusEnum_draft,
      _$reportPatchStatusEnum_review,
    ]);

Serializer<ReportPatchStatusEnum> _$reportPatchStatusEnumSerializer =
    _$ReportPatchStatusEnumSerializer();

class _$ReportPatchStatusEnumSerializer
    implements PrimitiveSerializer<ReportPatchStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'draft': 'draft',
    'review': 'review',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'draft': 'draft',
    'review': 'review',
  };

  @override
  final Iterable<Type> types = const <Type>[ReportPatchStatusEnum];
  @override
  final String wireName = 'ReportPatchStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    ReportPatchStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ReportPatchStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ReportPatchStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ReportPatch extends ReportPatch {
  @override
  final String? title;
  @override
  final String? subtitle;
  @override
  final ReportPatchStatusEnum? status;
  @override
  final BuiltList<String>? authors;
  @override
  final String? tlp;
  @override
  final Visibility? visibility;
  @override
  final TimeRange? timeWindow;
  @override
  final Geometry? area;
  @override
  final BuiltList<String>? blockOrder;
  @override
  final int? version;

  factory _$ReportPatch([void Function(ReportPatchBuilder)? updates]) =>
      (ReportPatchBuilder()..update(updates))._build();

  _$ReportPatch._({
    this.title,
    this.subtitle,
    this.status,
    this.authors,
    this.tlp,
    this.visibility,
    this.timeWindow,
    this.area,
    this.blockOrder,
    this.version,
  }) : super._();
  @override
  ReportPatch rebuild(void Function(ReportPatchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportPatchBuilder toBuilder() => ReportPatchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportPatch &&
        title == other.title &&
        subtitle == other.subtitle &&
        status == other.status &&
        authors == other.authors &&
        tlp == other.tlp &&
        visibility == other.visibility &&
        timeWindow == other.timeWindow &&
        area == other.area &&
        blockOrder == other.blockOrder &&
        version == other.version;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, subtitle.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, authors.hashCode);
    _$hash = $jc(_$hash, tlp.hashCode);
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jc(_$hash, timeWindow.hashCode);
    _$hash = $jc(_$hash, area.hashCode);
    _$hash = $jc(_$hash, blockOrder.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReportPatch')
          ..add('title', title)
          ..add('subtitle', subtitle)
          ..add('status', status)
          ..add('authors', authors)
          ..add('tlp', tlp)
          ..add('visibility', visibility)
          ..add('timeWindow', timeWindow)
          ..add('area', area)
          ..add('blockOrder', blockOrder)
          ..add('version', version))
        .toString();
  }
}

class ReportPatchBuilder implements Builder<ReportPatch, ReportPatchBuilder> {
  _$ReportPatch? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _subtitle;
  String? get subtitle => _$this._subtitle;
  set subtitle(String? subtitle) => _$this._subtitle = subtitle;

  ReportPatchStatusEnum? _status;
  ReportPatchStatusEnum? get status => _$this._status;
  set status(ReportPatchStatusEnum? status) => _$this._status = status;

  ListBuilder<String>? _authors;
  ListBuilder<String> get authors => _$this._authors ??= ListBuilder<String>();
  set authors(ListBuilder<String>? authors) => _$this._authors = authors;

  String? _tlp;
  String? get tlp => _$this._tlp;
  set tlp(String? tlp) => _$this._tlp = tlp;

  Visibility? _visibility;
  Visibility? get visibility => _$this._visibility;
  set visibility(Visibility? visibility) => _$this._visibility = visibility;

  TimeRangeBuilder? _timeWindow;
  TimeRangeBuilder get timeWindow => _$this._timeWindow ??= TimeRangeBuilder();
  set timeWindow(TimeRangeBuilder? timeWindow) =>
      _$this._timeWindow = timeWindow;

  GeometryBuilder? _area;
  GeometryBuilder get area => _$this._area ??= GeometryBuilder();
  set area(GeometryBuilder? area) => _$this._area = area;

  ListBuilder<String>? _blockOrder;
  ListBuilder<String> get blockOrder =>
      _$this._blockOrder ??= ListBuilder<String>();
  set blockOrder(ListBuilder<String>? blockOrder) =>
      _$this._blockOrder = blockOrder;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  ReportPatchBuilder() {
    ReportPatch._defaults(this);
  }

  ReportPatchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _subtitle = $v.subtitle;
      _status = $v.status;
      _authors = $v.authors?.toBuilder();
      _tlp = $v.tlp;
      _visibility = $v.visibility;
      _timeWindow = $v.timeWindow?.toBuilder();
      _area = $v.area?.toBuilder();
      _blockOrder = $v.blockOrder?.toBuilder();
      _version = $v.version;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReportPatch other) {
    _$v = other as _$ReportPatch;
  }

  @override
  void update(void Function(ReportPatchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReportPatch build() => _build();

  _$ReportPatch _build() {
    _$ReportPatch _$result;
    try {
      _$result =
          _$v ??
          _$ReportPatch._(
            title: title,
            subtitle: subtitle,
            status: status,
            authors: _authors?.build(),
            tlp: tlp,
            visibility: visibility,
            timeWindow: _timeWindow?.build(),
            area: _area?.build(),
            blockOrder: _blockOrder?.build(),
            version: version,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'authors';
        _authors?.build();

        _$failedField = 'timeWindow';
        _timeWindow?.build();
        _$failedField = 'area';
        _area?.build();
        _$failedField = 'blockOrder';
        _blockOrder?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ReportPatch',
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
