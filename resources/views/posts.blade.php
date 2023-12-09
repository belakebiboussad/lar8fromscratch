{{--@extends('components.layout')--}}
{{--@section('banner')--}}
{{--    <h1>My Blog</h1>--}}
{{--@stop--}}
{{--@section('content')--}}
<x-layout>
    @include('_posts-header')
        <main class="max-w-6xl mx-auto mt-6 lg-mt-20 spacy-y-6">
            @if($posts->count())
                <x-posts-grid :posts="$posts"/>
            @else
               <p class="text-center">No posts yet.please check back later </p>
             @endif
        </main>

</x-layout>

{{--@stop--}}

