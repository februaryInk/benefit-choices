class CreateMediShareFaqs < ActiveRecord::Migration[5.0]
  def change
    create_table :medi_share_faqs do | t |
      
      t.integer :position
      
      t.text :answer
      t.text :question

      t.timestamps
    end
  end
end
