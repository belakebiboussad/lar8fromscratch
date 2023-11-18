{{--@extends('components.layout')--}}
{{--@section('banner')--}}
{{--    <h1>My Blog</h1>--}}
{{--@stop--}}
{{--@section('content')--}}
{{--    @foreach($posts as $post)--}}
{{--            @dd($loop)--}}
{{--        <article class="{{ $loop->even ? 'mb-6':'' }}">--}}
{{--            <h1>--}}
{{--                <a href="/posts/{{ $post->slug }}">{!! $post->title !!}</a>--}}
{{--            </h1>--}}
{{--            <p>--}}
{{--                <a href="/categories/{{ $post->category->slug }}">{{ $post->category->name }}</a>--}}
{{--            </p>--}}
{{--            <p>--}}
{{--                By <a href="/authors/{{ $post->author->username }}">{{ $post->author->name }}</a> in <a href="/categories/{{ $post->category->slug }}">{{ $post->category->name }}</a>--}}
{{--            </p>--}}
{{--            <div>--}}
{{--                {!!  $post->excerpt !!}--}}
{{--            </div>--}}
{{--        </article>--}}
{{--    @endforeach--}}
{{--@stop--}}
<x-layout>
    @include('_posts-header')

    <main class="max-w-6xl mx-auto mt-6 lg:mt-20 space-y-6">
        @if($posts->count())
            <x-post-featured-card :post="$posts[0]"/>
            @if($posts->count()>1)
                <div class="lg:grid lg:grid-cols-2">
                @foreach($posts->skip(1) as $post)
                    <x-post-card :post="$post"/>
                @endforeach
            @endif
        </div>

        @else
            <p class="text-center">
                no post here
            </p>

        @endif
{{--        <div class="lg:grid lg:grid-cols-3">--}}
{{--            <x-post-card />--}}
{{--            <x-post-card />--}}
{{--            <x-post-card />--}}
{{--        </div>--}}
    </main>

</x-layout>
