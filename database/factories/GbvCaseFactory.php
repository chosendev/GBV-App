<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\GbvCase;
use Illuminate\Support\Str;
/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\GbvCase>
 */
class GbvCaseFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    protected $model = GbvCase::class;

    public function definition()
    {
        return [
            'initials' => Str::random(3),
            'date_of_birth' => fake()->date($format = 'Y-m-d', $max = 'now'),
            'gender' => Str::random(1),
            'address' => fake()->name(),
            'age_group' => fake()->name(),
            'uic' => fake()->ean8(),
            'case_details' => fake()->text(),
            'date_case_happened' => now(), 
            'date_case_reported' => now(), 
            'duty_station_id' => fake()->randomDigit(),
            'service' => Str::random(6),
            'remarks' => fake()->name(),
            'is_referred' => fake()->randomElement(['No', 'Yes']),
            'referred_to' => Str::random(10),
            'reported_by' => fake()->name(),
            'status' => fake()->randomElement(['Reported', 'Recieved']),
            'recieved_by' => fake()->name(),
            'date_case_recieved' => now(),
        ];

    }
}
