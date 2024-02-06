@auth
    <x-panel>
        <form method="POST" action="/posts/{{ $post->slug }}/comments">
            @csrf
            <header class="flex items-center">
                <img src="https://i.pravatar.cc/60?id={{ auth()->id() }}" alt="" width="40" height="40" class="rounded-full">
                <h2 class="m-4">Want to participate?</h2>
            </header>
            <div class="mt-6">
                                <textarea name="body"
                                          class="w-full text-sm focus:outline-none focus:ring"
                                          rows="5" placeholder="add your comment..."
                                          required></textarea>
                @error('body')
                <span class="text-red-500 text-sm">
                                    {{ $message }}
                                </span>
                @enderror
            </div>
            <div class="flex justify-end mt-10">
              <x-submit-button>Post</x-submit-button>
            </div>
        </form>
    </x-panel>
@else
    <p class="semi-bold">
        <a href="/register" class="hover:underline"> Register</a> or
        <a href="/login" class="hover:underline">Log in to leave a comment</a>
    </p>
@endauth
