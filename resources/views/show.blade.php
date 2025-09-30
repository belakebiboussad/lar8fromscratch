<x-layout>
    <h1>Showing {{ $post->id }}</h1>
{{--    <div class="blog-details pt-95 pb-100">--}}
{{--        <div class="container">--}}
{{--            <div class="row">--}}
{{--                <div class="col-12">--}}

{{--                    <div class="form-group row">--}}
{{--                        <label class="col-sm-3 control-label text-right">Chef de Service</label>--}}
{{--                        <div class="col-sm-9">--}}
{{--                            <p class = "form-control-static">{{ $post->created_at->diffForHumans() }}</p>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--            </div>--}}
    {{--                <h2>{{ $post->title }}</h2>--}}
    {{--                <p>--}}
    {{--                    <strong>Email:</strong> {{ $post->excerpt }}<br>--}}
    {{--                    <strong>Level:</strong> {{ $post->body }}--}}
    {{--                </p>--}}
    {{--            </div>--}}
    {{--        </div>--}}
    {{--    </div>--}}
    <div class="row">
        <div class="col-md-8">
            <h1>{{ $post->title }}</h1>
<!-- comment  -->
            <p class="lead">{!! $post->body !!}</p>
        </div>
        <div class="col-md-4">
            <div class="well">
                <dl class="dl-horizontal">
                    <label>Url:</label>
                    <p><a href=""></a></p>
                </dl>

                <dl class="dl-horizontal">
                    <label>Category:</label>
                    <p>{{ $post->category->name }}</p>
                </dl>

                <dl class="dl-horizontal">
                    <label>Created At:</label>
                    <p>{{ date('M j, Y h:ia', strtotime($post->created_at)) }}</p>
                </dl>

                <dl class="dl-horizontal">
                    <label>Last Updated:</label>
                    <p>{{ date('M j, Y h:ia', strtotime($post->updated_at)) }}</p>
                </dl>
                <hr>
            </div>
        </div>
    </div>
</x-layout>
