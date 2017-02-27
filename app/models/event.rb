class Event < ApplicationRecord
  belongs_to :user, optional: true

  scope :in_month, ->(start_date) {
    where('start_date >= ?', start_date)
  }

  # Contants
  #
  COLORS = {
    vacation: '#88b200',
    sick: 'red',
    standup: '#0088b2',
    planning: '#ffc125',
    retrospective: '#491b47',
    workshop: '#920076',
    meeting: '#bf4469',
    other: '#c25975'
  }

  # Instance methods
  #
  def title
    [user.try(:github_login), event_type].reject { |e| e.blank? }.join(' - ')
  end

  def all_day?
    %w[vacation sick].include?(event_type)
  end

  def color
    COLORS[event_type.try(:to_sym)]
  end
end

# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  name        :string
#  location    :string
#  start_date  :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  event_type  :string
#  end_date    :date
#  user_id     :integer
#  type        :string
#  description :text
#
