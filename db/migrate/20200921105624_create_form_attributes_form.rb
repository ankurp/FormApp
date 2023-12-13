class CreateFormAttributesForm < ActiveRecord::Migration[7.1]
  def change
    create_table :form_attributes_forms do |t|
      t.references :form, null: false, foreign_key: true
      t.references :form_attribute, null: false, foreign_key: true
    end
  end
end
