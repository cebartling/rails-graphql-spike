DateType = GraphQL::ScalarType.define do
  name "Date"
  description "Date from string"

  coerce_input ->(value, ctx) { Date.strptime(value, "%Y%m%d") }
  coerce_result ->(value, ctx) { value.strftime("%Y%m%d") }
end
