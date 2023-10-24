<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use Illuminate\Support\Facades\DB;

class BusinessTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();

        foreach (range(1, 10) as $index) {
            $datetime = $faker->dateTimeThisMonth;
            DB::table('business')->insert([
                'merchant_name' => $faker->name,
                'outlet_name' => $faker->company,
                'description' => $faker->text,
                'type' => $faker->randomElement(['retail', 'finance', 'food', 'insurace']),
                'sales' => $faker->randomFloat(2, 10, 1000),
                'created_at' => $datetime,
                'updated_at' => $datetime
            ]);
        }
    }
}
