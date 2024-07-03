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
    (site_title, site_logo, is_rtl, currency, staff_access, without_stock, date_format, developed_by, invoice_format, `decimal`, theme, currency_position, company_name)
VALUES 
    ('Point of Sale', '20220905125905.png', 0, '1', 'all', 'no', 'd-m-Y', 'Koderin', 'standard', 2, 'default.css', 'prefix', 'POS Store');
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
