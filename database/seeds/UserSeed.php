<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UserSeed extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $items = [
            
            ['id' => 1, 'name' => 'Chakfi', 'lastname' => null, 'website' => null, 'email' => 'Chakfi@admin.com', 'password' => '$2y$10$jB5p7HpqZ5vFbYLMP7RaSeZGJjswqlEPWb51j0YRnLA/azFtJ2BOK', 'avatar' => null, 'remember_token' => '', 'team_id' => null, 'approved' => 1,],
            ['id' => 2, 'name' => 'Teacher', 'lastname' => null, 'website' => null, 'email' => 'Teacher@Teacher.com', 'password' => '$2y$10$wtVeMS/o0UUsW1OqEtF16.bfySgezIXZLMhKhAdls1A1KWVRc9X3i', 'avatar' => null, 'remember_token' => null, 'team_id' => null, 'approved' => 1,],
            ['id' => 3, 'name' => 'Student', 'lastname' => null, 'website' => null, 'email' => 'student@student.com', 'password' => '$2y$10$GnZSqyRAfThj60Zg3sUW2uO7mihIXAOE2ALwahHJbE9Xf6ODtzbiG', 'avatar' => null, 'remember_token' => null, 'team_id' => null, 'approved' => 1,],

        ];

        foreach ($items as $item) {
            \App\User::create($item);
        }
    
        $faker = Faker\Factory::create();

        for($i=0;$i<10;$i++){
            DB::table('users')->insert([
                'name' => $faker->firstName,
                'lastname' => $faker->lastName,
                'website' => $faker->url,
                'email' => $faker->email,
                'password' => Hash::make('123123'),
                'avatar' => $faker->imageUrl(300,300),
                'remember_token' => '',
                'approved' => 1,
                'team_id' => $faker->randomDigitNotNull,
            ]);
        }
        
    }
}
