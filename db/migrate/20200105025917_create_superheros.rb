class CreateSuperheros < ActiveRecord::Migration[6.0]
  def change
    create_table :superheros do |t|

      t.timestamps
    end
  end
end
