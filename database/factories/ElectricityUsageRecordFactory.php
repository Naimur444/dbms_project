<?php

namespace Database\Factories;

use App\Models\ElectricityUsageRecord;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

class ElectricityUsageRecordFactory extends Factory
{
    protected $model = ElectricityUsageRecord::class;

    public function definition()
    {
        return [
            'user_id' => User::factory(),
            'start_date' => $this->faker->date(),
            'end_date' => $this->faker->date(),
            'units_consumed' => $this->faker->randomFloat(2, 50, 500),
        ];
    }
}
