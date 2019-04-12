<?php

use App\Contact;
use Faker\Generator as Faker;

$factory->define(Contact::class, function (Faker $faker) {
    return [
        'name' => $faker->name,
        'address' => $faker->streetAddress . ', ' . $faker->city,
        'postcode' => $faker->postcode,
        'telephone' => $faker->phoneNumber,
        'email' => $faker->unique()->safeEmail,
        'dob' => \Carbon\Carbon::parse($faker->dateTimeBetween($startDate = '-95 years', $endDate = 'now', $timezone = null))->format('Y-m-d'),
        'created_at' => \Carbon\Carbon::now(),
        'updated_at' => \Carbon\Carbon::now()
    ];
});
