<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use Illuminate\Support\Facades\DB;

class ReportTableSeeder extends Seeder
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
            DB::table('reports')->insert([
                'business_id' => $faker->randomElement(DB::table('business')->pluck('id')),
                'staff_id' => $faker->randomElement(DB::table('users')->pluck('id')),
                'transaction_time' => $faker->dateTimeThisMonth,
                'payment_type' => $faker->randomElement(['Cash', 'Debit', 'Credit', 'Bank Transfer']),
                'customer_name' => $faker->name,
                'tax' => $faker->randomFloat(2, 1, 10),
                'pay_amount' => $faker->randomFloat(2, 10, 1000),
                'change_amount' => $faker->randomFloat(2, 10, 1000),
                'total_amount' => $faker->randomFloat(2, 10, 1000),
                'payment_status' => $faker->randomElement(['Paid', 'Not Paid']),
                'created_at' => $datetime,
                'updated_at' => $datetime
            ]);
        }
    }
}
