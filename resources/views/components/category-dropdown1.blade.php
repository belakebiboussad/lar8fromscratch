<x-dropdown1>
    <x-slot name="trigger">
        <button class="py-2 pl-3 pr-9d text-sm font-semibold w-full  lg:w-32 text-left flex lg:inline-flex">
            {{ isset($currentCategory)? ucwords($currentCategory->name) : 'Categories' }}
            <x-down-arrow1 class="absolute pointer-events-none" styyle="right:12px;">

            </x-down-arrow1>
        </button>
    </x-slot>
    <x-dropdown1-item href="/" :active="request()->routeIs('home')">All</x-dropdown1-item>
    @foreach($categories as $category)
        {{--                    {{ isset($currentCategory) && $currentCategory->is($category) ? 'bg-blue-500' : '' }}--}}
        <x-dropdown1-item
            href="/?category={{ $category->slug }}"
            {{--                        :active="isset($currentCategory) && $currentCategory->is($category)"--}}
            :active="request()->is('categories/' . $category->slug)"
        >{{ucwords($category->name) }}</x-dropdown1-item>
    @endforeach
</x-dropdown1>
