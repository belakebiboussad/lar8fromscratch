{{--@extends('components.layout')--}}
{{--@section('banner')--}}
{{--    <h1>My Blog</h1>--}}
{{--@stop--}}
{{--@section('content')--}}
<x-layout>
    @include('_posts-header')

{{--        <article class="{{ $loop->even ? 'mb-6':'' }}">--}}
{{--            <h1>--}}
{{--                <a href="/posts/{{ $post->slug }}" class="under">--}}
{{--                    {!! $post->title !!}--}}
{{--                </a>--}}
{{--            </h1>--}}
{{--            <p>--}}
{{--                <a href="/categories/{{ $post->category->slug }}" class="under">--}}
{{--                    {{ $post->category->name }}--}}
{{--                </a>--}}
{{--            </p>--}}
{{--            <p>--}}
{{--                By <a href="/authors/{{ $post->author->username }}">{{ $post->author->name }}</a> in <a href="/categories/{{ $post->category->slug }}">{{ $post->category->name }}</a>--}}
{{--            </p>--}}
{{--            <div>--}}
{{--                {!!  $post->excerpt !!}--}}
{{--            </div>--}}
{{--        </article>--}}
{{--        <hr/>--}}
        <main class="max-w-6xl mx-auto mt-6 lg-mt-20 spacy-y-6">
            @if($posts->count())
                <x-posts-grid :posts="$posts"/>
            @else
               <p class="text-center">No posts yet.please check back later </p>
             @endif
        </main>

</x-layout>

{{--@stop--}}

