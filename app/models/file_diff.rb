class FileDiff
  include CouchPotato::Persistence

  property :baseText
  property :newText
  property :opcodes

  view :all, :key => :created_at
end
