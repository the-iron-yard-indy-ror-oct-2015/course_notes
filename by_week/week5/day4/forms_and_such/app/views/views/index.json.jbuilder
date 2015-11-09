json.array!(@views) do |view|
  json.extract! view, :id, :ip_address, :post_id
  json.url view_url(view, format: :json)
end
