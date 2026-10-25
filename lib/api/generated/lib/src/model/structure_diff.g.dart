// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'structure_diff.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const StructureDiffFormatEnum _$structureDiffFormatEnum_json =
    const StructureDiffFormatEnum._('json');
const StructureDiffFormatEnum _$structureDiffFormatEnum_csv =
    const StructureDiffFormatEnum._('csv');
const StructureDiffFormatEnum _$structureDiffFormatEnum_tsv =
    const StructureDiffFormatEnum._('tsv');
const StructureDiffFormatEnum _$structureDiffFormatEnum_xml =
    const StructureDiffFormatEnum._('xml');
const StructureDiffFormatEnum _$structureDiffFormatEnum_binary =
    const StructureDiffFormatEnum._('binary');
const StructureDiffFormatEnum _$structureDiffFormatEnum_html =
    const StructureDiffFormatEnum._('html');
const StructureDiffFormatEnum _$structureDiffFormatEnum_text =
    const StructureDiffFormatEnum._('text');
const StructureDiffFormatEnum _$structureDiffFormatEnum_unknownDefaultOpenApi =
    const StructureDiffFormatEnum._('unknownDefaultOpenApi');

StructureDiffFormatEnum _$structureDiffFormatEnumValueOf(String name) {
  switch (name) {
    case 'json':
      return _$structureDiffFormatEnum_json;
    case 'csv':
      return _$structureDiffFormatEnum_csv;
    case 'tsv':
      return _$structureDiffFormatEnum_tsv;
    case 'xml':
      return _$structureDiffFormatEnum_xml;
    case 'binary':
      return _$structureDiffFormatEnum_binary;
    case 'html':
      return _$structureDiffFormatEnum_html;
    case 'text':
      return _$structureDiffFormatEnum_text;
    case 'unknownDefaultOpenApi':
      return _$structureDiffFormatEnum_unknownDefaultOpenApi;
    default:
      return _$structureDiffFormatEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<StructureDiffFormatEnum> _$structureDiffFormatEnumValues =
    BuiltSet<StructureDiffFormatEnum>(const <StructureDiffFormatEnum>[
      _$structureDiffFormatEnum_json,
      _$structureDiffFormatEnum_csv,
      _$structureDiffFormatEnum_tsv,
      _$structureDiffFormatEnum_xml,
      _$structureDiffFormatEnum_binary,
      _$structureDiffFormatEnum_html,
      _$structureDiffFormatEnum_text,
      _$structureDiffFormatEnum_unknownDefaultOpenApi,
    ]);

Serializer<StructureDiffFormatEnum> _$structureDiffFormatEnumSerializer =
    _$StructureDiffFormatEnumSerializer();

class _$StructureDiffFormatEnumSerializer
    implements PrimitiveSerializer<StructureDiffFormatEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'json': 'json',
    'csv': 'csv',
    'tsv': 'tsv',
    'xml': 'xml',
    'binary': 'binary',
    'html': 'html',
    'text': 'text',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'json': 'json',
    'csv': 'csv',
    'tsv': 'tsv',
    'xml': 'xml',
    'binary': 'binary',
    'html': 'html',
    'text': 'text',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[StructureDiffFormatEnum];
  @override
  final String wireName = 'StructureDiffFormatEnum';

  @override
  Object serialize(
    Serializers serializers,
    StructureDiffFormatEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  StructureDiffFormatEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => StructureDiffFormatEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$StructureDiff extends StructureDiff {
  @override
  final StructureDiffFormatEnum format;
  @override
  final String? fixtureFile;
  @override
  final BuiltList<String> addedPaths;
  @override
  final BuiltList<String> removedPaths;
  @override
  final BuiltList<StructureDiffTypeChangedInner> typeChanged;
  @override
  final BuiltList<StructureDiffPresenceDroppedInner>? presenceDropped;
  @override
  final BuiltList<String>? arrayEmpty;
  @override
  final bool? columnsReordered;
  @override
  final StructureDiffDelimiterChanged? delimiterChanged;
  @override
  final StructureDiffContentTypeChanged? contentTypeChanged;
  @override
  final num? sizeRatio;
  @override
  final BuiltList<StructureDiffRenameCandidatesInner>? renameCandidates;
  @override
  final String? htmlTitle;
  @override
  final BuiltMap<String, BuiltList<String>>? examples;

  factory _$StructureDiff([void Function(StructureDiffBuilder)? updates]) =>
      (StructureDiffBuilder()..update(updates))._build();

  _$StructureDiff._({
    required this.format,
    this.fixtureFile,
    required this.addedPaths,
    required this.removedPaths,
    required this.typeChanged,
    this.presenceDropped,
    this.arrayEmpty,
    this.columnsReordered,
    this.delimiterChanged,
    this.contentTypeChanged,
    this.sizeRatio,
    this.renameCandidates,
    this.htmlTitle,
    this.examples,
  }) : super._();
  @override
  StructureDiff rebuild(void Function(StructureDiffBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StructureDiffBuilder toBuilder() => StructureDiffBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StructureDiff &&
        format == other.format &&
        fixtureFile == other.fixtureFile &&
        addedPaths == other.addedPaths &&
        removedPaths == other.removedPaths &&
        typeChanged == other.typeChanged &&
        presenceDropped == other.presenceDropped &&
        arrayEmpty == other.arrayEmpty &&
        columnsReordered == other.columnsReordered &&
        delimiterChanged == other.delimiterChanged &&
        contentTypeChanged == other.contentTypeChanged &&
        sizeRatio == other.sizeRatio &&
        renameCandidates == other.renameCandidates &&
        htmlTitle == other.htmlTitle &&
        examples == other.examples;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, fixtureFile.hashCode);
    _$hash = $jc(_$hash, addedPaths.hashCode);
    _$hash = $jc(_$hash, removedPaths.hashCode);
    _$hash = $jc(_$hash, typeChanged.hashCode);
    _$hash = $jc(_$hash, presenceDropped.hashCode);
    _$hash = $jc(_$hash, arrayEmpty.hashCode);
    _$hash = $jc(_$hash, columnsReordered.hashCode);
    _$hash = $jc(_$hash, delimiterChanged.hashCode);
    _$hash = $jc(_$hash, contentTypeChanged.hashCode);
    _$hash = $jc(_$hash, sizeRatio.hashCode);
    _$hash = $jc(_$hash, renameCandidates.hashCode);
    _$hash = $jc(_$hash, htmlTitle.hashCode);
    _$hash = $jc(_$hash, examples.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StructureDiff')
          ..add('format', format)
          ..add('fixtureFile', fixtureFile)
          ..add('addedPaths', addedPaths)
          ..add('removedPaths', removedPaths)
          ..add('typeChanged', typeChanged)
          ..add('presenceDropped', presenceDropped)
          ..add('arrayEmpty', arrayEmpty)
          ..add('columnsReordered', columnsReordered)
          ..add('delimiterChanged', delimiterChanged)
          ..add('contentTypeChanged', contentTypeChanged)
          ..add('sizeRatio', sizeRatio)
          ..add('renameCandidates', renameCandidates)
          ..add('htmlTitle', htmlTitle)
          ..add('examples', examples))
        .toString();
  }
}

class StructureDiffBuilder
    implements Builder<StructureDiff, StructureDiffBuilder> {
  _$StructureDiff? _$v;

  StructureDiffFormatEnum? _format;
  StructureDiffFormatEnum? get format => _$this._format;
  set format(StructureDiffFormatEnum? format) => _$this._format = format;

  String? _fixtureFile;
  String? get fixtureFile => _$this._fixtureFile;
  set fixtureFile(String? fixtureFile) => _$this._fixtureFile = fixtureFile;

  ListBuilder<String>? _addedPaths;
  ListBuilder<String> get addedPaths =>
      _$this._addedPaths ??= ListBuilder<String>();
  set addedPaths(ListBuilder<String>? addedPaths) =>
      _$this._addedPaths = addedPaths;

  ListBuilder<String>? _removedPaths;
  ListBuilder<String> get removedPaths =>
      _$this._removedPaths ??= ListBuilder<String>();
  set removedPaths(ListBuilder<String>? removedPaths) =>
      _$this._removedPaths = removedPaths;

  ListBuilder<StructureDiffTypeChangedInner>? _typeChanged;
  ListBuilder<StructureDiffTypeChangedInner> get typeChanged =>
      _$this._typeChanged ??= ListBuilder<StructureDiffTypeChangedInner>();
  set typeChanged(ListBuilder<StructureDiffTypeChangedInner>? typeChanged) =>
      _$this._typeChanged = typeChanged;

  ListBuilder<StructureDiffPresenceDroppedInner>? _presenceDropped;
  ListBuilder<StructureDiffPresenceDroppedInner> get presenceDropped =>
      _$this._presenceDropped ??=
          ListBuilder<StructureDiffPresenceDroppedInner>();
  set presenceDropped(
    ListBuilder<StructureDiffPresenceDroppedInner>? presenceDropped,
  ) => _$this._presenceDropped = presenceDropped;

  ListBuilder<String>? _arrayEmpty;
  ListBuilder<String> get arrayEmpty =>
      _$this._arrayEmpty ??= ListBuilder<String>();
  set arrayEmpty(ListBuilder<String>? arrayEmpty) =>
      _$this._arrayEmpty = arrayEmpty;

  bool? _columnsReordered;
  bool? get columnsReordered => _$this._columnsReordered;
  set columnsReordered(bool? columnsReordered) =>
      _$this._columnsReordered = columnsReordered;

  StructureDiffDelimiterChangedBuilder? _delimiterChanged;
  StructureDiffDelimiterChangedBuilder get delimiterChanged =>
      _$this._delimiterChanged ??= StructureDiffDelimiterChangedBuilder();
  set delimiterChanged(
    StructureDiffDelimiterChangedBuilder? delimiterChanged,
  ) => _$this._delimiterChanged = delimiterChanged;

  StructureDiffContentTypeChangedBuilder? _contentTypeChanged;
  StructureDiffContentTypeChangedBuilder get contentTypeChanged =>
      _$this._contentTypeChanged ??= StructureDiffContentTypeChangedBuilder();
  set contentTypeChanged(
    StructureDiffContentTypeChangedBuilder? contentTypeChanged,
  ) => _$this._contentTypeChanged = contentTypeChanged;

  num? _sizeRatio;
  num? get sizeRatio => _$this._sizeRatio;
  set sizeRatio(num? sizeRatio) => _$this._sizeRatio = sizeRatio;

  ListBuilder<StructureDiffRenameCandidatesInner>? _renameCandidates;
  ListBuilder<StructureDiffRenameCandidatesInner> get renameCandidates =>
      _$this._renameCandidates ??=
          ListBuilder<StructureDiffRenameCandidatesInner>();
  set renameCandidates(
    ListBuilder<StructureDiffRenameCandidatesInner>? renameCandidates,
  ) => _$this._renameCandidates = renameCandidates;

  String? _htmlTitle;
  String? get htmlTitle => _$this._htmlTitle;
  set htmlTitle(String? htmlTitle) => _$this._htmlTitle = htmlTitle;

  MapBuilder<String, BuiltList<String>>? _examples;
  MapBuilder<String, BuiltList<String>> get examples =>
      _$this._examples ??= MapBuilder<String, BuiltList<String>>();
  set examples(MapBuilder<String, BuiltList<String>>? examples) =>
      _$this._examples = examples;

  StructureDiffBuilder() {
    StructureDiff._defaults(this);
  }

  StructureDiffBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _format = $v.format;
      _fixtureFile = $v.fixtureFile;
      _addedPaths = $v.addedPaths.toBuilder();
      _removedPaths = $v.removedPaths.toBuilder();
      _typeChanged = $v.typeChanged.toBuilder();
      _presenceDropped = $v.presenceDropped?.toBuilder();
      _arrayEmpty = $v.arrayEmpty?.toBuilder();
      _columnsReordered = $v.columnsReordered;
      _delimiterChanged = $v.delimiterChanged?.toBuilder();
      _contentTypeChanged = $v.contentTypeChanged?.toBuilder();
      _sizeRatio = $v.sizeRatio;
      _renameCandidates = $v.renameCandidates?.toBuilder();
      _htmlTitle = $v.htmlTitle;
      _examples = $v.examples?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StructureDiff other) {
    _$v = other as _$StructureDiff;
  }

  @override
  void update(void Function(StructureDiffBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StructureDiff build() => _build();

  _$StructureDiff _build() {
    _$StructureDiff _$result;
    try {
      _$result =
          _$v ??
          _$StructureDiff._(
            format: BuiltValueNullFieldError.checkNotNull(
              format,
              r'StructureDiff',
              'format',
            ),
            fixtureFile: fixtureFile,
            addedPaths: addedPaths.build(),
            removedPaths: removedPaths.build(),
            typeChanged: typeChanged.build(),
            presenceDropped: _presenceDropped?.build(),
            arrayEmpty: _arrayEmpty?.build(),
            columnsReordered: columnsReordered,
            delimiterChanged: _delimiterChanged?.build(),
            contentTypeChanged: _contentTypeChanged?.build(),
            sizeRatio: sizeRatio,
            renameCandidates: _renameCandidates?.build(),
            htmlTitle: htmlTitle,
            examples: _examples?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'addedPaths';
        addedPaths.build();
        _$failedField = 'removedPaths';
        removedPaths.build();
        _$failedField = 'typeChanged';
        typeChanged.build();
        _$failedField = 'presenceDropped';
        _presenceDropped?.build();
        _$failedField = 'arrayEmpty';
        _arrayEmpty?.build();

        _$failedField = 'delimiterChanged';
        _delimiterChanged?.build();
        _$failedField = 'contentTypeChanged';
        _contentTypeChanged?.build();

        _$failedField = 'renameCandidates';
        _renameCandidates?.build();

        _$failedField = 'examples';
        _examples?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'StructureDiff',
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
