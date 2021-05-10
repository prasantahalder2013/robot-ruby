require 'rspec'
require_relative '../lib/robot'

describe 'Robot' do
  subject { Robot.new(0,0,:east) }

  describe '#new' do
    it 'creates an instance of Robot' do
      expect(subject).to be_a Robot
    end
  end

  describe '#set_direction' do
  
    it 'is facing north' do
      subject.update_direction :north
      expect(subject.direction).to eq :north
    end

    it 'is facing south' do
      subject.update_direction :south
      expect(subject.direction).to eq :south
    end

    it 'is facing east' do
      subject.update_direction :east
      expect(subject.direction).to eq :east
    end

    it 'is facing west' do
      subject.update_direction :west
      expect(subject.direction).to eq :west
    end
  end

  describe '#left' do
    context 'when facing north' do
      before { subject.update_direction :north }
      it 'turns to face west' do
        subject.left
        expect(subject.direction).to eq :west
      end
    end

    context 'when facing west' do
      before { subject.update_direction :west }
      it 'turns to face south' do
        subject.left
        expect(subject.direction).to eq :south
      end
    end

    context 'when facing south' do
      before { subject.update_direction :south }
      it 'turns to face east' do
        subject.left
        expect(subject.direction).to eq :east
      end
    end
  end

  describe '#right' do
    context 'when facing north' do
      before { subject.update_direction :north }
      it 'turns to face west' do
        subject.left
        expect(subject.direction).to eq :west
      end
    end

    context 'when facing east' do
      before { subject.update_direction :east }
      it 'turns to face north' do
        subject.left
        expect(subject.direction).to eq :north
      end
    end

    context 'when facing south' do
      before { subject.update_direction :south }
      it 'turns to face east' do
        subject.left
        expect(subject.direction).to eq :east
      end
    end
  end
end
