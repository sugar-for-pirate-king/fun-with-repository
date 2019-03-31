class User < ApplicationRecord
  include UserRepository

  enum status: %i[inactive active]
end
