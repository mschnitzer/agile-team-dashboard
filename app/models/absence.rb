class Absence < ApplicationRecord
  belongs_to :user

  validates :start_date, :end_date, :absence_kind, presence: true

  scope :current, -> { where('start_date <= :today AND end_date >= :today', {today: Date.today}) }


  def full_data
    user.email
  end
end

# == Schema Information
#
# Table name: absences
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  start_date   :date
#  end_date     :date
#  description  :text
#  absence_kind :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
