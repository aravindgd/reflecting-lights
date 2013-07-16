class CreateJqueryTests < ActiveRecord::Migration
  def change
    create_table :jquery_tests do |t|

      t.timestamps
    end
  end
end
