class Tienda
  include Mongoid::Document
  include Mongoid::Timestamps

  field :nombre, type: String
  field :telefono, type: String
  field :horario, type: String

  has_one :direccion
  accepts_nested_attributes_for :direccion
end
