# frozen_string_literal: true

#  rake "scheduler:run_poke_api"
namespace :scheduler do
  desc "persist pokemons from pokeapi"

  task :run_poke_api => [:environment] do
    PokeWorker.new.perform
  end

end