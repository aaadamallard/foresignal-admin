// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'archive.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Archive extends Archive {
  @override
  final String id;
  @override
  final String status;
  @override
  final DateTime createdAt;
  @override
  final DateTime? cutoff;
  @override
  final String target;
  @override
  final String? location;
  @override
  final int? sizeBytes;
  @override
  final int? itemCount;
  @override
  final String? checksum;
  @override
  final bool? purgedFromHot;
  @override
  final DateTime? restoredAt;
  @override
  final String? trigger;
  @override
  final String? domain;
  @override
  final BuiltList<String>? sources;
  @override
  final int? fromSeq;
  @override
  final int? toSeq;
  @override
  final DateTime? fromTime;
  @override
  final DateTime? toTime;
  @override
  final BuiltList<ArchiveFilesInner>? files;
  @override
  final String? error;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? completedAt;
  @override
  final DateTime? purgedAt;

  factory _$Archive([void Function(ArchiveBuilder)? updates]) =>
      (ArchiveBuilder()..update(updates))._build();

  _$Archive._({
    required this.id,
    required this.status,
    required this.createdAt,
    this.cutoff,
    required this.target,
    this.location,
    this.sizeBytes,
    this.itemCount,
    this.checksum,
    this.purgedFromHot,
    this.restoredAt,
    this.trigger,
    this.domain,
    this.sources,
    this.fromSeq,
    this.toSeq,
    this.fromTime,
    this.toTime,
    this.files,
    this.error,
    this.updatedAt,
    this.completedAt,
    this.purgedAt,
  }) : super._();
  @override
  Archive rebuild(void Function(ArchiveBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArchiveBuilder toBuilder() => ArchiveBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Archive &&
        id == other.id &&
        status == other.status &&
        createdAt == other.createdAt &&
        cutoff == other.cutoff &&
        target == other.target &&
        location == other.location &&
        sizeBytes == other.sizeBytes &&
        itemCount == other.itemCount &&
        checksum == other.checksum &&
        purgedFromHot == other.purgedFromHot &&
        restoredAt == other.restoredAt &&
        trigger == other.trigger &&
        domain == other.domain &&
        sources == other.sources &&
        fromSeq == other.fromSeq &&
        toSeq == other.toSeq &&
        fromTime == other.fromTime &&
        toTime == other.toTime &&
        files == other.files &&
        error == other.error &&
        updatedAt == other.updatedAt &&
        completedAt == other.completedAt &&
        purgedAt == other.purgedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, cutoff.hashCode);
    _$hash = $jc(_$hash, target.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, sizeBytes.hashCode);
    _$hash = $jc(_$hash, itemCount.hashCode);
    _$hash = $jc(_$hash, checksum.hashCode);
    _$hash = $jc(_$hash, purgedFromHot.hashCode);
    _$hash = $jc(_$hash, restoredAt.hashCode);
    _$hash = $jc(_$hash, trigger.hashCode);
    _$hash = $jc(_$hash, domain.hashCode);
    _$hash = $jc(_$hash, sources.hashCode);
    _$hash = $jc(_$hash, fromSeq.hashCode);
    _$hash = $jc(_$hash, toSeq.hashCode);
    _$hash = $jc(_$hash, fromTime.hashCode);
    _$hash = $jc(_$hash, toTime.hashCode);
    _$hash = $jc(_$hash, files.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, completedAt.hashCode);
    _$hash = $jc(_$hash, purgedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Archive')
          ..add('id', id)
          ..add('status', status)
          ..add('createdAt', createdAt)
          ..add('cutoff', cutoff)
          ..add('target', target)
          ..add('location', location)
          ..add('sizeBytes', sizeBytes)
          ..add('itemCount', itemCount)
          ..add('checksum', checksum)
          ..add('purgedFromHot', purgedFromHot)
          ..add('restoredAt', restoredAt)
          ..add('trigger', trigger)
          ..add('domain', domain)
          ..add('sources', sources)
          ..add('fromSeq', fromSeq)
          ..add('toSeq', toSeq)
          ..add('fromTime', fromTime)
          ..add('toTime', toTime)
          ..add('files', files)
          ..add('error', error)
          ..add('updatedAt', updatedAt)
          ..add('completedAt', completedAt)
          ..add('purgedAt', purgedAt))
        .toString();
  }
}

class ArchiveBuilder implements Builder<Archive, ArchiveBuilder> {
  _$Archive? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _cutoff;
  DateTime? get cutoff => _$this._cutoff;
  set cutoff(DateTime? cutoff) => _$this._cutoff = cutoff;

