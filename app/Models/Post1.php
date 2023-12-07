<?php
namespace  App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Support\Facades\File;
use Spatie\YamlFrontMatter\YamlFrontMatter;
class Post1
{
    use HasFactory;
    public $title;
    public $excerpt;
    public $date;
    public $body;
    public $slug;

    /**
     * @param $title
     * @param $excerpt
     * @param $date
     * @param $body
     */
    public function __construct($title, $excerpt, $date, $body, $slug)
    {
        $this->title = $title;
        $this->excerpt = $excerpt;
        $this->date = $date;
        $this->body = $body;
        $this->slug= $slug;
    }
    public function body(): string
    {
        return $this->body;
    }

    public static function all()
    {
       return cache()->rememberForever('posts.all', function() {
           return collect(File::files(resource_path('posts')))
               ->map(fn($file) => YamlFrontMatter::parseFile($file))
               ->map(fn($document) => new Post1(
                   $document->title,
                   $document->excerpt,
                   $document->date,
                   $document->body(),
                   $document->slug
               ))->sortByDesc('date');
       });
    }
    public static function find($slug)
    {
        return static::all()->firstwhere('slug', $slug);
    }
    public static function findOrFail($slug)
    {//if(! file_exists($path=resource_path("posts/{$slug}.html"))){throw new ModelNotFoundException();  }return cache()->remember("posts-{$slug}",5,fn()=>file_get_contents($path));

        $post = static::find($slug);
        if(!$post)
            return throw new ModelNotFoundException();
        return $post;
    }
}
