<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Participant;
use Faker\Generator as Faker;

$factory->define(Participant::class, function (Faker $faker) {
    return [
        'name'       => $faker->name,
        'age'        => $faker->numberBetween($min = 1, $max = 99),
        'dob'        => $faker->date($format = 'Y-m-d', $max = 'now'),
        'profession' => $faker->randomElement($array = array ('Employed','Student')),
        'locality'   => $faker->streetAddress,
        'guests'     => $faker->numberBetween($min = 0, $max = 2),
        'address'    => $faker->address
    ];
});
