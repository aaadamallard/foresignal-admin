// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_study_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EventStudyRequest extends EventStudyRequest {
  @override
  final String? name;
  @override
  final EventSelector selector;
  @override
  final String target;
  @override
  final DateTime from;
  @override
  final DateTime to;
  @override
  final DateTime? asOf;

  factory _$EventStudyRequest(
          [void Function(EventStudyRequestBuilder)? updates]) =>
      (EventStudyRequestBuilder()..update(updates))._build();

  _$EventStudyRequest._(
      {this.name,
      required this.selector,
      required this.target,
      required this.from,
      required this.to,
      this.asOf})
      : super._();
  @override
  EventStudyRequest rebuild(void Function(EventStudyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventStudyRequestBuilder toBuilder() =>
      EventStudyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventStudyRequest &&
        name == other.name &&
        selector == other.selector &&
        target == other.target &&
        from == other.from &&
        to == other.to &&
        asOf == other.asOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, selector.hashCode);
    _$hash = $jc(_$hash, target.hashCode);
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, asOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EventStudyRequest')
          ..add('name', name)
          ..add('selector', selector)
          ..add('target', target)
          ..add('from', from)
          ..add('to', to)
          ..add('asOf', asOf))
        .toString();
  }
}

class EventStudyRequestBuilder
    implements Builder<EventStudyRequest, EventStudyRequestBuilder> {
  _$EventStudyRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  EventSelectorBuilder? _selector;
  EventSelectorBuilder get selector =>
      _$this._selector ??= EventSelectorBuilder();
  set selector(EventSelectorBuilder? selector) => _$this._selector = selector;

  String? _target;
  String? get target => _$this._target;
  set target(String? target) => _$this._target = target;

  DateTime? _from;
  DateTime? get from => _$this._from;
  set from(DateTime? from) => _$this._from = from;

  DateTime? _to;
  DateTime? get to => _$this._to;
  set to(DateTime? to) => _$this._to = to;

  DateTime? _asOf;
  DateTime? get asOf => _$this._asOf;
  set asOf(DateTime? asOf) => _$this._asOf = asOf;

  EventStudyRequestBuilder() {
    EventStudyRequest._defaults(this);
  }

  EventStudyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _selector = $v.selector.toBuilder();
      _target = $v.target;
      _from = $v.from;
      _to = $v.to;
      _asOf = $v.asOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventStudyRequest other) {
    _$v = other as _$EventStudyRequest;
  }

  @override
  void update(void Function(EventStudyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EventStudyRequest build() => _build();

  _$EventStudyRequest _build() {
    _$EventStudyRequest _$result;
    try {
      _$result = _$v ??
          _$EventStudyRequest._(
            name: name,
            selector: selector.build(),
            target: BuiltValueNullFieldError.checkNotNull(
                target, r'EventStudyRequest', 'target'),
            from: BuiltValueNullFieldError.checkNotNull(
                from, r'EventStudyRequest', 'from'),
            to: BuiltValueNullFieldError.checkNotNull(
                to, r'EventStudyRequest', 'to'),
            asOf: asOf,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'selector';
        selector.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'EventStudyRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
