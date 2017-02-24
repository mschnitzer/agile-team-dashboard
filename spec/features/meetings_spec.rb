require 'rails_helper'

RSpec.feature 'Meetings', type: :feature, js: true do
  let(:miyagi) { create :miyagi }

  scenario 'meeing index' do
    login_as miyagi
    visit meetings_path
  end
end
