# require_relative './database_connection'

# class Comment
#   def self.create(peep_id:, text:)
#     result = DatabaseConnection.query(
#       "INSERT INTO comments (peep_id, text) VALUES ($1, $2) RETURNING id, text, peep_id;",
#       [peep_id, text]
#     )
#     Comment.new(
#       id: result[0]['id'],
#       text: result[0]['text'],
#       peep_id: result[0]['peep_id']
#     )
#   end

#    def self.where(peep_id:)
#     result = DatabaseConnection.query(
#       "SELECT * FROM comments WHERE peep_id = $1;",
#       [peep_id]
#     )
#     result.map do |comment|
#       Comment.new(
#         id: comment['id'],
#         text: comment['text'],
#         peep_id: comment['peep_id']
#       )
#     end
#   end


#    attr_reader :id, :text, :peep_id

#   def initialize(id:, text:, peep_id:)
#     @id = id
#     @text = text
#     @peep_id = peep_id
#   end
# end