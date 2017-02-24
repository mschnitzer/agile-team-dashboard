class Event < ApplicationRecord
  belongs_to :user

  # Contants
  #
  COLORS = {
    vacation: 'blue',
    sick: 'red',
    meeting: 'green',
    workshop: 'orange'
  }

  # Instance methods
  #
  def full_data
    [event_type, user.try(:github_login), name ].compact.join(' - ')
  end

  def color
    COLORS[event_type.try(:to_sym)]
  end
end

# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  name       :string
#  location   :string
#  start_date :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  event_type :string
#  end_date   :date
#  user_id    :integer
#
