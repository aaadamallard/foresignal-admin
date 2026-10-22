// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_manifest.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PackageManifestTypeEnum _$packageManifestTypeEnum_report =
    const PackageManifestTypeEnum._('report');
const PackageManifestTypeEnum _$packageManifestTypeEnum_investigation =
    const PackageManifestTypeEnum._('investigation');
const PackageManifestTypeEnum _$packageManifestTypeEnum_chronicleExtract =
    const PackageManifestTypeEnum._('chronicleExtract');
const PackageManifestTypeEnum _$packageManifestTypeEnum_evidence =
    const PackageManifestTypeEnum._('evidence');

PackageManifestTypeEnum _$packageManifestTypeEnumValueOf(String name) {
  switch (name) {
    case 'report':
      return _$packageManifestTypeEnum_report;
    case 'investigation':
      return _$packageManifestTypeEnum_investigation;
    case 'chronicleExtract':
      return _$packageManifestTypeEnum_chronicleExtract;
    case 'evidence':
      return _$packageManifestTypeEnum_evidence;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PackageManifestTypeEnum> _$packageManifestTypeEnumValues =
    BuiltSet<PackageManifestTypeEnum>(const <PackageManifestTypeEnum>[
      _$packageManifestTypeEnum_report,
      _$packageManifestTypeEnum_investigation,
      _$packageManifestTypeEnum_chronicleExtract,
      _$packageManifestTypeEnum_evidence,
    ]);

Serializer<PackageManifestTypeEnum> _$packageManifestTypeEnumSerializer =
    _$PackageManifestTypeEnumSerializer();

class _$PackageManifestTypeEnumSerializer
    implements PrimitiveSerializer<PackageManifestTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'report': 'report',
    'investigation': 'investigation',
    'chronicleExtract': 'chronicle-extract',
    'evidence': 'evidence',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'report': 'report',
    'investigation': 'investigation',
    'chronicle-extract': 'chronicleExtract',
    'evidence': 'evidence',
  };

  @override
  final Iterable<Type> types = const <Type>[PackageManifestTypeEnum];
  @override
  final String wireName = 'PackageManifestTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    PackageManifestTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PackageManifestTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PackageManifestTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$PackageManifest extends PackageManifest {
  @override
  final String packageId;
  @override
  final PackageManifestTypeEnum type;
  @override
  final String objectRef;
  @override
  final PackageManifestSender sender;
  @override
  final BuiltList<PackageManifestAuthorsInner> authors;
  @override
  final String tlp;
  @override
  final DateTime createdAt;
  @override
  final JsonObject? recipients;
  @override
  final BuiltMap<String, String> contentHashes;
  @override
  final String? message;
  @override
  final BuiltList<ProvenanceChainEntry>? provenanceChain;
  @override
  final String? title;

  factory _$PackageManifest([void Function(PackageManifestBuilder)? updates]) =>
      (PackageManifestBuilder()..update(updates))._build();

  _$PackageManifest._({
    required this.packageId,
    required this.type,
    required this.objectRef,
    required this.sender,
    required this.authors,
    required this.tlp,
    required this.createdAt,
    this.recipients,
    required this.contentHashes,
    this.message,
    this.provenanceChain,
    this.title,
  }) : super._();
  @override
  PackageManifest rebuild(void Function(PackageManifestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PackageManifestBuilder toBuilder() => PackageManifestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PackageManifest &&
        packageId == other.packageId &&
        type == other.type &&
        objectRef == other.objectRef &&
        sender == other.sender &&
        authors == other.authors &&
        tlp == other.tlp &&
        createdAt == other.createdAt &&
        recipients == other.recipients &&
        contentHashes == other.contentHashes &&
        message == other.message &&
        provenanceChain == other.provenanceChain &&
        title == other.title;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, packageId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, objectRef.hashCode);
    _$hash = $jc(_$hash, sender.hashCode);
    _$hash = $jc(_$hash, authors.hashCode);
    _$hash = $jc(_$hash, tlp.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, recipients.hashCode);
    _$hash = $jc(_$hash, contentHashes.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, provenanceChain.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PackageManifest')
          ..add('packageId', packageId)
          ..add('type', type)
          ..add('objectRef', objectRef)
          ..add('sender', sender)
          ..add('authors', authors)
          ..add('tlp', tlp)
          ..add('createdAt', createdAt)
          ..add('recipients', recipients)
          ..add('contentHashes', contentHashes)
          ..add('message', message)
          ..add('provenanceChain', provenanceChain)
          ..add('title', title))
        .toString();
  }
}

