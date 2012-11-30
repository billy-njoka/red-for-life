class Student < ActiveRecord::Base
  attr_accessible :address1, :address2, :adm_date, :gender, :hometown, :kcpe, :name, :reg_number, :religion
end
