module UserRepository
  extend ActiveSupport::Concern

  included do
    scope :actives,
          -> { where(status: :active) }
    scope :ordered_by_username,
          -> { order(username: :asc) }
  end
end
