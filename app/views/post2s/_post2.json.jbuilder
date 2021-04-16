# frozen_string_literal: true

json.extract! post2, :id, :title, :content, :author_id, :commentary_id, :created_at, :updated_at
json.url post2_url(post2, format: :json)
