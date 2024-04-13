class CreateRReports < ActiveRecord::Migration[7.1]
  def change
    create_table :r_reports do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
