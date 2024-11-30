<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run()
    {
        // Create 10 users with related records
        \App\Models\User::factory(10)->create()->each(function ($user) {
            // Generate random usage records for each user
            \App\Models\ElectricityUsageRecord::factory(5)->create(['user_id' => $user->id]);

            // Generate random bills for each user
            \App\Models\Bill::factory(3)->create(['user_id' => $user->id]);

            // Generate random payments for each user
            \App\Models\Payment::factory(3)->create(['user_id' => $user->id]);
        });
    }
}