class PackageManifestBuilder
    implements Builder<PackageManifest, PackageManifestBuilder> {
  _$PackageManifest? _$v;

  String? _packageId;
  String? get packageId => _$this._packageId;
  set packageId(String? packageId) => _$this._packageId = packageId;

  PackageManifestTypeEnum? _type;
  PackageManifestTypeEnum? get type => _$this._type;
  set type(PackageManifestTypeEnum? type) => _$this._type = type;

  String? _objectRef;
  String? get objectRef => _$this._objectRef;
  set objectRef(String? objectRef) => _$this._objectRef = objectRef;

  PackageManifestSenderBuilder? _sender;
  PackageManifestSenderBuilder get sender =>
      _$this._sender ??= PackageManifestSenderBuilder();
  set sender(PackageManifestSenderBuilder? sender) => _$this._sender = sender;

  ListBuilder<PackageManifestAuthorsInner>? _authors;
  ListBuilder<PackageManifestAuthorsInner> get authors =>
      _$this._authors ??= ListBuilder<PackageManifestAuthorsInner>();
  set authors(ListBuilder<PackageManifestAuthorsInner>? authors) =>
      _$this._authors = authors;

  String? _tlp;
  String? get tlp => _$this._tlp;
  set tlp(String? tlp) => _$this._tlp = tlp;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  JsonObject? _recipients;
  JsonObject? get recipients => _$this._recipients;
  set recipients(JsonObject? recipients) => _$this._recipients = recipients;

  MapBuilder<String, String>? _contentHashes;
  MapBuilder<String, String> get contentHashes =>
      _$this._contentHashes ??= MapBuilder<String, String>();
  set contentHashes(MapBuilder<String, String>? contentHashes) =>
      _$this._contentHashes = contentHashes;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ListBuilder<ProvenanceChainEntry>? _provenanceChain;
  ListBuilder<ProvenanceChainEntry> get provenanceChain =>
      _$this._provenanceChain ??= ListBuilder<ProvenanceChainEntry>();
  set provenanceChain(ListBuilder<ProvenanceChainEntry>? provenanceChain) =>
      _$this._provenanceChain = provenanceChain;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  PackageManifestBuilder() {
    PackageManifest._defaults(this);
  }

  PackageManifestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _packageId = $v.packageId;
      _type = $v.type;
      _objectRef = $v.objectRef;
      _sender = $v.sender.toBuilder();
      _authors = $v.authors.toBuilder();
      _tlp = $v.tlp;
      _createdAt = $v.createdAt;
      _recipients = $v.recipients;
      _contentHashes = $v.contentHashes.toBuilder();
      _message = $v.message;
      _provenanceChain = $v.provenanceChain?.toBuilder();
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PackageManifest other) {
    _$v = other as _$PackageManifest;
  }

  @override
  void update(void Function(PackageManifestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PackageManifest build() => _build();

  _$PackageManifest _build() {
    _$PackageManifest _$result;
    try {
      _$result =
          _$v ??
          _$PackageManifest._(
            packageId: BuiltValueNullFieldError.checkNotNull(
              packageId,
              r'PackageManifest',
              'packageId',
            ),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'PackageManifest',
              'type',
            ),
            objectRef: BuiltValueNullFieldError.checkNotNull(
              objectRef,
              r'PackageManifest',
              'objectRef',
            ),
            sender: sender.build(),
            authors: authors.build(),
            tlp: BuiltValueNullFieldError.checkNotNull(
              tlp,
              r'PackageManifest',
              'tlp',
            ),
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'PackageManifest',
              'createdAt',
            ),
            recipients: recipients,
            contentHashes: contentHashes.build(),
            message: message,
            provenanceChain: _provenanceChain?.build(),
            title: title,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sender';
        sender.build();
        _$failedField = 'authors';
        authors.build();

        _$failedField = 'contentHashes';
        contentHashes.build();

        _$failedField = 'provenanceChain';
        _provenanceChain?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PackageManifest',
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
