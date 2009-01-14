class CreatePessoas < ActiveRecord::Migration
  def self.up
    create_table :pessoas do |t|
      t.string :email
      t.string :ip

      t.timestamps
    end
  end

  def self.down
    drop_table :pessoas
  end
end
