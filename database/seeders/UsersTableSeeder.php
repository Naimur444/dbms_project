<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;

class UsersTableSeeder extends Seeder
{
    public function run()
    {
        User::create([
            'name' => 'Bithi',
            'email' => 'bithi@ebm.com',
            'password' => bcrypt('123456'),
        ]);
    }
}