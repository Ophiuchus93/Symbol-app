class CreateLogos < ActiveRecord::Migration[6.0]
  def change
    create_table :logos do |t|
      t.string :name
      t.string :tradition
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
