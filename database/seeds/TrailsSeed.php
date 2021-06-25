<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Carbon;

class TrailsSeed extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker\Factory::create();
       
        // for($i=0;$i<10;$i++){
        //     \App\Trail::create([
        //         'order' => $i+1,
        //         'title' => $faker->word,
        //         'slug' => $faker->word,
        //         'description' => $faker->realText($maxNbChars = 200, $indexSize = 2),
        //         'introduction' => $faker->paragraph($nbSentences = 3, $variableNbSentences = true),
        //         'featured_image' => $faker->imageUrl(300,300),
        //         'start_date' => Carbon::createFromTimeStamp($faker->dateTimeBetween('-90 days', 'now')->getTimestamp())->format('d/m/Y'),
        //         'end_date' => Carbon::createFromTimeStamp($faker->dateTimeBetween('now', '+90 days')->getTimestamp())->format('d/m/Y'),
        //         'approved' => 1,
        //     ]);
        // }

        $items = [
            ['order' => 1,
             'title' => "Matter  01",
             'slug' => "Matter 01",
             'description' => $faker->realText($maxNbChars = 200, $indexSize = 2),
             'introduction' => $faker->paragraph($nbSentences = 3, $variableNbSentences = true),
             'start_date' => Carbon::createFromTimeStamp($faker->dateTimeBetween('-90 days', 'now')->getTimestamp())->format('d/m/Y'),
             'end_date' => Carbon::createFromTimeStamp($faker->dateTimeBetween('now', '+90 days')->getTimestamp())->format('d/m/Y'),
             'approved' => 1,
            ],
            ['order' => 2,
             'title' => "Matter  02",
             'slug' => "Matter 02",
             'description' => $faker->realText($maxNbChars = 200, $indexSize = 2),
             'introduction' => $faker->paragraph($nbSentences = 3, $variableNbSentences = true),
             'start_date' => Carbon::createFromTimeStamp($faker->dateTimeBetween('-90 days', 'now')->getTimestamp())->format('d/m/Y'),
             'end_date' => Carbon::createFromTimeStamp($faker->dateTimeBetween('now', '+90 days')->getTimestamp())->format('d/m/Y'),
             'approved' => 1,
            ],
            ['order' => 3,
             'title' => "Matter  03",
             'slug' => "Matter 03",
             'description' => $faker->realText($maxNbChars = 200, $indexSize = 2),
             'introduction' => $faker->paragraph($nbSentences = 3, $variableNbSentences = true),
             'start_date' => Carbon::createFromTimeStamp($faker->dateTimeBetween('-90 days', 'now')->getTimestamp())->format('d/m/Y'),
             'end_date' => Carbon::createFromTimeStamp($faker->dateTimeBetween('now', '+90 days')->getTimestamp())->format('d/m/Y'),
             'approved' => 1,
            ],
            ['order' => 4,
             'title' => "Matter  04",
             'slug' => "Matter 04",
             'description' => $faker->realText($maxNbChars = 200, $indexSize = 2),
             'introduction' => $faker->paragraph($nbSentences = 3, $variableNbSentences = true),
             'start_date' => Carbon::createFromTimeStamp($faker->dateTimeBetween('-90 days', 'now')->getTimestamp())->format('d/m/Y'),
             'end_date' => Carbon::createFromTimeStamp($faker->dateTimeBetween('now', '+90 days')->getTimestamp())->format('d/m/Y'),
             'approved' => 1,
            ],
            ['order' => 5,
             'title' => "Matter  05",
             'slug' => "Matter 05",
             'description' => $faker->realText($maxNbChars = 200, $indexSize = 2),
             'introduction' => $faker->paragraph($nbSentences = 3, $variableNbSentences = true),
             'start_date' => Carbon::createFromTimeStamp($faker->dateTimeBetween('-90 days', 'now')->getTimestamp())->format('d/m/Y'),
             'end_date' => Carbon::createFromTimeStamp($faker->dateTimeBetween('now', '+90 days')->getTimestamp())->format('d/m/Y'),
             'approved' => 1,
            ],
            ['order' => 6,
             'title' => "Matter  06",
             'slug' => "Matter 06",
             'description' => $faker->realText($maxNbChars = 200, $indexSize = 2),
             'introduction' => $faker->paragraph($nbSentences = 3, $variableNbSentences = true),
             'start_date' => Carbon::createFromTimeStamp($faker->dateTimeBetween('-90 days', 'now')->getTimestamp())->format('d/m/Y'),
             'end_date' => Carbon::createFromTimeStamp($faker->dateTimeBetween('now', '+90 days')->getTimestamp())->format('d/m/Y'),
             'approved' => 1,
            ],
            ['order' => 7,
             'title' => "Matter  07",
             'slug' => "Matter 07",
             'description' => $faker->realText($maxNbChars = 200, $indexSize = 2),
             'introduction' => $faker->paragraph($nbSentences = 3, $variableNbSentences = true),
             'start_date' => Carbon::createFromTimeStamp($faker->dateTimeBetween('-90 days', 'now')->getTimestamp())->format('d/m/Y'),
             'end_date' => Carbon::createFromTimeStamp($faker->dateTimeBetween('now', '+90 days')->getTimestamp())->format('d/m/Y'),
             'approved' => 1,
            ],
            ['order' => 8,
             'title' => "Matter  08",
             'slug' => "Matter 08",
             'description' => $faker->realText($maxNbChars = 200, $indexSize = 2),
             'introduction' => $faker->paragraph($nbSentences = 3, $variableNbSentences = true),
             'start_date' => Carbon::createFromTimeStamp($faker->dateTimeBetween('-90 days', 'now')->getTimestamp())->format('d/m/Y'),
             'end_date' => Carbon::createFromTimeStamp($faker->dateTimeBetween('now', '+90 days')->getTimestamp())->format('d/m/Y'),
             'approved' => 1,
            ],
            ['order' => 9,
             'title' => "Matter  09",
             'slug' => "Matter 09",
             'description' => $faker->realText($maxNbChars = 200, $indexSize = 2),
             'introduction' => $faker->paragraph($nbSentences = 3, $variableNbSentences = true),
             'start_date' => Carbon::createFromTimeStamp($faker->dateTimeBetween('-90 days', 'now')->getTimestamp())->format('d/m/Y'),
             'end_date' => Carbon::createFromTimeStamp($faker->dateTimeBetween('now', '+90 days')->getTimestamp())->format('d/m/Y'),
             'approved' => 1,
            ],
            ['order' => 10,
             'title' => "Matter  10",
             'slug' => "Matter 10",
             'description' => $faker->realText($maxNbChars = 200, $indexSize = 2),
             'introduction' => $faker->paragraph($nbSentences = 3, $variableNbSentences = true),
             'start_date' => Carbon::createFromTimeStamp($faker->dateTimeBetween('-90 days', 'now')->getTimestamp())->format('d/m/Y'),
             'end_date' => Carbon::createFromTimeStamp($faker->dateTimeBetween('now', '+90 days')->getTimestamp())->format('d/m/Y'),
             'approved' => 1,
            ],
        ];   

        foreach ($items as $item) {
            \App\Trail::create($item);
        }
    }
}
