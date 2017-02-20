ActiveAdmin.register Request do
  permit_params :approved

form do |f|
    f.inputs 'Details' do
      f.input :approved
    end

    actions
  end
  index do
    selectable_column
    id_column
    column :user
    column :book
    column :approved

    actions
  end

  show do
    attributes_table do
      row :id
      row :user
      row :book
      row :approved
    end
  end
end
