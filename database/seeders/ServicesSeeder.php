<?php

namespace Database\Seeders;

use App\Models\Services;
use Illuminate\Database\Seeder;

class ServicesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $services = array(
                'breif' => 'NEW AND BETTER',
                'title' => 'WASHROOM SERVICES',
                'short_description' => '<p>Hygienic and well equipped washroom facilities and services to keep your areas clean, dry and safe.</p><p>Our washroom services are designed to provide everything you need to keep your washrooms looking good, staying clean and minimising health risks. As specialists in washroom hygiene services we provide solutions for the hygiene, comfort and well-being to every user.</p>',
                'description' => '<p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>',
                'image' => '',
                'specs' => '["Quality hygiene standards in a washroom", "Complete service management" , "Positive workplace image", "A fully-stocked washroom" , "A professional and valuable service to your staff and visitors"]',
            );
        for($i=0 ; $i<5; $i++){
            Services::create($services);
        }
    }
}
