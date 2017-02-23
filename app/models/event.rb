class Event < ApplicationRecord
  belongs_to :user
  EVENT_TYPES = %i[meeting workshop vacation sick]

  validates :name, :location, :start_date, :end_date, presence: true

  scope :today, -> { where('DATE(start_date) = ?', Date.today).order(start_date: :asc) }

  def full_data
    [event_type, user.try(:github_login), name ].compact.join(' - ')

  end

  def absence?
    %w[vacation sick].include?(event_type)
  end
end

# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  name       :string
#  location   :string
#  date       :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
