GraphQL::ObjectType.accepts_definitions(
  resolver: GraphQL::Sugar::Define::Resolver,
  mutator: GraphQL::Sugar::Define::Mutator,
  model: GraphQL::Sugar::Define::ModelClass,
  attribute: GraphQL::Sugar::Define::Attribute,
  attributes: GraphQL::Sugar::Define::Attributes,
  relationship: GraphQL::Sugar::Define::Relationship,
  relationships: GraphQL::Sugar::Define::Relationships,
  can: GraphQL::Sugar::Define::Can
)

GraphQL::Field.accepts_definitions(
  parameter: GraphQL::Sugar::Define::Parameter,
  model: GraphQL::Sugar::Define::ModelClass
)

GraphQL::InterfaceType.accepts_definitions(
  attribute: GraphQL::Sugar::Define::Attribute,
  attributes: GraphQL::Sugar::Define::Attributes,
  relationship: GraphQL::Sugar::Define::Relationship,
  relationships: GraphQL::Sugar::Define::Relationships,
  model: GraphQL::Sugar::Define::ModelClass
)

GraphQL::InputObjectType.accepts_definitions(
  model: GraphQL::Define.assign_metadata_key(:model_class),
  parameter: GraphQL::Sugar::Define::Parameter
)
