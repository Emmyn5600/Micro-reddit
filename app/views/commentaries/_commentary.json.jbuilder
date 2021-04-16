# frozen_string_literal: true

json.extract! commentary, :id, :content, :author_id, :created_at, :updated_at
json.url commentary_url(commentary, format: :json)
