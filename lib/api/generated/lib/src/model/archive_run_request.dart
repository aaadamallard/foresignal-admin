//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'archive_run_request.g.dart';

/// Run an archival pass now
///
/// Properties:
/// * [cutoff] - Override the configured cutoff; archive data older than this
/// * [sources] - Restrict to these sources; empty uses the configured allowlist
/// * [dryRun] - Compute what would be archived without exporting or purging
@BuiltValue()
abstract class ArchiveRunRequest
    implements Built<ArchiveRunRequest, ArchiveRunRequestBuilder> {
  /// Override the configured cutoff; archive data older than this
  @BuiltValueField(wireName: r'cutoff')
  DateTime? get cutoff;

  /// Restrict to these sources; empty uses the configured allowlist
  @BuiltValueField(wireName: r'sources')
  BuiltList<String>? get sources;

  /// Compute what would be archived without exporting or purging
  @BuiltValueField(wireName: r'dryRun')
  bool? get dryRun;

  ArchiveRunRequest._();

  factory ArchiveRunRequest([void updates(ArchiveRunRequestBuilder b)]) =
      _$ArchiveRunRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ArchiveRunRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ArchiveRunRequest> get serializer =>
      _$ArchiveRunRequestSerializer();
}

class _$ArchiveRunRequestSerializer
    implements PrimitiveSerializer<ArchiveRunRequest> {
  @override
  final Iterable<Type> types = const [ArchiveRunRequest, _$ArchiveRunRequest];

  @override
  final String wireName = r'ArchiveRunRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ArchiveRunRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.cutoff != null) {
      yield r'cutoff';
      yield serializers.serialize(
        object.cutoff,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.sources != null) {
      yield r'sources';
      yield serializers.serialize(
        object.sources,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.dryRun != null) {
      yield r'dryRun';
      yield serializers.serialize(
        object.dryRun,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ArchiveRunRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ArchiveRunRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'cutoff':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DateTime),
                  )
                  as DateTime?;
          if (valueDes == null) continue;
          result.cutoff = valueDes;
          break;
        case r'sources':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>?;
          if (valueDes == null) continue;
          result.sources.replace(valueDes);
          break;
        case r'dryRun':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.dryRun = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ArchiveRunRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ArchiveRunRequestBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
