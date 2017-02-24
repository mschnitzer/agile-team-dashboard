require 'rails_helper'

RSpec.describe Meeting, type: :model do
  %i[location start_date end_date event_type].each do |attr|
    it { should validate_presence_of(attr) }
  end
end
