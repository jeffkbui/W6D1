# == Schema Information
#
# Table name: polls
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  author_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Poll < ApplicationRecord
  validates :title, :author_id, presence: true

  has_many :questions,
    foreign_key: :question_id,
    class_name: 'Question'

  belongs_to :author,
    foreign_key: :author_id,
    class_name: :User
end
