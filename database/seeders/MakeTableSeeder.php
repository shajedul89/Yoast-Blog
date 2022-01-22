<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;

class MakeTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::create([
            'name' => 'SHIMUN',
            'email' => 'rlinfobd@gmail.com',
            'phone_number' =>'01912586164',
            'password' => bcrypt(12345678),

        ]);
    }
}
