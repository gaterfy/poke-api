# frozen_string_literal: true

# poke worker job
class PokeWorker
  include Sidekiq::Worker

  def perform(*_args)
    PokeService.new.call
  end
end
