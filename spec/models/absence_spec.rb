require 'rails_helper'

RSpec.describe Absence, type: :model do
  %i[start_date end_date event_type].each do |attr|
    it { should validate_presence_of(attr) }
  end

  describe '#TYPES' do
    %i[workshop vacation sick other].each do |cons|
      it { expect(Absence::TYPES).to include(cons) }
    end

    it { expect(Absence::TYPES.count).to eq(4) }
  end

  let(:miyagi) { create :miyagi }
  let(:vacation) { create :vacation, user: miyagi }
  let(:sick) { create :sick, user: miyagi }

  describe '#color' do
    context 'when Mr. Miyagi is in vacation' do
      it 'he needs his #88b200 chopsticks' do
        expect(vacation.color).to eq('#88b200')
      end
    end

    context 'when Mr. Miyagi is sick' do
      it 'he needs his red chopsticks' do
        expect(sick.color).to eq('red')
      end
    end
  end

  describe '#full_data' do
    context 'when Mr. Miyagi is in vacation' do
      it 'he needs notify to Daniel san' do
        expect(vacation.full_data).to eq('vacation - miyagi')
      end
    end

    context 'when Mr. Miyagi is sick' do
      it 'he needs notify to Daniel san' do
        expect(sick.full_data).to eq('sick - miyagi')
      end
    end
  end
end
