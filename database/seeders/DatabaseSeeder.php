<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\Category;
use App\Models\Post;
use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
//        User::truncate();
//        Category::truncate();
//        Post::truncate();
        $user = User::factory()->create([
            'name'=>'mohand'
        ]);
////        Post::factory(10)->create([//            'user_id'=>$user->id//        ]);
//
//        $categories = [1=>'personel', 2=>'work', 3=>'hobbies'];
//
//        foreach ($categories as $cat_id=>$name) {
//
//            Category::factory(1)->create([
//              'name'=>$name
//          ]);
//            /*
//          Post::factory(2)->create([
//                'user_id'=>$user->id,
//                'category_id' => $cat_id
//          ]);
//          */
//            $users = User::factory()->create()->each(function($u) use($cat_id) {
//               $u->posts()->save(Post::factory()->create([
//                   'category_id' => $cat_id
//               ]));
//            });
//        }
//        User::truncate();
//        Category::truncate();
//        User::factory(1)->create();
//       $pers = Category::create([
//           'name'=>'Personal',
//            'slug'=>'personal'
//        ]);
//       $work = Category::create([
//        'name'=>'Work',
//        'slug'=>'work'
//    ]);
//      $fam  = Category::create([
//        'name'=>'Familly',
//        'slug'=>'familly'
//    ]);
//      Post::create([
//          'title'=>'My Familly Post',
//          'slug'=>'My-familly-Post',
//          'excerpt'=>'lorem epsom algex sdgffdg',
//          'body'=>'<p>lorem epsom algex sdgffdg fddf sfdsdf sdf sdf dsfdsf dsflorem epsom algex sdgffdg fddf sfdsdf sdf sdf dsfdsf dsf
//           lorem epsom algex sdgffdg fddf sfdsdf sdf sdf dsfdsf dsf</p>',
//          'user_id'=>$user->id,
//          'category_id'=>$fam->id,
//      ]);
//        Post::create([
//            'title'=>'My Work Post',
//            'slug'=>'My-work-Post',
//            'excerpt'=>'lorem epsom algex sdgffdg',
//            'body'=>'<p>lorem epsom algex sdgffdg fddf sfdsdf sdf sdf dsfdsf dsf lorem epsom algex sdgffdg fddf lorem epsom algex sdgffdg fddf</p>',
//            'user_id'=>$user->id,
//            'category_id'=>$fam->id,
//        ]);
        Post::factory(30)->create([
            'user_id'=>$user->id
        ]);
    }
}
