class Setup < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.column :name, :string
    end
    create_table :lines do |t|
      t.column :color, :string
    end
    create_table :stops do |t|
      t.column :station_id, :integer
      t.column :line_id, :integer
    end
  end
end
