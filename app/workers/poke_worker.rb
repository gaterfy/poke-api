# frozen_string_literal: true

class PokeWorker
  include Sidekiq::Worker

  def perform(*args)
    PokeService.new.call
  end
end
