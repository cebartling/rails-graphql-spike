MovieType = GraphQL::ObjectType.define do
  name "Movie"
  description "A Movie"
  field :id, types.ID
  field :title, types.String
  field :year, types.Int
  field :budget_in_millions, types.Float
  field :box_office_in_millions, types.Float
  field :actors do
    type types[ActorType]
    argument :size, types.Int, default_value: 10
    resolve -> (movie, args, ctx) {
      movie.actors.limit(args[:size])
    }
  end
end
