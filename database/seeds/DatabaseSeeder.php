<?php

use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Model;
use App\Administration;

class DatabaseSeeder extends Seeder
{

    public function run()
    {
        // $this->call(UsersTableSeeder::class);

        // Data entry for users table 1
        $user = factory(App\User::class)->create([
                 'name' => 'admin',
                 'email' => 'admin@oneonlinemarket.com',
                 'password' => bcrypt('secret'),
             ]);

        // Data entry for users table 2
        $user = factory(App\User::class)->create([
                 'name' => 'Heba Abu rizeq',
                 'email' => 'heba.aburizeq@oneonlinemarket.com',
                 'password' => bcrypt('secret'),
             ]);

        // Data entry for users table 3
        $user = factory(App\User::class)->create([
                 'name' => 'Human Resource',
                 'email' => 'hr@oneonlinemarket.com',
                 'password' => bcrypt('secret'),
             ]);

        // Data entry for users table 4
        $user = factory(App\User::class)->create([
                 'name' => 'test',
                 'email' => 'test@oneonlinemarket.com ',
                 'password' => bcrypt('secret'),
             ]);

        // Data entry for genders table 1
        DB::table('genders')->insert([
                 'name_ar' => 'ذكر',
                 'name_en' => 'Male',
            ]);

        // Data entry for genders table 1
        DB::table('genders')->insert([
                 'name_ar' => 'أنثى',
                 'name_en' => 'Female',
            ]);

        DB::table('administrations')->insert([
          'name_ar' => 'السوق المفتوح الأول',
          'address_ar' => 'عمان، الأردن مجمع الملك حسين للأعمال',
          'phone' => '064643892',
          'fax' => '064643892',
          'mobile' => '0797113425',
          'email' => 'info@oneonlinemarket.com',
          'name_en' => 'One Online Market',
          'address_en' => 'Amman, Jordan. King Hussein Business Park,',
          'governate_id' => '5',
          'lat' => '31.971189',
          'long'=> '35.835617',

            ]);
    }
}
