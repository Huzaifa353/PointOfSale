<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class GeneralSettingsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $sql = "
    		INSERT INTO general_settings 
    		VALUES ('1', 'Point of Sale', '20220905125905.png', '0', '1', '', 'own', 'd-m-Y', 		'Koderin', 'standard', '2', '1', 'default.css', '2018-07-06 12:13:11', '2023-06-16 		19:42:32', 'prefix', '', '0', '', '980980');
		";

		// Execute raw SQL
		try {
		    DB::unprepared($sql);
		    echo "SQL query executed successfully.";
		} catch (\Exception $e) {
		    echo "Error executing SQL query: " . $e->getMessage();
		}

    	}
}
