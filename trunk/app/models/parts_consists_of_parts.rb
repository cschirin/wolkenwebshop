class PartsConsistsOfParts < ActiveRecord::Base
  attr_accessible :menge
  set_table_name 'parts_consists_of_parts'

  belongs_to :parts

end
