module Api
  module V1
    class PokemonController < ApplicationController

      def index
        render json: Pokemon.all.includes(:types).select(:id, :name, :types)
      end

      def show
        pokemon = Pokemon.find_by(name: params[:id])
        render json: pokemon
      end
    end
  end
end

