# frozen_string_literal: true

require 'rails_helper'
Sidekiq::Testing.fake!

RSpec.describe PokeWorker, type: :worker do
  subject(:worker) { described_class.new }

  describe "#perform_async" do
    it "queues poke worker job" do
      expect { PokeWorker.perform_async }.to change(PokeWorker.jobs, :size).by(1)
    end
  end

  describe "#perform" do
    it "should respond to #perform" do
      expect(worker).to respond_to(:perform)
    end
  end
end
