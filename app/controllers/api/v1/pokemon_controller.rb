module Api
  module V1
    class PokemonController < ApplicationController
      swagger_controller :pokemon, 'Pokemon'

      swagger_api :index do
        summary 'Returns all posts'
        notes 'Notes...'
      end

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

