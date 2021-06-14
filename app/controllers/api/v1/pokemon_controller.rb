# frozen_string_literal: true

module Api
  module V1
    # pokemon controller
    class PokemonController < ApplicationController
      swagger_controller :pokemon, 'Pokemon'

      swagger_api :index do
        summary 'Returns all pokemons'
      end

      def index
        render json: Pokemon.all.includes(:types).select(:id, :name)
      end

      def show
        pokemon = Pokemon.find_by(name: params[:id])
        render json: pokemon
      end
    end
  end
end
