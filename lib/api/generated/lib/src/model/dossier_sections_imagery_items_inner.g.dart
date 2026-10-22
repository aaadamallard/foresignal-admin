// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dossier_sections_imagery_items_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DossierSectionsImageryItemsInnerKindEnum
_$dossierSectionsImageryItemsInnerKindEnum_rasterFrame =
    const DossierSectionsImageryItemsInnerKindEnum._('rasterFrame');
const DossierSectionsImageryItemsInnerKindEnum
_$dossierSectionsImageryItemsInnerKindEnum_satdumpProduct =
    const DossierSectionsImageryItemsInnerKindEnum._('satdumpProduct');
const DossierSectionsImageryItemsInnerKindEnum
_$dossierSectionsImageryItemsInnerKindEnum_stacScene =
    const DossierSectionsImageryItemsInnerKindEnum._('stacScene');

DossierSectionsImageryItemsInnerKindEnum
_$dossierSectionsImageryItemsInnerKindEnumValueOf(String name) {
  switch (name) {
    case 'rasterFrame':
      return _$dossierSectionsImageryItemsInnerKindEnum_rasterFrame;
    case 'satdumpProduct':
      return _$dossierSectionsImageryItemsInnerKindEnum_satdumpProduct;
    case 'stacScene':
      return _$dossierSectionsImageryItemsInnerKindEnum_stacScene;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DossierSectionsImageryItemsInnerKindEnum>
_$dossierSectionsImageryItemsInnerKindEnumValues =
    BuiltSet<DossierSectionsImageryItemsInnerKindEnum>(
      const <DossierSectionsImageryItemsInnerKindEnum>[
        _$dossierSectionsImageryItemsInnerKindEnum_rasterFrame,
        _$dossierSectionsImageryItemsInnerKindEnum_satdumpProduct,
        _$dossierSectionsImageryItemsInnerKindEnum_stacScene,
      ],
    );

Serializer<DossierSectionsImageryItemsInnerKindEnum>
_$dossierSectionsImageryItemsInnerKindEnumSerializer =
    _$DossierSectionsImageryItemsInnerKindEnumSerializer();

class _$DossierSectionsImageryItemsInnerKindEnumSerializer
    implements PrimitiveSerializer<DossierSectionsImageryItemsInnerKindEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'rasterFrame': 'raster-frame',
    'satdumpProduct': 'satdump-product',
    'stacScene': 'stac-scene',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'raster-frame': 'rasterFrame',
    'satdump-product': 'satdumpProduct',
    'stac-scene': 'stacScene',
  };

  @override
  final Iterable<Type> types = const <Type>[
    DossierSectionsImageryItemsInnerKindEnum,
  ];
  @override
  final String wireName = 'DossierSectionsImageryItemsInnerKindEnum';

  @override
  Object serialize(
    Serializers serializers,
    DossierSectionsImageryItemsInnerKindEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  DossierSectionsImageryItemsInnerKindEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => DossierSectionsImageryItemsInnerKindEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$DossierSectionsImageryItemsInner
    extends DossierSectionsImageryItemsInner {
  @override
  final String ref;
  @override
  final DossierSectionsImageryItemsInnerKindEnum kind;
  @override
  final String? title;
  @override
  final DateTime? time;
  @override
  final String? sourceId;
  @override
  final String? frameUrl;
  @override
  final String? thumbnailUrl;
  @override
  final BuiltList<num>? bbox;

  factory _$DossierSectionsImageryItemsInner([
    void Function(DossierSectionsImageryItemsInnerBuilder)? updates,
  ]) => (DossierSectionsImageryItemsInnerBuilder()..update(updates))._build();

  _$DossierSectionsImageryItemsInner._({
    required this.ref,
    required this.kind,
    this.title,
    this.time,
    this.sourceId,
    this.frameUrl,
    this.thumbnailUrl,
    this.bbox,
  }) : super._();
  @override
  DossierSectionsImageryItemsInner rebuild(
    void Function(DossierSectionsImageryItemsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DossierSectionsImageryItemsInnerBuilder toBuilder() =>
      DossierSectionsImageryItemsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DossierSectionsImageryItemsInner &&
        ref == other.ref &&
        kind == other.kind &&
        title == other.title &&
        time == other.time &&
        sourceId == other.sourceId &&
        frameUrl == other.frameUrl &&
        thumbnailUrl == other.thumbnailUrl &&
        bbox == other.bbox;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jc(_$hash, sourceId.hashCode);
    _$hash = $jc(_$hash, frameUrl.hashCode);
    _$hash = $jc(_$hash, thumbnailUrl.hashCode);
    _$hash = $jc(_$hash, bbox.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DossierSectionsImageryItemsInner')
          ..add('ref', ref)
          ..add('kind', kind)
          ..add('title', title)
          ..add('time', time)
          ..add('sourceId', sourceId)
          ..add('frameUrl', frameUrl)
          ..add('thumbnailUrl', thumbnailUrl)
          ..add('bbox', bbox))
        .toString();
  }
}

class DossierSectionsImageryItemsInnerBuilder
    implements
        Builder<
          DossierSectionsImageryItemsInner,
          DossierSectionsImageryItemsInnerBuilder
        > {
  _$DossierSectionsImageryItemsInner? _$v;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  DossierSectionsImageryItemsInnerKindEnum? _kind;
  DossierSectionsImageryItemsInnerKindEnum? get kind => _$this._kind;
  set kind(DossierSectionsImageryItemsInnerKindEnum? kind) =>
      _$this._kind = kind;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  DateTime? _time;
  DateTime? get time => _$this._time;
  set time(DateTime? time) => _$this._time = time;

  String? _sourceId;
  String? get sourceId => _$this._sourceId;
  set sourceId(String? sourceId) => _$this._sourceId = sourceId;

  String? _frameUrl;
  String? get frameUrl => _$this._frameUrl;
  set frameUrl(String? frameUrl) => _$this._frameUrl = frameUrl;

  String? _thumbnailUrl;
  String? get thumbnailUrl => _$this._thumbnailUrl;
  set thumbnailUrl(String? thumbnailUrl) => _$this._thumbnailUrl = thumbnailUrl;

  ListBuilder<num>? _bbox;
  ListBuilder<num> get bbox => _$this._bbox ??= ListBuilder<num>();
  set bbox(ListBuilder<num>? bbox) => _$this._bbox = bbox;

  DossierSectionsImageryItemsInnerBuilder() {
    DossierSectionsImageryItemsInner._defaults(this);
  }

  DossierSectionsImageryItemsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ref = $v.ref;
      _kind = $v.kind;
      _title = $v.title;
      _time = $v.time;
      _sourceId = $v.sourceId;
      _frameUrl = $v.frameUrl;
      _thumbnailUrl = $v.thumbnailUrl;
      _bbox = $v.bbox?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DossierSectionsImageryItemsInner other) {
    _$v = other as _$DossierSectionsImageryItemsInner;
  }

  @override
  void update(void Function(DossierSectionsImageryItemsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DossierSectionsImageryItemsInner build() => _build();

  _$DossierSectionsImageryItemsInner _build() {
    _$DossierSectionsImageryItemsInner _$result;
    try {
      _$result =
          _$v ??
          _$DossierSectionsImageryItemsInner._(
            ref: BuiltValueNullFieldError.checkNotNull(
              ref,
              r'DossierSectionsImageryItemsInner',
              'ref',
            ),
            kind: BuiltValueNullFieldError.checkNotNull(
              kind,
              r'DossierSectionsImageryItemsInner',
              'kind',
            ),
            title: title,
            time: time,
            sourceId: sourceId,
            frameUrl: frameUrl,
            thumbnailUrl: thumbnailUrl,
            bbox: _bbox?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'bbox';
        _bbox?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'DossierSectionsImageryItemsInner',
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
