// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'population_pack_import.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PopulationPackImportLicenceEnum
_$populationPackImportLicenceEnum_cCBY4Period0 =
    const PopulationPackImportLicenceEnum._('cCBY4Period0');

PopulationPackImportLicenceEnum _$populationPackImportLicenceEnumValueOf(
  String name,
) {
  switch (name) {
    case 'cCBY4Period0':
      return _$populationPackImportLicenceEnum_cCBY4Period0;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PopulationPackImportLicenceEnum>
_$populationPackImportLicenceEnumValues =
    BuiltSet<PopulationPackImportLicenceEnum>(
      const <PopulationPackImportLicenceEnum>[
        _$populationPackImportLicenceEnum_cCBY4Period0,
      ],
    );

Serializer<PopulationPackImportLicenceEnum>
_$populationPackImportLicenceEnumSerializer =
    _$PopulationPackImportLicenceEnumSerializer();

class _$PopulationPackImportLicenceEnumSerializer
    implements PrimitiveSerializer<PopulationPackImportLicenceEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'cCBY4Period0': 'CC-BY-4.0',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'CC-BY-4.0': 'cCBY4Period0',
  };

  @override
  final Iterable<Type> types = const <Type>[PopulationPackImportLicenceEnum];
  @override
  final String wireName = 'PopulationPackImportLicenceEnum';

  @override
  Object serialize(
    Serializers serializers,
    PopulationPackImportLicenceEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PopulationPackImportLicenceEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PopulationPackImportLicenceEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PopulationPackImport extends PopulationPackImport {
  @override
  final String id;
  @override
  final String? path;
  @override
  final String fileSha256;
  @override
  final int epoch;
  @override
  final PopulationPackImportLicenceEnum licence;
  @override
  final String attribution;
  @override
  final PopulationPackImportCells? cells;
  @override
  final DateTime importedAt;
  @override
  final int? durationMs;

  factory _$PopulationPackImport([
    void Function(PopulationPackImportBuilder)? updates,
  ]) => (PopulationPackImportBuilder()..update(updates))._build();

  _$PopulationPackImport._({
    required this.id,
    this.path,
    required this.fileSha256,
    required this.epoch,
    required this.licence,
    required this.attribution,
    this.cells,
    required this.importedAt,
    this.durationMs,
  }) : super._();
  @override
  PopulationPackImport rebuild(
    void Function(PopulationPackImportBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PopulationPackImportBuilder toBuilder() =>
      PopulationPackImportBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PopulationPackImport &&
        id == other.id &&
        path == other.path &&
        fileSha256 == other.fileSha256 &&
        epoch == other.epoch &&
        licence == other.licence &&
        attribution == other.attribution &&
        cells == other.cells &&
        importedAt == other.importedAt &&
        durationMs == other.durationMs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, fileSha256.hashCode);
    _$hash = $jc(_$hash, epoch.hashCode);
    _$hash = $jc(_$hash, licence.hashCode);
    _$hash = $jc(_$hash, attribution.hashCode);
    _$hash = $jc(_$hash, cells.hashCode);
    _$hash = $jc(_$hash, importedAt.hashCode);
    _$hash = $jc(_$hash, durationMs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PopulationPackImport')
          ..add('id', id)
          ..add('path', path)
          ..add('fileSha256', fileSha256)
          ..add('epoch', epoch)
          ..add('licence', licence)
          ..add('attribution', attribution)
          ..add('cells', cells)
          ..add('importedAt', importedAt)
          ..add('durationMs', durationMs))
        .toString();
  }
}

class PopulationPackImportBuilder
    implements Builder<PopulationPackImport, PopulationPackImportBuilder> {
  _$PopulationPackImport? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  String? _fileSha256;
  String? get fileSha256 => _$this._fileSha256;
  set fileSha256(String? fileSha256) => _$this._fileSha256 = fileSha256;

  int? _epoch;
  int? get epoch => _$this._epoch;
  set epoch(int? epoch) => _$this._epoch = epoch;

  PopulationPackImportLicenceEnum? _licence;
  PopulationPackImportLicenceEnum? get licence => _$this._licence;
  set licence(PopulationPackImportLicenceEnum? licence) =>
      _$this._licence = licence;

  String? _attribution;
  String? get attribution => _$this._attribution;
  set attribution(String? attribution) => _$this._attribution = attribution;

  PopulationPackImportCellsBuilder? _cells;
  PopulationPackImportCellsBuilder get cells =>
      _$this._cells ??= PopulationPackImportCellsBuilder();
  set cells(PopulationPackImportCellsBuilder? cells) => _$this._cells = cells;

  DateTime? _importedAt;
  DateTime? get importedAt => _$this._importedAt;
  set importedAt(DateTime? importedAt) => _$this._importedAt = importedAt;

  int? _durationMs;
  int? get durationMs => _$this._durationMs;
  set durationMs(int? durationMs) => _$this._durationMs = durationMs;

  PopulationPackImportBuilder() {
    PopulationPackImport._defaults(this);
  }

  PopulationPackImportBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _path = $v.path;
      _fileSha256 = $v.fileSha256;
      _epoch = $v.epoch;
      _licence = $v.licence;
      _attribution = $v.attribution;
      _cells = $v.cells?.toBuilder();
      _importedAt = $v.importedAt;
      _durationMs = $v.durationMs;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PopulationPackImport other) {
    _$v = other as _$PopulationPackImport;
  }

  @override
  void update(void Function(PopulationPackImportBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PopulationPackImport build() => _build();

  _$PopulationPackImport _build() {
    _$PopulationPackImport _$result;
    try {
      _$result =
          _$v ??
          _$PopulationPackImport._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'PopulationPackImport',
              'id',
            ),
            path: path,
            fileSha256: BuiltValueNullFieldError.checkNotNull(
              fileSha256,
              r'PopulationPackImport',
              'fileSha256',
            ),
            epoch: BuiltValueNullFieldError.checkNotNull(
              epoch,
              r'PopulationPackImport',
              'epoch',
            ),
            licence: BuiltValueNullFieldError.checkNotNull(
              licence,
              r'PopulationPackImport',
              'licence',
            ),
            attribution: BuiltValueNullFieldError.checkNotNull(
              attribution,
              r'PopulationPackImport',
              'attribution',
            ),
            cells: _cells?.build(),
            importedAt: BuiltValueNullFieldError.checkNotNull(
              importedAt,
              r'PopulationPackImport',
              'importedAt',
            ),
            durationMs: durationMs,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cells';
        _cells?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PopulationPackImport',
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
