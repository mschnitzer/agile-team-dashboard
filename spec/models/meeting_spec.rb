require 'rails_helper'

RSpec.describe Meeting, type: :model do
  %i[start_date end_date event_type location].each do |attr|
    it { should validate_presence_of(attr) }
  end

  describe '#TYPES' do
    %i[standup planning retrospective meeting workshop other].each do |cons|
      it { expect(Meeting::TYPES).to include(cons) }
    end

    it { expect(Meeting::TYPES.count).to eq(6) }
  end

  let(:miyagi) { create :miyagi }
  let(:standup) { create :standup }
  let(:planning) { create :planning }
  let(:retrospective) { create :retrospective }
  let(:workshop) { create :workshop }

  describe '#color' do
    context 'when Mr. Miyagi have a standup' do
      it 'he needs his #0088b2 headband' do
        expect(standup.color).to eq('#0088b2')
      end
    end

    context 'when Mr. Miyagi have a planning' do
      it 'he needs his #ffc125 headband' do
        expect(planning.color).to eq('#ffc125')
      end
    end

    context 'when Mr. Miyagi have a retrospective' do
      it 'he needs his #491b47 headband' do
        expect(retrospective.color).to eq('#491b47')
      end
    end

    context 'when Mr. Miyagi have a workshop' do
      it 'he needs his #920076 headband' do
        expect(workshop.color).to eq('#920076')
      end
    end
  end

  describe '#full_data' do
    context 'when Mr. Miyagi have a standup' do
      it 'he needs his green headband' do
        expect(standup.full_data).to eq('standup - awesome standup')
      end
    end

    context 'when Mr. Miyagi have a planning' do
      it 'he needs his orange headband' do
        expect(planning.full_data).to eq('planning - awesome planning')
      end
    end

    context 'when Mr. Miyagi have a retrospective' do
      it 'he needs his rose headband' do
        expect(retrospective.full_data).to eq('retrospective - awesome retrospective')
      end
    end

    context 'when Mr. Miyagi have a workshop' do
      it 'he needs his black headband' do
        expect(workshop.full_data).to eq('workshop - awesome workshop')
      end
    end
  end
end
