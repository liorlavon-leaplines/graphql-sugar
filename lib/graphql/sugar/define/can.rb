module GraphQL
  module Sugar
    module Define
      module Can
        def self.call(type_defn, field_name, type_or_field = nil, desc = nil, **kwargs, &block) 
        
          n = "can_#{field_name}".camelize(:lower)
          kwargs[:resolve] ||= ->(obj, args, ctx) { 
            ctx[:current_ability].can?(field_name, obj) 
          }
          
          GraphQL::Define::AssignObjectField.call(type_defn, n, GraphQL::BOOLEAN_TYPE, desc, **kwargs, &block)
        end
      end
    end
  end
end