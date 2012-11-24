class CreateResumeIdObjective < ActiveRecord::Migration
  def up
    add_column :objectives, :resume_id, :Integer
  end

  def down
  end
end
