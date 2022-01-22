<?php

namespace Database\Factories;

use Illuminate\Support\Str;
use App\Models\postCategory;
use Illuminate\Database\Eloquent\Factories\Factory;

class postCategoryFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = postCategory::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name'=> $this->faker->name(),
            'slug' =>Str::slug($this->faker->name()),
        ];
    }
}
