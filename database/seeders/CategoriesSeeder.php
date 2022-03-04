<?php

namespace Database\Seeders;

use App\Models\MyCategories;
use Illuminate\Database\Seeder;

class CategoriesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $categories = ['CHEMICALS' , 'ANTISEPTIC', 'FLOOR CLEANER', 'GLASS CLEANER','DISH WASH','TOILET CLEANER','MULTIPURPOSE CLEANER','HAND SANITIZER','SHOWER GEL','HAND SOAP'];
        foreach ($categories as $cat){
            MyCategories::create([
                'name' => $cat
            ]);
        }
    }
}
