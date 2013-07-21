class CreateTeachingAssistants < ActiveRecord::Migration
  def change
    create_table :teaching_assistants do |t|
      t.string :name
      t.string :email
      t.string :gender
      t.string :experience
      t.text :bio
      t.string :company
      t.string :operating_systems
      t.text :other_information
      t.string :past_experience

      t.timestamps
    end
  end
end
