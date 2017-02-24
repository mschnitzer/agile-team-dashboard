class Meeting < Event
  validates :location, :start_date, :end_date, presence: true
  scope :today, -> { where('DATE(start_date) = ?', Date.today).order(start_date: :asc) }

  # Contants
  #
  MEETING_TYPES = %i[standup planning retrospective meeting workshop other]
end
