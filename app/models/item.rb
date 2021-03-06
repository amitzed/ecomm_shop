class Item < ApplicationRecord
  before_destroy :not_referenced_by_any_line_item
  belongs_to :user, optional: true
  has_many :line_items

  mount_uploader :image, ImageUploader

  validates :title, :brand, :price, :product, presence: true
  validates :description, length: { maximum: 1000, too_long: "%{count} characters reached maximum allowed "}
  validates :title, length: { maximum: 140, too_long: "%{count} characters reached maximum allowed "}
  validates :price, length: { maximum: 7 }

  if(ENV['DATABASE_URL'])
        uri = URI.parse(ENV['DATABASE_URL'])
        DB = PG.connect(uri.hostname, uri.port, nil, nil, uri.path[1..-1], uri.user, uri.password)
    else
        DB = PG.connect(host: "localhost", port: 5432, dbname: 'ecomm_shop_development')
    end

  BRAND = %w{ 3Skulls
-A-
Abercrombie
Adobe
ADT
Aleratec
ALIENTECH
Alienware
Amiclubwear.com
Amway
Amybug
AnalogMan
-B-
Biotrade
BioTrust
BISSELL
Bittrex
Bloomberg
BlossomSugarArt
Bombardier
Bumbleride
Burberry
-C-
Carrs
Cartier
CeraNet
CLOCHE
Coach
-D-
Dell
Delphi
Dunhill
Dunlop
Duracell
-E-
ElectroHarmonix
Eveready
-F-
Fender
Ford
-G-
Gibson
Gretsch
GUESS
-H-
Hermes
-I-
iRobot
Indigo
-J-
Juniper
Jupiter
-L-
Levi
Lexmark
-M-
Magnus
Marvel
-N-
Nanotec
Nordstrom
-O-
Omega
Optical-Cable
-P-
Panasonic
PopSockets
-Q-
Quiksilver
-R-
Rolex
-S-
Shimano
SEISCO
Synergetics
-T-
Tag-Heuers
TokyoFlash
-U-
Umbro
-V-
Versace
Volkswagen
-W-
Würth
-X-
Xandex
X-Tech
-Y-
Younique
-Z-
Zappos.com
Zildjian }
ORIGIN = %w{ Afghanistan
Albania
Algeria
Andorra
Angola
Anguilla
Antigua
Argentina
Armenia
Australia
Austria
Azerbaijan
Bahamas
Bahrain
Bangladesh
Barbados
Belarus
Belgium
Belize
Benin
Bermuda
Bhutan
Bolivia
Bosnia
Botswana
Brazil
Brunei
Bulgaria
Burkina
Myanmar
Burundi
Cambodia
Cameroon
Canada
Cape
Cayman
Chad
Chile
China
Colombia
Comoros
Congo
Croatia
Cuba
Cyprus
Denmark
Djibouti
Dominica
Ecuador
Egypt
Eritrea
Estonia
Ethiopia
Fiji
Finland
France
Gabon
Gambia
Georgia
Germany
Ghana
Greece
Grenada
Guadeloupe
Guatemala
Guinea
Guyana
Haiti
Honduras
Hungary
Iceland
India
Indonesia
Iran
Iraq
Israel
Italy
Jamaica
Japan
Jordan
Kazakhstan
Kenya
Kosovo
Kuwait
Laos
Latvia
Lebanon
Lesotho
Liberia
Libya
Liechtenstein
Lithuania
Luxembourg
Madagascar
Malawi
Malaysia
Maldives
Mali
Malta
Martinique
Mauritania
Mauritius
Mayotte
Mexico
Moldova
Mongolia
Montenegro
Montserrat
Morocco
Mozambique
Namibia
Nepal
Netherlands
New Zealand
Nicaragua
Niger
Nigeria
Norway
Oman
Pakistan
Panama
Paraguay
Peru
Philippines
Poland
Portugal
Qatar
Reunion
Romania
Russia
Rwanda
Samoa
Senegal
Serbia
Seychelles
Singapore
Slovenia
Somalia
Spain
Sudan
Suriname
Swaziland
Sweden
Switzerland
Syria
Tajikistan
Tanzania
Thailand
Togo
Tunisia
Turkey
Turkmenistan
Uganda
Ukraine
UK
USA
Uruguay
Uzbekistan
Venezuela
Vietnam
Yemen
Zambia
Zimbabwe }
CONDITION = %w{ New Mint Used Fair Poor }

private

  def not_referenced_by_any_line_item
    unless line_items.empty?
      errors.add(:base, "Line items present")
      throw :abort
    end
  end

end
