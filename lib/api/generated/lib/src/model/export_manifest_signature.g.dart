// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'export_manifest_signature.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ExportManifestSignatureAlgEnum _$exportManifestSignatureAlgEnum_ed25519 =
    const ExportManifestSignatureAlgEnum._('ed25519');
const ExportManifestSignatureAlgEnum _$exportManifestSignatureAlgEnum_edDSA =
    const ExportManifestSignatureAlgEnum._('edDSA');

ExportManifestSignatureAlgEnum _$exportManifestSignatureAlgEnumValueOf(
  String name,
) {
  switch (name) {
    case 'ed25519':
      return _$exportManifestSignatureAlgEnum_ed25519;
    case 'edDSA':
      return _$exportManifestSignatureAlgEnum_edDSA;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ExportManifestSignatureAlgEnum>
_$exportManifestSignatureAlgEnumValues =
    BuiltSet<ExportManifestSignatureAlgEnum>(
      const <ExportManifestSignatureAlgEnum>[
        _$exportManifestSignatureAlgEnum_ed25519,
        _$exportManifestSignatureAlgEnum_edDSA,
      ],
    );

Serializer<ExportManifestSignatureAlgEnum>
_$exportManifestSignatureAlgEnumSerializer =
    _$ExportManifestSignatureAlgEnumSerializer();

class _$ExportManifestSignatureAlgEnumSerializer
    implements PrimitiveSerializer<ExportManifestSignatureAlgEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ed25519': 'Ed25519',
    'edDSA': 'EdDSA',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Ed25519': 'ed25519',
    'EdDSA': 'edDSA',
  };

  @override
  final Iterable<Type> types = const <Type>[ExportManifestSignatureAlgEnum];
  @override
  final String wireName = 'ExportManifestSignatureAlgEnum';

  @override
  Object serialize(
    Serializers serializers,
    ExportManifestSignatureAlgEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ExportManifestSignatureAlgEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ExportManifestSignatureAlgEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ExportManifestSignature extends ExportManifestSignature {
  @override
  final ExportManifestSignatureAlgEnum alg;
  @override
  final String kid;
  @override
  final String file;

  factory _$ExportManifestSignature([
    void Function(ExportManifestSignatureBuilder)? updates,
  ]) => (ExportManifestSignatureBuilder()..update(updates))._build();

  _$ExportManifestSignature._({
    required this.alg,
    required this.kid,
    required this.file,
  }) : super._();
  @override
  ExportManifestSignature rebuild(
    void Function(ExportManifestSignatureBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ExportManifestSignatureBuilder toBuilder() =>
      ExportManifestSignatureBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExportManifestSignature &&
        alg == other.alg &&
        kid == other.kid &&
        file == other.file;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, alg.hashCode);
    _$hash = $jc(_$hash, kid.hashCode);
    _$hash = $jc(_$hash, file.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExportManifestSignature')
          ..add('alg', alg)
          ..add('kid', kid)
          ..add('file', file))
        .toString();
  }
}

class ExportManifestSignatureBuilder
    implements
        Builder<ExportManifestSignature, ExportManifestSignatureBuilder> {
  _$ExportManifestSignature? _$v;

  ExportManifestSignatureAlgEnum? _alg;
  ExportManifestSignatureAlgEnum? get alg => _$this._alg;
  set alg(ExportManifestSignatureAlgEnum? alg) => _$this._alg = alg;

  String? _kid;
  String? get kid => _$this._kid;
  set kid(String? kid) => _$this._kid = kid;

  String? _file;
  String? get file => _$this._file;
  set file(String? file) => _$this._file = file;

  ExportManifestSignatureBuilder() {
    ExportManifestSignature._defaults(this);
  }

  ExportManifestSignatureBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _alg = $v.alg;
      _kid = $v.kid;
      _file = $v.file;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExportManifestSignature other) {
    _$v = other as _$ExportManifestSignature;
  }

  @override
  void update(void Function(ExportManifestSignatureBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExportManifestSignature build() => _build();

  _$ExportManifestSignature _build() {
    final _$result =
        _$v ??
        _$ExportManifestSignature._(
          alg: BuiltValueNullFieldError.checkNotNull(
            alg,
            r'ExportManifestSignature',
            'alg',
          ),
          kid: BuiltValueNullFieldError.checkNotNull(
            kid,
            r'ExportManifestSignature',
            'kid',
          ),
          file: BuiltValueNullFieldError.checkNotNull(
            file,
            r'ExportManifestSignature',
            'file',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
