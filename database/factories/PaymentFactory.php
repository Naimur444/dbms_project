<?php

namespace Database\Factories;

use App\Models\Payment;
use App\Models\User;
use App\Models\Bill;
use Illuminate\Database\Eloquent\Factories\Factory;

class PaymentFactory extends Factory
{
    protected $model = Payment::class;

    public function definition()
    {
        return [
            'user_id' => User::factory(),
            'bill_id' => Bill::factory(),
            'amount' => $this->faker->randomFloat(2, 10, 500),
            'status' => $this->faker->randomElement(['successful', 'failed']),
            'payment_date' => $this->faker->date(),
        ];
    }
}
