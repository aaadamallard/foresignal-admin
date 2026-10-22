// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ask_progress_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AskProgressEventStatusEnum _$askProgressEventStatusEnum_calling =
    const AskProgressEventStatusEnum._('calling');
const AskProgressEventStatusEnum _$askProgressEventStatusEnum_done =
    const AskProgressEventStatusEnum._('done');

AskProgressEventStatusEnum _$askProgressEventStatusEnumValueOf(String name) {
  switch (name) {
    case 'calling':
      return _$askProgressEventStatusEnum_calling;
    case 'done':
      return _$askProgressEventStatusEnum_done;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AskProgressEventStatusEnum> _$askProgressEventStatusEnumValues =
    BuiltSet<AskProgressEventStatusEnum>(const <AskProgressEventStatusEnum>[
      _$askProgressEventStatusEnum_calling,
      _$askProgressEventStatusEnum_done,
    ]);

Serializer<AskProgressEventStatusEnum> _$askProgressEventStatusEnumSerializer =
    _$AskProgressEventStatusEnumSerializer();

class _$AskProgressEventStatusEnumSerializer
    implements PrimitiveSerializer<AskProgressEventStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'calling': 'calling',
    'done': 'done',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'calling': 'calling',
    'done': 'done',
  };

  @override
  final Iterable<Type> types = const <Type>[AskProgressEventStatusEnum];
  @override
  final String wireName = 'AskProgressEventStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    AskProgressEventStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AskProgressEventStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AskProgressEventStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AskProgressEvent extends AskProgressEvent {
  @override
  final String tool;
  @override
  final AskProgressEventStatusEnum status;
  @override
  final String? summary;

  factory _$AskProgressEvent([
    void Function(AskProgressEventBuilder)? updates,
  ]) => (AskProgressEventBuilder()..update(updates))._build();

  _$AskProgressEvent._({required this.tool, required this.status, this.summary})
    : super._();
  @override
  AskProgressEvent rebuild(void Function(AskProgressEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AskProgressEventBuilder toBuilder() =>
      AskProgressEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AskProgressEvent &&
        tool == other.tool &&
        status == other.status &&
        summary == other.summary;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tool.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, summary.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AskProgressEvent')
          ..add('tool', tool)
          ..add('status', status)
          ..add('summary', summary))
        .toString();
  }
}

class AskProgressEventBuilder
    implements Builder<AskProgressEvent, AskProgressEventBuilder> {
  _$AskProgressEvent? _$v;

  String? _tool;
  String? get tool => _$this._tool;
  set tool(String? tool) => _$this._tool = tool;

  AskProgressEventStatusEnum? _status;
  AskProgressEventStatusEnum? get status => _$this._status;
  set status(AskProgressEventStatusEnum? status) => _$this._status = status;

  String? _summary;
  String? get summary => _$this._summary;
  set summary(String? summary) => _$this._summary = summary;

  AskProgressEventBuilder() {
    AskProgressEvent._defaults(this);
  }

  AskProgressEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tool = $v.tool;
      _status = $v.status;
      _summary = $v.summary;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AskProgressEvent other) {
    _$v = other as _$AskProgressEvent;
  }

  @override
  void update(void Function(AskProgressEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AskProgressEvent build() => _build();

  _$AskProgressEvent _build() {
    final _$result =
        _$v ??
        _$AskProgressEvent._(
          tool: BuiltValueNullFieldError.checkNotNull(
            tool,
            r'AskProgressEvent',
            'tool',
          ),
          status: BuiltValueNullFieldError.checkNotNull(
            status,
            r'AskProgressEvent',
            'status',
          ),
          summary: summary,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
