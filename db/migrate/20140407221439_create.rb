class Create < ActiveRecord::Migration
  def change
    create_table :buses do |t|
      t.column :line_id, :int
    end
  end
end
