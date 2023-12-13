class CreateFormValues < ActiveRecord::Migration[7.1]
  def change
    create_table :form_values do |t|
      t.references :form_attribute, null: false, foreign_key: true
      t.string :value
      t.references :form_submission, null: false, foreign_key: true

      t.timestamps
    end
  end
end
