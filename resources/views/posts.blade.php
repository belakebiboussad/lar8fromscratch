@extends('components.layout')
@section('banner')
    <h1>My Blog</h1>
@stop
@section('content')
    @foreach($posts as $post)
{{--            @dd($loop)--}}
        <article class="{{ $loop->even ? 'mb-6':'' }}">
            <h1>
                <a href="/posts/{{ $post->slug }}">{!! $post->title !!}</a>
            </h1>
            <div>
                {!!  $post->excerpt !!}
            </div>
        </article>
    @endforeach
@stop
{{--<x-layout>--}}
{{--          azul fellawen--}}
{{--  --}}

{{--</x-layout>--}}
