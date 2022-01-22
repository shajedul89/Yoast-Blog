<?php

namespace Database\Factories;

use App\Models\post;
use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Factories\Factory;

class postFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = post::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'title'=> $this->faker->sentence(5),
            'slug' =>Str::slug($this->faker->sentence(5)),
            'description' =>$this->faker->paragraph(10),

        ];
    }
}
