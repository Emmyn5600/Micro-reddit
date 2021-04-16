# frozen_string_literal: true

json.array! @authors, partial: 'authors/author', as: :author
