require 'rails_helper'

RSpec.describe Event, type: :model do
  %i[name location date].each do |attr|
    it { should validate_presence_of(attr) }
  end
end
