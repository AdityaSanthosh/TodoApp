class Todo < ApplicationRecord
  enum :status, { pending: 'pending', in_progress: 'in_progress', done: 'done' }

  validates :status, inclusion: { in: statuses.keys }
end
