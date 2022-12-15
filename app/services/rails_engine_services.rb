class RailsEngineService
  def get_merchants
    get_url("/merchants")
  end
  def get_merchant_items(merchant_id)
    get_url("/merchants/#{merchant_id}/items")
  end
  def get_url(url, params = nil)
    response = connection.get(url, params)
    JSON.parse(response.body, symbolize_names: true)
  end
  def connection
    Faraday.new(url: "localhost:3000")
  end
end