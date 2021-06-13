# frozen_string_literal: true

require 'rails_helper'
Sidekiq::Testing.fake!

RSpec.describe PokeWorker, type: :worker do
  subject(:worker) { described_class.new }

  describe '#perform_async' do
    it 'queues poke worker job' do
      expect { PokeWorker.perform_async }.to change(PokeWorker.jobs, :size).by(1)
    end
  end

  describe '#perform' do
    before do
      stub_request(:get, 'https://pokeapi.co/api/v2/pokemon/1')
        .to_return(status: 200, body: '', headers: {})
    end
    it 'should respond to #perform' do
      expect(worker).to respond_to(:perform)
    end
    it 'enqueues another poke worker job' do
      expect_any_instance_of(PokeService).to receive(:call).once

      worker.perform
    end
  end
end
