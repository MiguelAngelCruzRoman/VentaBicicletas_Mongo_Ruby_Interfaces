class Direccion
  include Mongoid::Document
  include Mongoid::Timestamps

  field :calle, type: String
  field :ciudad, type: String
  field :estado, type: String
  field :pais, type: String
  field :codigo_postal, type: Integer
  field :colonia, type: String
  field :numero, type: String

  belongs_to :tienda
end
