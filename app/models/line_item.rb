class LineItem < ApplicationRecord
  belongs_to :item
  belongs_to :cart

  if(ENV['DATABASE_URL'])
        uri = URI.parse(ENV['DATABASE_URL'])
        DB = PG.connect(uri.hostname, uri.port, nil, nil, uri.path[1..-1], uri.user, uri.password)
    else
        DB = PG.connect(host: "localhost", port: 5432, dbname: 'ecomm_shop_development')
    end

  def total_price
    item.price.to_i * quantity.to_i
  end

end
