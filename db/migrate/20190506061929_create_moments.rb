class CreateMoments < ActiveRecord::Migration[5.2]
  def change
    create_table :moments do |t|
      t.string :define

      t.timestamps
    end
  end
end
