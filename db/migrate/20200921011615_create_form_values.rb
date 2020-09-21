class CreateFormValues < ActiveRecord::Migration[6.0]
  def change
    create_table :form_values do |t|
      t.references :form_attribute, null: false, foreign_key: true
      t.references :form, null: false, foreign_key: true
      t.string :value
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