  String? _target;
  String? get target => _$this._target;
  set target(String? target) => _$this._target = target;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  int? _sizeBytes;
  int? get sizeBytes => _$this._sizeBytes;
  set sizeBytes(int? sizeBytes) => _$this._sizeBytes = sizeBytes;

  int? _itemCount;
  int? get itemCount => _$this._itemCount;
  set itemCount(int? itemCount) => _$this._itemCount = itemCount;

  String? _checksum;
  String? get checksum => _$this._checksum;
  set checksum(String? checksum) => _$this._checksum = checksum;

  bool? _purgedFromHot;
  bool? get purgedFromHot => _$this._purgedFromHot;
  set purgedFromHot(bool? purgedFromHot) =>
      _$this._purgedFromHot = purgedFromHot;

  DateTime? _restoredAt;
  DateTime? get restoredAt => _$this._restoredAt;
  set restoredAt(DateTime? restoredAt) => _$this._restoredAt = restoredAt;

  String? _trigger;
  String? get trigger => _$this._trigger;
  set trigger(String? trigger) => _$this._trigger = trigger;

  String? _domain;
  String? get domain => _$this._domain;
  set domain(String? domain) => _$this._domain = domain;

  ListBuilder<String>? _sources;
  ListBuilder<String> get sources => _$this._sources ??= ListBuilder<String>();
  set sources(ListBuilder<String>? sources) => _$this._sources = sources;

  int? _fromSeq;
  int? get fromSeq => _$this._fromSeq;
  set fromSeq(int? fromSeq) => _$this._fromSeq = fromSeq;

  int? _toSeq;
  int? get toSeq => _$this._toSeq;
  set toSeq(int? toSeq) => _$this._toSeq = toSeq;

  DateTime? _fromTime;
  DateTime? get fromTime => _$this._fromTime;
  set fromTime(DateTime? fromTime) => _$this._fromTime = fromTime;

  DateTime? _toTime;
  DateTime? get toTime => _$this._toTime;
  set toTime(DateTime? toTime) => _$this._toTime = toTime;

  ListBuilder<ArchiveFilesInner>? _files;
  ListBuilder<ArchiveFilesInner> get files =>
      _$this._files ??= ListBuilder<ArchiveFilesInner>();
  set files(ListBuilder<ArchiveFilesInner>? files) => _$this._files = files;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  DateTime? _completedAt;
  DateTime? get completedAt => _$this._completedAt;
  set completedAt(DateTime? completedAt) => _$this._completedAt = completedAt;

  DateTime? _purgedAt;
  DateTime? get purgedAt => _$this._purgedAt;
  set purgedAt(DateTime? purgedAt) => _$this._purgedAt = purgedAt;

  ArchiveBuilder() {
    Archive._defaults(this);
  }

  ArchiveBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _status = $v.status;
      _createdAt = $v.createdAt;
      _cutoff = $v.cutoff;
      _target = $v.target;
      _location = $v.location;
      _sizeBytes = $v.sizeBytes;
      _itemCount = $v.itemCount;
      _checksum = $v.checksum;
      _purgedFromHot = $v.purgedFromHot;
      _restoredAt = $v.restoredAt;
      _trigger = $v.trigger;
      _domain = $v.domain;
      _sources = $v.sources?.toBuilder();
      _fromSeq = $v.fromSeq;
      _toSeq = $v.toSeq;
      _fromTime = $v.fromTime;
      _toTime = $v.toTime;
      _files = $v.files?.toBuilder();
      _error = $v.error;
      _updatedAt = $v.updatedAt;
      _completedAt = $v.completedAt;
      _purgedAt = $v.purgedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Archive other) {
    _$v = other as _$Archive;
  }

  @override
  void update(void Function(ArchiveBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Archive build() => _build();

  _$Archive _build() {
    _$Archive _$result;
    try {
      _$result =
          _$v ??
          _$Archive._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Archive', 'id'),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'Archive',
              'status',
            ),
            createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt,
              r'Archive',
              'createdAt',
            ),
            cutoff: cutoff,
            target: BuiltValueNullFieldError.checkNotNull(
              target,
              r'Archive',
              'target',
            ),
            location: location,
            sizeBytes: sizeBytes,
            itemCount: itemCount,
            checksum: checksum,
            purgedFromHot: purgedFromHot,
            restoredAt: restoredAt,
            trigger: trigger,
            domain: domain,
            sources: _sources?.build(),
            fromSeq: fromSeq,
            toSeq: toSeq,
            fromTime: fromTime,
            toTime: toTime,
            files: _files?.build(),
            error: error,
            updatedAt: updatedAt,
            completedAt: completedAt,
            purgedAt: purgedAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sources';
        _sources?.build();

        _$failedField = 'files';
        _files?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Archive',
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
