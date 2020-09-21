class CreateFormAttributes < ActiveRecord::Migration[6.0]
  def change
    create_table :form_attributes do |t|
      t.string :label
      t.string :field_type
      t.boolean :is_required, default: true

      t.timestamps
    end
  end
end
