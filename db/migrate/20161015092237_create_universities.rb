class CreateUniversities < ActiveRecord::Migration
  def change
    create_table :universities do |t|
      t.string :name
      t.string :photo

      t.timestamps null: false
    end
  end

 def self.up
  	change_table :universities do |t|
  		t.attachment :photo
  	end
 end

  
  def self.down
  	remove_attachment :universities, :photo
  end
end








  
