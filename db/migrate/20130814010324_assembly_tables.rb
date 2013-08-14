class AssemblyTables < ActiveRecord::Migration
  def change
  	create_table :machines do |t|
  		t.integer :serial_num
  		t.references :customer
  		t.timestamps
  	end

  	create_table :assembly_procs do |t|
			t.references :machine
  		t.date :begin_date, :end_date
  		t.boolean :complete, default: false
  		t.timestamps
		end

		create_table :subassem_procs do |t|
			t.references :assembly_proc
			t.string :name
			t.integer :stage
			t.boolean :complete, default: false
			t.timestamps
		end

		create_table :assem_tasks do |t|
			t.references :subassem_proc
			t.string :title
			t.string :description
			t.boolean :complete, default: false
			t.timestamps
		end

  end
end
