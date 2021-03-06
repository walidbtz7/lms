<!DOCTYPE html>
<html lang="en">
    <head>
        <meta content="text/html; charset=utf-8" http-equiv="Content-Type"/>
        <meta content="width=device-width, initial-scale=1" name="viewport"/>
        <title>
            EL ROOM
        </title>
        <!-- CSS  -->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>
        <link href="{{ url('/') }}/css/materialize.css" media="screen,projection" rel="stylesheet" type="text/css"/>
        <link href="{{ url('assets/') }}/css/fontrpx.css" media="screen,projection" rel="stylesheet" type="text/css"/>
        <link href="{{ url('/') }}/css/style.css" media="screen,projection" rel="stylesheet" type="text/css"/>
        <link href="{{ url('assets/') }}/css/style.css" media="screen,projection" rel="stylesheet" type="text/css"/>
    </head>
    <body class="grey lighten-3">

        <header>
            <div class="gridD">
                <div class="menu">
                    <div class="logo">
                        <a href="/">
                        </a>
                    </div>
                    <div class="btn-mobile">
                        <span></span>
                        <span></span>
                        <span></span>
                    </div>
                    <div class="nav">
                        <ul>
                                                    

                            @if (Auth::check())

                                <li class="desktop">
                                    <a href="{{ url('/library') }}">
                                        Courses
                                    </a>
                                </li>

                                <li class="desktop">
                                    <a class="black-text" href="{{ url('/guide') }}">
                                        Matter
                                    </a>
                                </li>
                                
                              
                                <li class="desktop">
                                    <a class="btn btn-floating waves-effect waves-light black tooltipped" data-position="bottom" data-tooltip="Dashboard" href="{{ url('/admin/home') }}"><i class="material-icons">dashboard</i></a>
                                </li>

                                <li class="desktop">
                                    <a class="btn btn-floating waves-effect waves-light black tooltipped" data-position="bottom" data-tooltip="Logout" href="{{ url('/logout') }}"><i class="material-icons">perm_identity</i></a>
                                </li>

                                <li class="mobile">
                                    <a href="{{ url('/admin/home') }}">
                                        Dashboard
                                    </a>
                                </li>

                                <li class="mobile">
                                    <a href="{{ url('/logout') }}">
                                        Logout
                                    </a>
                                </li>
                                
                            @else

                               

                               

                                <li class="desktop">
                                    <a class="btn waves-effect waves-light black modal-trigger" data-target="modal1" href="#modal1">
                                        Login
                                    </a>
                                </li>

                                <li class="mobile">
                                    <a class="waves-effect waves-light modal-trigger" data-position="bottom" data-tooltip="Login" data-target="modal1" href="#modal1">
                                        Login
                                    </a>
                                </li>

                            @endif
                        </ul>
                    </div>
                </div>
            </div>
        </header>

         <!-- Modal Login -->
        <div class="modal" id="modal1">
            <div class="modal-content">
                <div class="row center">
                    <h5 class="black-text light">
                        Welcome to EL ROOM
                    </h5>
                </div>

                @if (count($errors) > 0)
                    <div class="alert alert-danger">
                        <strong>Whoops!</strong> There were problems with input:
                        <br><br>
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif

                <form class="form-horizontal" role="form" method="POST" action="{{ url('login') }}">
                    <input type="hidden" name="_token" value="{{ csrf_token() }}">

                    <div class="row">
                        <div class="input-field">
                            <input id="email" type="email" class="form-control" name="email" value="{{ old('email') }}">
                                <label for="email">
                                    Email
                                </label>
                            </input>
                        </div>
                    </div>

                    <div class="row">
                        <div class="input-field">
                            <input id="password" type="password" class="form-control" name="password">
                                <label for="password">
                                    Password
                                </label>
                            </input>
                        </div>
                    </div>

                    <div class="row center">
                        <button type="submit" class="modal-close btn waves-effect waves-light black">
                            Login
                        </button>
                    </div>

                    <div class="itens row center">
                        <a class="black-text" href="{{ route('auth.password.reset') }}">
                            Forgot Password?
                        </a>
                    </div>

                
                </form>

            </div>
        </div>