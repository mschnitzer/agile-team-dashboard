class Meeting < Event
  validates :location, :start_date, :end_date, :event_type, presence: true
  scope :today, -> { where('DATE(start_date) = ?', Date.today).order(start_date: :asc) }

  # Contants
  #
  TYPES = %i[standup planning retrospective meeting workshop other]
end
