<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\ModelNotFoundException;

class Post extends Model
{
    use HasFactory;
//    protected $fillable=['title','excerpt','body'];
    protected $guarded=['id'];
    protected $with = ['category','author'];
    public function getRouteKeyName()
    {
        //return parent::getRouteKeyName(); // TODO: Change the autogenerated stub
        return 'slug';
    }

    public static function find($id)
    {
        return static::all()->firstwhere('id', $id);
    }
    public static function findOrFail($slug)
    {//if(! file_exists($path=resource_path("posts/{$slug}.html"))){throw new ModelNotFoundException();  }return cache()->remember("posts-{$slug}",5,fn()=>file_get_contents($path));

        $post = static::find($slug);
        if(!$post)
            return throw new ModelNotFoundException();
        return $post;
    }
    public function scopeFilter($query)
    {
        if(request('search'))
        {
            $query->where('title', 'like', '%' . request('search'). '%')
                ->orwhere('body', 'like', '%' . request('search'). '%');
        }
    }
    public function category()
    {
        return $this->belongsTo(Category::class);
    }
    public function author()
    {
        return $this->belongsTo(User::class,'user_id');
    }
}
