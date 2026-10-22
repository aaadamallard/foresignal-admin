// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hello_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HelloEvent extends HelloEvent {
  @override
  final String streamId;
  @override
  final BuiltList<String> topics;
  @override
  final int watermarkSeq;
  @override
  final int filterVersion;
  @override
  final String? streamKey;

  factory _$HelloEvent([void Function(HelloEventBuilder)? updates]) =>
      (HelloEventBuilder()..update(updates))._build();

  _$HelloEvent._({
    required this.streamId,
    required this.topics,
    required this.watermarkSeq,
    required this.filterVersion,
    this.streamKey,
  }) : super._();
  @override
  HelloEvent rebuild(void Function(HelloEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HelloEventBuilder toBuilder() => HelloEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HelloEvent &&
        streamId == other.streamId &&
        topics == other.topics &&
        watermarkSeq == other.watermarkSeq &&
        filterVersion == other.filterVersion &&
        streamKey == other.streamKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, streamId.hashCode);
    _$hash = $jc(_$hash, topics.hashCode);
    _$hash = $jc(_$hash, watermarkSeq.hashCode);
    _$hash = $jc(_$hash, filterVersion.hashCode);
    _$hash = $jc(_$hash, streamKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HelloEvent')
          ..add('streamId', streamId)
          ..add('topics', topics)
          ..add('watermarkSeq', watermarkSeq)
          ..add('filterVersion', filterVersion)
          ..add('streamKey', streamKey))
        .toString();
  }
}

class HelloEventBuilder implements Builder<HelloEvent, HelloEventBuilder> {
  _$HelloEvent? _$v;

  String? _streamId;
  String? get streamId => _$this._streamId;
  set streamId(String? streamId) => _$this._streamId = streamId;

  ListBuilder<String>? _topics;
  ListBuilder<String> get topics => _$this._topics ??= ListBuilder<String>();
  set topics(ListBuilder<String>? topics) => _$this._topics = topics;

  int? _watermarkSeq;
  int? get watermarkSeq => _$this._watermarkSeq;
  set watermarkSeq(int? watermarkSeq) => _$this._watermarkSeq = watermarkSeq;

  int? _filterVersion;
  int? get filterVersion => _$this._filterVersion;
  set filterVersion(int? filterVersion) =>
      _$this._filterVersion = filterVersion;

  String? _streamKey;
  String? get streamKey => _$this._streamKey;
  set streamKey(String? streamKey) => _$this._streamKey = streamKey;

  HelloEventBuilder() {
    HelloEvent._defaults(this);
  }

  HelloEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _streamId = $v.streamId;
      _topics = $v.topics.toBuilder();
      _watermarkSeq = $v.watermarkSeq;
      _filterVersion = $v.filterVersion;
      _streamKey = $v.streamKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HelloEvent other) {
    _$v = other as _$HelloEvent;
  }

  @override
  void update(void Function(HelloEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HelloEvent build() => _build();

  _$HelloEvent _build() {
    _$HelloEvent _$result;
    try {
      _$result =
          _$v ??
          _$HelloEvent._(
            streamId: BuiltValueNullFieldError.checkNotNull(
              streamId,
              r'HelloEvent',
              'streamId',
            ),
            topics: topics.build(),
            watermarkSeq: BuiltValueNullFieldError.checkNotNull(
              watermarkSeq,
              r'HelloEvent',
              'watermarkSeq',
            ),
            filterVersion: BuiltValueNullFieldError.checkNotNull(
              filterVersion,
              r'HelloEvent',
              'filterVersion',
            ),
            streamKey: streamKey,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'topics';
        topics.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'HelloEvent',
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
