//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:foresignal_api/src/model/analyst_proposal.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'analyst_proposal_page.g.dart';

/// Page of analyst proposals
///
/// Properties:
/// * [items]
/// * [nextCursor] - Opaque cursor for the next page; null on the last page
@BuiltValue()
abstract class AnalystProposalPage
    implements Built<AnalystProposalPage, AnalystProposalPageBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<AnalystProposal> get items;

  /// Opaque cursor for the next page; null on the last page
  @BuiltValueField(wireName: r'nextCursor')
  String? get nextCursor;

  AnalystProposalPage._();

  factory AnalystProposalPage([void updates(AnalystProposalPageBuilder b)]) =
      _$AnalystProposalPage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnalystProposalPageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnalystProposalPage> get serializer =>
      _$AnalystProposalPageSerializer();
}

class _$AnalystProposalPageSerializer
    implements PrimitiveSerializer<AnalystProposalPage> {
  @override
  final Iterable<Type> types = const [
    AnalystProposalPage,
    _$AnalystProposalPage,
  ];

  @override
  final String wireName = r'AnalystProposalPage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnalystProposalPage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(AnalystProposal)]),
    );
    if (object.nextCursor != null) {
      yield r'nextCursor';
      yield serializers.serialize(
        object.nextCursor,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AnalystProposalPage object, {
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
    required AnalystProposalPageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(AnalystProposal),
                    ]),
                  )
                  as BuiltList<AnalystProposal>;
          result.items.replace(valueDes);
          break;
        case r'nextCursor':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.nextCursor = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnalystProposalPage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalystProposalPageBuilder();
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
