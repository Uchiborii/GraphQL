module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :blog, BlogType, null: false
    def blog
      Blog.last
    end
  end
end
