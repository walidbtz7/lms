<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Carbon;

class CoursesSeed extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker\Factory::create();
       
        /* for($i=0;$i<10;$i++){
            \App\Course::create([
                'order' => $i+1,
                'title' => $faker->word,
                'slug' => $faker->word,
                'description' => $faker->realText($maxNbChars = 200, $indexSize = 2),
                'introduction' => $faker->paragraph($nbSentences = 3, $variableNbSentences = true),
                'featured_image' => $faker->imageUrl(300,300),
                'duration' => $faker->randomDigitNotNull,
                'start_date' => Carbon::createFromTimeStamp($faker->dateTimeBetween('-90 days', 'now')->getTimestamp())->format('d/m/Y'),
                'end_date' => Carbon::createFromTimeStamp($faker->dateTimeBetween('now', '+90 days')->getTimestamp())->format('d/m/Y'),
                'approved' => 1,
            ]);
        } */

        $items = [
            ['order' => 1,
             'title' => "Course 01",
             'slug' => "Course1",
             'description' => $faker->realText($maxNbChars = 200, $indexSize = 2),
             'introduction' => $faker->paragraph($nbSentences = 3, $variableNbSentences = true),
             'duration' => $faker->randomDigitNotNull,
             'start_date' => Carbon::createFromTimeStamp($faker->dateTimeBetween('-90 days', 'now')->getTimestamp())->format('d/m/Y'),
             'end_date' => Carbon::createFromTimeStamp($faker->dateTimeBetween('now', '+90 days')->getTimestamp())->format('d/m/Y'),
             'approved' => 1,
            ],
            ['order' => 2,
             'title' => "Course 02",
             'slug' => "Course2",
             'description' => $faker->realText($maxNbChars = 200, $indexSize = 2),
             'introduction' => $faker->paragraph($nbSentences = 3, $variableNbSentences = true),
             'duration' => $faker->randomDigitNotNull,
             'start_date' => Carbon::createFromTimeStamp($faker->dateTimeBetween('-90 days', 'now')->getTimestamp())->format('d/m/Y'),
             'end_date' => Carbon::createFromTimeStamp($faker->dateTimeBetween('now', '+90 days')->getTimestamp())->format('d/m/Y'),
             'approved' => 1,
            ],
            ['order' => 3,
             'title' => "Course 03",
             'slug' => "Course3",
             'description' => $faker->realText($maxNbChars = 200, $indexSize = 2),
             'introduction' => $faker->paragraph($nbSentences = 3, $variableNbSentences = true),
             'duration' => $faker->randomDigitNotNull,
             'start_date' => Carbon::createFromTimeStamp($faker->dateTimeBetween('-90 days', 'now')->getTimestamp())->format('d/m/Y'),
             'end_date' => Carbon::createFromTimeStamp($faker->dateTimeBetween('now', '+90 days')->getTimestamp())->format('d/m/Y'),
             'approved' => 1,
            ],
            ['order' => 4,
             'title' => "Course 04",
             'slug' => "Course4",
             'description' => $faker->realText($maxNbChars = 200, $indexSize = 2),
             'introduction' => $faker->paragraph($nbSentences = 3, $variableNbSentences = true),
             'duration' => $faker->randomDigitNotNull,
             'start_date' => Carbon::createFromTimeStamp($faker->dateTimeBetween('-90 days', 'now')->getTimestamp())->format('d/m/Y'),
             'end_date' => Carbon::createFromTimeStamp($faker->dateTimeBetween('now', '+90 days')->getTimestamp())->format('d/m/Y'),
             'approved' => 1,
            ],
            ['order' => 5,
             'title' => "Course 05",
             'slug' => "Course5",
             'description' => $faker->realText($maxNbChars = 200, $indexSize = 2),
             'introduction' => $faker->paragraph($nbSentences = 3, $variableNbSentences = true),
             'duration' => $faker->randomDigitNotNull,
             'start_date' => Carbon::createFromTimeStamp($faker->dateTimeBetween('-90 days', 'now')->getTimestamp())->format('d/m/Y'),
             'end_date' => Carbon::createFromTimeStamp($faker->dateTimeBetween('now', '+90 days')->getTimestamp())->format('d/m/Y'),
             'approved' => 1,
            ],
            ['order' => 6,
             'title' => "Course 06",
             'slug' => "Course6",
             'description' => $faker->realText($maxNbChars = 200, $indexSize = 2),
             'introduction' => $faker->paragraph($nbSentences = 3, $variableNbSentences = true),
             'duration' => $faker->randomDigitNotNull,
             'start_date' => Carbon::createFromTimeStamp($faker->dateTimeBetween('-90 days', 'now')->getTimestamp())->format('d/m/Y'),
             'end_date' => Carbon::createFromTimeStamp($faker->dateTimeBetween('now', '+90 days')->getTimestamp())->format('d/m/Y'),
             'approved' => 1,
            ],
            ['order' => 7,
             'title' => "Course 07",
             'slug' => "Course7",
             'description' => $faker->realText($maxNbChars = 200, $indexSize = 2),
             'introduction' => $faker->paragraph($nbSentences = 3, $variableNbSentences = true),
             'duration' => $faker->randomDigitNotNull,
             'start_date' => Carbon::createFromTimeStamp($faker->dateTimeBetween('-90 days', 'now')->getTimestamp())->format('d/m/Y'),
             'end_date' => Carbon::createFromTimeStamp($faker->dateTimeBetween('now', '+90 days')->getTimestamp())->format('d/m/Y'),
             'approved' => 1,
            ],
            ['order' => 8,
             'title' => "Course 08",
             'slug' => "Course8",
             'description' => $faker->realText($maxNbChars = 200, $indexSize = 2),
             'introduction' => $faker->paragraph($nbSentences = 3, $variableNbSentences = true),
             'duration' => $faker->randomDigitNotNull,
             'start_date' => Carbon::createFromTimeStamp($faker->dateTimeBetween('-90 days', 'now')->getTimestamp())->format('d/m/Y'),
             'end_date' => Carbon::createFromTimeStamp($faker->dateTimeBetween('now', '+90 days')->getTimestamp())->format('d/m/Y'),
             'approved' => 1,
            ],
            ['order' => 9,
             'title' => "Course 09",
             'slug' => "Course9",
             'description' => $faker->realText($maxNbChars = 200, $indexSize = 2),
             'introduction' => $faker->paragraph($nbSentences = 3, $variableNbSentences = true),
             'duration' => $faker->randomDigitNotNull,
             'start_date' => Carbon::createFromTimeStamp($faker->dateTimeBetween('-90 days', 'now')->getTimestamp())->format('d/m/Y'),
             'end_date' => Carbon::createFromTimeStamp($faker->dateTimeBetween('now', '+90 days')->getTimestamp())->format('d/m/Y'),
             'approved' => 1,
            ],
            ['order' => 10,
             'title' => "Course 10",
             'slug' => "Course10",
             'description' => $faker->realText($maxNbChars = 200, $indexSize = 2),
             'introduction' => $faker->paragraph($nbSentences = 3, $variableNbSentences = true),
             'duration' => $faker->randomDigitNotNull,
             'start_date' => Carbon::createFromTimeStamp($faker->dateTimeBetween('-90 days', 'now')->getTimestamp())->format('d/m/Y'),
             'end_date' => Carbon::createFromTimeStamp($faker->dateTimeBetween('now', '+90 days')->getTimestamp())->format('d/m/Y'),
             'approved' => 1,
            ],
        ];

        foreach ($items as $item) {
            \App\Course::create($item);
        }
    }
}
