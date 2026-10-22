// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'share_received_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ShareReceivedEventRoleEnum _$shareReceivedEventRoleEnum_viewer =
    const ShareReceivedEventRoleEnum._('viewer');
const ShareReceivedEventRoleEnum _$shareReceivedEventRoleEnum_commenter =
    const ShareReceivedEventRoleEnum._('commenter');
const ShareReceivedEventRoleEnum _$shareReceivedEventRoleEnum_editor =
    const ShareReceivedEventRoleEnum._('editor');
const ShareReceivedEventRoleEnum _$shareReceivedEventRoleEnum_owner =
    const ShareReceivedEventRoleEnum._('owner');

ShareReceivedEventRoleEnum _$shareReceivedEventRoleEnumValueOf(String name) {
  switch (name) {
    case 'viewer':
      return _$shareReceivedEventRoleEnum_viewer;
    case 'commenter':
      return _$shareReceivedEventRoleEnum_commenter;
    case 'editor':
      return _$shareReceivedEventRoleEnum_editor;
    case 'owner':
      return _$shareReceivedEventRoleEnum_owner;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ShareReceivedEventRoleEnum> _$shareReceivedEventRoleEnumValues =
    BuiltSet<ShareReceivedEventRoleEnum>(const <ShareReceivedEventRoleEnum>[
      _$shareReceivedEventRoleEnum_viewer,
      _$shareReceivedEventRoleEnum_commenter,
      _$shareReceivedEventRoleEnum_editor,
      _$shareReceivedEventRoleEnum_owner,
    ]);

Serializer<ShareReceivedEventRoleEnum> _$shareReceivedEventRoleEnumSerializer =
    _$ShareReceivedEventRoleEnumSerializer();

class _$ShareReceivedEventRoleEnumSerializer
    implements PrimitiveSerializer<ShareReceivedEventRoleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'viewer': 'viewer',
    'commenter': 'commenter',
    'editor': 'editor',
    'owner': 'owner',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'viewer': 'viewer',
    'commenter': 'commenter',
    'editor': 'editor',
    'owner': 'owner',
  };

  @override
  final Iterable<Type> types = const <Type>[ShareReceivedEventRoleEnum];
  @override
  final String wireName = 'ShareReceivedEventRoleEnum';

  @override
  Object serialize(
    Serializers serializers,
    ShareReceivedEventRoleEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ShareReceivedEventRoleEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ShareReceivedEventRoleEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ShareReceivedEvent extends ShareReceivedEvent {
  @override
  final String ref;
  @override
  final ObjectEnvelope? envelope;
  @override
  final ShareReceivedEventRoleEnum role;
  @override
  final PrincipalSummary sharedBy;
  @override
  final String? message;
  @override
  final DateTime at;

  factory _$ShareReceivedEvent([
    void Function(ShareReceivedEventBuilder)? updates,
  ]) => (ShareReceivedEventBuilder()..update(updates))._build();

  _$ShareReceivedEvent._({
    required this.ref,
    this.envelope,
    required this.role,
    required this.sharedBy,
    this.message,
    required this.at,
  }) : super._();
  @override
  ShareReceivedEvent rebuild(
    void Function(ShareReceivedEventBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ShareReceivedEventBuilder toBuilder() =>
      ShareReceivedEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShareReceivedEvent &&
        ref == other.ref &&
        envelope == other.envelope &&
        role == other.role &&
        sharedBy == other.sharedBy &&
        message == other.message &&
        at == other.at;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, envelope.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, sharedBy.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ShareReceivedEvent')
          ..add('ref', ref)
          ..add('envelope', envelope)
          ..add('role', role)
          ..add('sharedBy', sharedBy)
          ..add('message', message)
          ..add('at', at))
        .toString();
  }
}

class ShareReceivedEventBuilder
    implements Builder<ShareReceivedEvent, ShareReceivedEventBuilder> {
  _$ShareReceivedEvent? _$v;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  ObjectEnvelopeBuilder? _envelope;
  ObjectEnvelopeBuilder get envelope =>
      _$this._envelope ??= ObjectEnvelopeBuilder();
  set envelope(ObjectEnvelopeBuilder? envelope) => _$this._envelope = envelope;

  ShareReceivedEventRoleEnum? _role;
  ShareReceivedEventRoleEnum? get role => _$this._role;
  set role(ShareReceivedEventRoleEnum? role) => _$this._role = role;

  PrincipalSummaryBuilder? _sharedBy;
  PrincipalSummaryBuilder get sharedBy =>
      _$this._sharedBy ??= PrincipalSummaryBuilder();
  set sharedBy(PrincipalSummaryBuilder? sharedBy) =>
      _$this._sharedBy = sharedBy;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  ShareReceivedEventBuilder() {
    ShareReceivedEvent._defaults(this);
  }

  ShareReceivedEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ref = $v.ref;
      _envelope = $v.envelope?.toBuilder();
      _role = $v.role;
      _sharedBy = $v.sharedBy.toBuilder();
      _message = $v.message;
      _at = $v.at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShareReceivedEvent other) {
    _$v = other as _$ShareReceivedEvent;
  }

  @override
  void update(void Function(ShareReceivedEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ShareReceivedEvent build() => _build();

  _$ShareReceivedEvent _build() {
    _$ShareReceivedEvent _$result;
    try {
      _$result =
          _$v ??
          _$ShareReceivedEvent._(
            ref: BuiltValueNullFieldError.checkNotNull(
              ref,
              r'ShareReceivedEvent',
              'ref',
            ),
            envelope: _envelope?.build(),
            role: BuiltValueNullFieldError.checkNotNull(
              role,
              r'ShareReceivedEvent',
              'role',
            ),
            sharedBy: sharedBy.build(),
            message: message,
            at: BuiltValueNullFieldError.checkNotNull(
              at,
              r'ShareReceivedEvent',
              'at',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'envelope';
        _envelope?.build();

        _$failedField = 'sharedBy';
        sharedBy.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ShareReceivedEvent',
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
