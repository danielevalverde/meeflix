module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end

    field :series, SeriesType, null: true do
      description "A tv series"
      argument :id, ID, required: true
    end

    def series(id:)
      Series.find(id)
    end
  end
end
