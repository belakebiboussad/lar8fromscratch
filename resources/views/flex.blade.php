<x-layout>
    <style>
        a {
            display: inline-block;
            width: 100px;
            text-decoration: none;
        }
        nav,
        .scroll-container {
            display: block;
            margin: 0 auto;
            text-align: center;
        }
        nav {
            width: 339px;
            padding: 5px;
            border: 1px solid black;
        }
        .scroll-container {
            width: 350px;
            height: 200px;
            overflow-y: scroll;
            scroll-behavior: smooth;
        }
        .scroll-page {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100%;
            font-size: 5em;
        }
    </style>
    @include('posts._header')
    <main class="max-w-6xl mx-auto mt-6 lg-mt-20 spacy-y-6">
        <nav>
            <a href="#page-1">1</a>
            <a href="#page-2">2</a>
            <a href="#page-3">3</a>
        </nav>
        <div class="scroll-container">
            <div class="scroll-page" id="page-1">1</div>
            <div class="scroll-page" id="page-2">2</div>
            <div class="scroll-page" id="page-3">3</div>
        </div>
    </main>
</x-layout>
