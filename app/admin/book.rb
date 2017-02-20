ActiveAdmin.register Book do
  permit_params :title, :ISBN, :year
end
