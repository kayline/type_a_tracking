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

		create_table :subassemblies do |t|
			t.string :name
			t.integer :stage
			t.timestamps
		end

		create_table :assem_tasks do |t|
			t.references :subassembly
			t.string :title
			t.string :description
			t.timestamps
		end

		create_table :assem_tasks_machines do |t|
			t.references :assem_task, :machine
			t.boolean :complete, default: false
			t.datetime :completed
		end

  end
end
