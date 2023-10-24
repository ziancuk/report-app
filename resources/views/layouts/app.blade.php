<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests">
    <meta name="csrf-token" content="{{ csrf_token() }}" />
    <title>@yield('title')</title>

    {{-- Styles --}}
    @stack('before-style')
    @include('includes.style')
    @stack('after-style')

</head>

<body>
    <main>
        @include('layouts.nav')
        @yield('content')
    </main>

    <footer>
        @include('layouts.footer')
    </footer>

    {{-- Script --}}
    @include('includes.script')
    @stack('after-script')
</body>

</html>
