<?php

namespace Database\Factories;

use App\Models\Bill;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

class BillFactory extends Factory
{
    protected $model = Bill::class;

    public function definition()
    {
        return [
            'user_id' => User::factory(),
            'amount_due' => $this->faker->randomFloat(2, 50, 500),
            'due_date' => $this->faker->date(),
            'status' => $this->faker->randomElement(['unpaid', 'paid', 'overdue']),
        ];
    }
}
