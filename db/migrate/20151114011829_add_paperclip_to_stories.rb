class AddPaperclipToStories < ActiveRecord::Migration
  def change

  	add_attachment :stories, :image
  end
end
