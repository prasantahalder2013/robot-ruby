require 'rspec'
require_relative '../lib/robot'
require_relative '../lib/table_surface'
require_relative '../lib/simulator'

describe 'Simulator' do
  let(:simulator) { Simulator.new }

  let(:table) { TableSurface.new() }

  let(:robot) { Robot.new(0,0,:east) }

  describe '#new' do
    it 'creates an instance of Simulator' do
      expect(simulator).to be_a Simulator
    end

    it 'has a table' do
      expect(table).to be_a TableSurface
    end

    it 'has a robot' do
      expect(robot).to be_a Robot
    end
  end

  describe '#execute' do
    context 'with left command' do
      describe 'before place command' do
        it 'does nothing' do
          expect(simulator.execute('LEFT', [])).to eq nil
        end
      end
    end

    context 'with right command' do
      describe 'before place command' do
        it 'does nothing' do
          expect(simulator.execute('RIGHT', [])).to eq nil
        end
      end
    end

    context 'with report command' do
      describe 'before place command' do
        it 'does nothing' do
          expect(simulator.execute('REPORT', [])).to eq nil
        end
      end
    end

    context 'if nothing is on table' do
      it 'places robot on table' do
        expect(simulator.execute('PLACE', [0,0,'NORTH'])).to eq nil
      end
    end
  end

  describe '#place' do
    context 'with valid coordinates and direction' do
      it 'places robot on table' do
        expect(simulator.place([0,0,'NORTH'])).to eq nil
      end
    end
  end
end
