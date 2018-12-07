class CreateAppleModels < ActiveRecord::Migration[5.2]
  def change
    create_table :apple_models do |t|
      t.string :name #数字ならinteger

      t.timestamps
    end
  end
end
