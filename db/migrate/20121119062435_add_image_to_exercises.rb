class AddImageToExercises < ActiveRecord::Migration
  def up
    add_attachment :exercises, :image
  end

  def down
    remove_attachment :exercises, :image
  end
end
