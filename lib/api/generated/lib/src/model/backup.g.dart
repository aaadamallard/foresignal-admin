// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backup.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Backup extends Backup {
  @override
  final String id;
  @override
  final String type;
  @override
  final String status;
  @override
  final DateTime createdAt;
  @override
  final int? sizeBytes;
  @override
  final String? target;
  @override
  final String? location;
  @override
  final String? checksum;
  @override
  final String? label;

  factory _$Backup([void Function(BackupBuilder)? updates]) =>
      (BackupBuilder()..update(updates))._build();

  _$Backup._({
    required this.id,
    required this.type,
    required this.status,
    required this.createdAt,
    this.sizeBytes,
    this.target,
    this.location,
    this.checksum,
    this.label,
  }) : super._();
  @override
  Backup rebuild(void Function(BackupBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BackupBuilder toBuilder() => BackupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Backup &&
        id == other.id &&
        type == other.type &&
        status == other.status &&
        createdAt == other.createdAt &&
        sizeBytes == other.sizeBytes &&
        target == other.target &&
        location == other.location &&
        checksum == other.checksum &&
        label == other.label;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, sizeBytes.hashCode);
    _$hash = $jc(_$hash, target.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, checksum.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Backup')
          ..add('id', id)
          ..add('type', type)
          ..add('status', status)
          ..add('createdAt', createdAt)
          ..add('sizeBytes', sizeBytes)
          ..add('target', target)
          ..add('location', location)
          ..add('checksum', checksum)
          ..add('label', label))
        .toString();
  }
}

class BackupBuilder implements Builder<Backup, BackupBuilder> {
  _$Backup? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  int? _sizeBytes;
  int? get sizeBytes => _$this._sizeBytes;
  set sizeBytes(int? sizeBytes) => _$this._sizeBytes = sizeBytes;

  String? _target;
  String? get target => _$this._target;
  set target(String? target) => _$this._target = target;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  String? _checksum;
  String? get checksum => _$this._checksum;
  set checksum(String? checksum) => _$this._checksum = checksum;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  BackupBuilder() {
    Backup._defaults(this);
  }

  BackupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _status = $v.status;
      _createdAt = $v.createdAt;
      _sizeBytes = $v.sizeBytes;
      _target = $v.target;
      _location = $v.location;
      _checksum = $v.checksum;
      _label = $v.label;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Backup other) {
    _$v = other as _$Backup;
  }

  @override
  void update(void Function(BackupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Backup build() => _build();

  _$Backup _build() {
    final _$result =
        _$v ??
        _$Backup._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'Backup', 'id'),
          type: BuiltValueNullFieldError.checkNotNull(type, r'Backup', 'type'),
          status: BuiltValueNullFieldError.checkNotNull(
            status,
            r'Backup',
            'status',
          ),
          createdAt: BuiltValueNullFieldError.checkNotNull(
            createdAt,
            r'Backup',
            'createdAt',
          ),
          sizeBytes: sizeBytes,
          target: target,
          location: location,
          checksum: checksum,
          label: label,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
