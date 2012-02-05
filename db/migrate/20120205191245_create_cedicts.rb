class CreateCedicts < ActiveRecord::Migration
  def change
    create_table :cedicts do |t|

      t.timestamps
    end
  end
end
