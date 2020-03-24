<!DOCTYPE html>
<html lang="">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="jTcuoJ1H3zFhmQXuheeIO6JSwby4dUo60PtqFlZ1">

    <title>ListenToChurch</title>

    <!-- Compiled Styles -->
    <link href="https://listentochurch.com/css/app.css" rel="stylesheet" type="text/css">

    <!--<link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">-->
    <link href="https://listentochurch.com/css/bootstrap-social.min.css" rel="stylesheet" type="text/css">

    <!-- Fontawesome -->
    <link href="https://listentochurch.com/assets/fontawesome-pro-5.7.2-web/css/all.css" rel="stylesheet">

    <link href="https://listentochurch.com/assets/select2/select2.min.css" rel="stylesheet" />
    <link href="https://listentochurch.com/assets/select2/select2-bootstrap.css" rel="stylesheet" />

    <link href="https://listentochurch.com/assets/flag-icon-css/css/flag-icon.min.css" rel="stylesheet" type="text/css">

    <link rel="stylesheet" type="text/css" href="https://listentochurch.com/assets/cookieconsent.min.css" />


    <!-- Styles -->
    <style>
        html, body {
            /*background-color: #fff;
            color: #636b6f;
            font-family: 'Raleway', sans-serif;
            font-weight: 100;
            height: 100vh;
            margin: 0;*/
        }
    </style>

    <link href="/assets/player/css/jplayer.blue.monday.min.css" rel="stylesheet" type="text/css" />
    <link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">

    <link href='/assets/fullcalendar-3.9.0/fullcalendar.min.css' rel='stylesheet' />
    <link href='/assets/fullcalendar-3.9.0/fullcalendar.print.min.css' rel='stylesheet' media='print' />


    <style>
        .panel-heading.accordion-toggle:after {
            /* symbol for "opening" panels */
            font-family: 'Glyphicons Halflings';
            /* essential for enabling glyphicon */
            content: "\e114";
            /* adjust as needed, taken from bootstrap.css */
            float: right;
            position: relative;
            bottom: 23px;
            font-size: 15pt;
            /* adjust as needed */
            color: white;
            /* adjust as needed */
        }

        .panel-heading.accordion-toggle.collapsed:after {
            /* symbol for "collapsed" panels */
            content: "\e080";
            /* adjust as needed, taken from bootstrap.css */
        }

        .panel-heading:hover {
            cursor: pointer;
        }

        .panel-heading:hover h4 {
            text-decoration: underline;
        }

        .big-icon {
            font-size: 128px;
        }

        .medium-icon {
            font-size: 64px;
        }
        .active-player-button{
            color: #325d88;
        }

        #transcriptionId {
            font-family: "Times New Roman", Times, serif;
            font-size: 18px;
            color: #000;
        }

        #map_canvas { margin: 0; padding: 0; height: 500px }

        input[type=range] {
            -webkit-appearance: none;
            width: 100%;
            margin: 13.8px 0;
        }
        input[type=range]:focus {
            outline: none;
        }
        input[type=range]::-webkit-slider-runnable-track {
            width: 100%;
            height: 8.4px;
            cursor: pointer;
            box-shadow: 1px 1px 1px #000000, 0px 0px 1px #0d0d0d;
            background: #3071a9;
            border-radius: 1.3px;
            border: 0.2px solid #010101;
        }
        input[type=range]::-webkit-slider-thumb {
            box-shadow: 1px 1px 1px #000000, 0px 0px 1px #0d0d0d;
            border: 3.8px solid #3071a9;
            height: 36px;
            width: 16px;
            border-radius: 3px;
            background: #ffffff;
            cursor: pointer;
            -webkit-appearance: none;
            margin-top: -14px;
        }
        input[type=range]:focus::-webkit-slider-runnable-track {
            background: #3071a9;
        }
        input[type=range]::-moz-range-track {
            width: 100%;
            height: 8.4px;
            cursor: pointer;
            box-shadow: 1px 1px 1px #000000, 0px 0px 1px #0d0d0d;
            background: #3071a9;
            border-radius: 1.3px;
            border: 0.2px solid #010101;
        }
        input[type=range]::-moz-range-thumb {
            box-shadow: 1px 1px 1px #000000, 0px 0px 1px #0d0d0d;
            border: 3.8px solid #3071a9;
            height: 36px;
            width: 16px;
            border-radius: 3px;
            background: #ffffff;
            cursor: pointer;
        }
        input[type=range]::-ms-track {
            width: 100%;
            height: 8.4px;
            cursor: pointer;
            background: transparent;
            border-color: transparent;
            color: transparent;
        }
        input[type=range]::-ms-fill-lower {
            background: #3071a9;
            border: 0.2px solid #010101;
            border-radius: 2.6px;
            box-shadow: 1px 1px 1px #000000, 0px 0px 1px #0d0d0d;
        }
        input[type=range]::-ms-fill-upper {
            background: #3071a9;
            border: 0.2px solid #010101;
            border-radius: 2.6px;
            box-shadow: 1px 1px 1px #000000, 0px 0px 1px #0d0d0d;
        }
        input[type=range]::-ms-thumb {
            box-shadow: 1px 1px 1px #000000, 0px 0px 1px #0d0d0d;
            border: 3.8px solid #3071a9;
            height: 36px;
            width: 16px;
            border-radius: 3px;
            background: #ffffff;
            cursor: pointer;
            height: 8.4px;
        }
        input[type=range]:focus::-ms-fill-lower {
            background: #3071a9;
        }
        input[type=range]:focus::-ms-fill-upper {
            background: #3071a9;
        }

    </style>



</head>
<body>
    <div id="app">
        <nav class="navbar navbar-default navbar-static-top">
    <div class="container-fluid">
        <div class="navbar-header">

            <!-- Collapsed Hamburger -->
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#app-navbar-collapse">
                <span class="sr-only">Toggle Navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

            <!-- Branding Image -->
                            <a class="navbar-brand" href="https://listentochurch.com">
                    <i class="far fa-church fa-lg"></i>
	                ListenToChurch
                </a>
                    </div>

        <div class="collapse navbar-collapse" id="app-navbar-collapse">
            <!-- Left Side Of Navbar -->
            <ul class="nav navbar-nav">
                                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                            <img style="max-width:40px;" class="img-fluid" src="https://listentochurch.com/assets/img/flags/unk.png"/> Unknown - <i class="far fa-language fa-lg" aria-hidden="true"></i> Language Picker <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu" role="menu">
                                                            <li>
                                    <a href="https://listentochurch.com/languages/en/back">
                                        <img style="max-width:40px;" class="img-fluid" src="https://listentochurch.com/assets/img/flags/en.png"/>
                                        English (US)
                                    </a>
                                </li>
                                                            <li>
                                    <a href="https://listentochurch.com/languages/es/back">
                                        <img style="max-width:40px;" class="img-fluid" src="https://listentochurch.com/assets/img/flags/es.png"/>
                                        Español
                                    </a>
                                </li>
                                                            <li>
                                    <a href="https://listentochurch.com/languages/fr/back">
                                        <img style="max-width:40px;" class="img-fluid" src="https://listentochurch.com/assets/img/flags/fr.png"/>
                                        Français
                                    </a>
                                </li>
                                                            <li>
                                    <a href="https://listentochurch.com/languages/de/back">
                                        <img style="max-width:40px;" class="img-fluid" src="https://listentochurch.com/assets/img/flags/de.png"/>
                                        Österreichisches Deutsch
                                    </a>
                                </li>
                                                            <li>
                                    <a href="https://listentochurch.com/languages/pd/back">
                                        <img style="max-width:40px;" class="img-fluid" src="https://listentochurch.com/assets/img/flags/pd.png"/>
                                        Plautdietsch
                                    </a>
                                </li>
                                                            <li>
                                    <a href="https://listentochurch.com/languages/pt/back">
                                        <img style="max-width:40px;" class="img-fluid" src="https://listentochurch.com/assets/img/flags/pt.png"/>
                                        Português
                                    </a>
                                </li>
                                                            <li>
                                    <a href="https://listentochurch.com/languages//back">
                                        <img style="max-width:40px;" class="img-fluid" src="https://listentochurch.com/assets/img/flags/.png"/>
                                        Unknown
                                    </a>
                                </li>
                                                    </ul>
                    </li>
            </ul>

            <!-- Right Side Of Navbar -->
            <ul class="nav navbar-nav navbar-right">
                <!-- Authentication Links -->
                <li><a href="https://docs.google.com/document/d/1_xwYzCXsZuJcp6VH1ibmxkBqSqZ9nLPfhOlfI-NZwos/edit#heading=h.vs0rqthfjqxj" target="_blank"><i class="far fa-question fa-lg"></i> Documentation</a></li>
                                    <li><a href="https://listentochurch.com/login"><i class="far fa-sign-in fa-lg" aria-hidden="true"></i> Login</a></li>
                    <li><a href="https://listentochurch.com/register"><i class="far fa-user-plus fa-lg" aria-hidden="true"></i> Register</a></li>
                            </ul>
        </div>
    </div>
</nav>

        
        
    <div class="container-fluid">
                    <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h2 class="panel-title"><i class="fa fa-sign-in" aria-hidden="true"></i> Sign In Now</h2>
                        </div>
                        <div class="panel-body">
                            <p>Create an account and sign in to add this stream to your bookmarks.  Your bookmarks will be saved and will synchronize with the ListenToChurch app as well as your EasyListen.</p>
                            <div class="row">
                                <div class="col-md-offset-3 col-md-3">
                                    <a href="https://listentochurch.com/login"><i class="fa fa-sign-in" aria-hidden="true"></i> Login</a>
                                </div>
                                <div class="col-md-3">
                                    <a href="https://listentochurch.com/register"><i class="fa fa-user-plus" aria-hidden="true"></i> Register</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
                <div class="row">
            <div class="col-md-2 js-add-to-bookmarks-block">
                            </div>
            <div class="col-md-8">
                <h1 class="text-center">Cumberland Mountain Cong - Listener Page</h1>
            </div>
        </div>
                    <div class="row">
            <div class="col-md-12">
                            </div>
        </div>
                <div class="row">
            <div class="col-md-6">
                <div class="panel  panel-primary ">
                    <div class="panel-heading">
                        <h2 class="panel-title"><i class="fa fa-headphones" aria-hidden="true"></i> Listen in your browser now</h2>
                    </div>
                    <div class="panel-body ">
                        <div class="text-center" id="percentageDiv"></div>
                        <button id="statusButton" type="button" class="btn btn-success btn-block">
                            <i id="refreshIcon" class="fa fa-refresh"></i>
                            <span id="statusButtonText">Stream is Online</span>. Click to Refresh. <i class="far fa-sync-alt"></i>
                        </button>
                        <br>
                        <div align="center">
                        <!--
            <audio controls="" preload="none">
              <source src="http://us-mo-kansascity-1.listentochurch.com:8000/7833585.mp3" type="audio/mp3"> Unsupported Browser. Please use link below or click on "Advanced Options".
            </audio>
            -->

                            <!-- The new player with default skin -->
                            <div id="jquery_jplayer_1" class="jp-jplayer"></div>
                            <!-- Player skin -->
                            <div>
                                <a href="#" class="fas fa-play-circle fa-5x" id="playStopBtn" title="Play stream">
                                    <span id="spn_playStopBtn" class="sr-only">Play</span>
                                </a>
                            </div>

                            <div class="row">
                                <div class="col-xs-3 text-right">
                                    <a href="#" id="vol1" class="fa fa-volume-down fa-3x" title="Set volume to 0%" role="button">
                                        <span class="sr-only">Set volume to 0 percent</span>
                                    </a>
                                </div>
                                <div class="col-xs-6 text-center" style="height: 64px">
                                    <div style="width: 100%;"  id="volume_slider">
                                        <!--<div class="progress-bar" role="slider" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
                                            <span class="sr-only">60%</span>
                                        </div>-->
                                        <label id="lblInputSlider" class="sr-only" for="input_slider">Stream volume</label>
                                        <input id="input_slider" type="range" class="progress-bar  progress-bar-success" role="slider" value="85" title="Volume currently set at 85%" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100" style="width: 100%;">
                                        </input>
                                    </div>
                                </div>
                                <div class="col-xs-3 text-left"><a href="#" id="vol2" class="fa fa-volume-up fa-3x" title="Set volume to 100%" role="button">
                                        <span class="sr-only">Set volume to 100 percent</span>
                                    </a>
                                </div>
                            </div>
                            <div class="row" >
                                <div class="col-md-12">
                                    <div id="stream-status" aria-label="Stream Status">&nbsp;</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div id="panelStreamServer" class="panel  panel-primary ">
                    <div class="panel-heading">
                                                    <h2 class="panel-title"><i class="fa fa-globe" aria-hidden="true"></i> Local Server</h2>
                                            </div>
                    <div class="panel-body ">

                        <fieldset style="border:0px"><legend>For the best experience select the location nearest to you.</legend>                            <div class="form-group" id="radioStreamServerDiv"></div>
                        </fieldset>
                                                    <div class="row">
                                <div class="col-md-6">
                                    <a href="#" class="btn btn-primary btn-block" onclick="speedtest()" role="button">
                                        <i class="far fa-tachometer"></i> Internet Speed Test
                                    </a>
                                </div>
                                <div class="col-md-6">
                                    <a href="#" id="buttonRefreshServers" class="btn btn-primary btn-block"  role="button">
                                        <i class="far fa-sync-alt"></i> Refresh Server List
                                    </a>
                                </div>
                            </div>
                        
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="panel panel-primary">
  <div class="panel-heading">
    <h2 class="panel-title"><i class="fa fa-phone" aria-hidden="true"></i> Telephone Access</h2>
  </div>
  <div class="panel-body">
  <p>For your convenience we offer telephone access as an alternate way to connect.</p>
      <a class="btn btn-primary btn-block" href="tel:615-610-6950">
      <i class="fa fa-phone-square" aria-hidden="true"></i>  615-610-6950  Nashville, TN</a>
    </div>
</div>
            </div>
        </div>
                <div class="row">
            <div class="col-md-12">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h2 class="panel-title">
                            <a href="#collapseOne" id="advanced_options" class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" aria-expanded="false" title="Advanced Options (section collapsed, select to expand)" role="button">
                                <i class="far fa-tools"></i> Advanced Options <span id="spn_advanced_options" class="sr-only">- section collapsed</span>
                            </a>
                        </h2>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" style="" aria-expanded="false"> <!--aria-labelledby="headingOne"-->
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="panel panel-primary">
  <div class="panel-heading">
    <h3 class="panel-title"><i class="fa fa-plug" aria-hidden="true"></i> Connect your EasyStream</h3>
  </div>
  <div class="panel-body">
    <a class="btn btn-primary btn-block" role="button" target="_blank" href="https://www.dropbox.com/s/26e13988w8220q0/EasyStream%20Quick%20Start%20Guide%20V2.pdf?dl=0"><i class="fa fa-cloud-download" aria-hidden="true"></i> EasyStream Manual <span class="sr-only">Opens PDF in new window</span></a>
    <ol title="EasyStream Instructions">
      <li>Connect to your EasyStream with your web browser.</li>
      <li>Open the Listen + tab</li>
      <li>Enter the link below into the URL box.</li>
      <li>Enter the name below into the Name box.</li>
      <li>Switch back to the Listen tab and press the bottom Listen button.</li>
    </ol>
    <p>URL: <b id="easyStreamMountUrl">http://us-mo-kansascity-1.listentochurch.com:8000/7833585</b></p>
    <p>Name: <b>Cumberland Mountain Cong</b></p>
  </div>
</div>
                                </div>
                                <div class="col-md-4">
                                    <div class="panel panel-primary">
  <div class="panel-heading">
    <h3 class="panel-title"><i class="fa fa-plug" aria-hidden="true"></i> Conference Bridging</h3>
  </div>
  <div class="panel-body">
    <a target="_blank" role="button" class="btn btn-primary btn-block" href="https://www.aleph-com.net/conferencing-and-streaming/connect-conference-bridges/"><i class="fa fa-external-link" aria-hidden="true"></i> Join Conference Tool <span class="sr-only">Opens new window</span></a>
    <p>Bridge ID of this conference: <b>7833585</b></p>
    <p></p>
  </div>
</div>                                </div>
                                <div class="col-md-4">
                                    <div class="panel panel-primary">
  <div class="panel-heading">
    <h3 class="panel-title"><i class="fa fa-music" aria-hidden="true"></i> M3U Audio File</h3>
  </div>
  <div class="panel-body">
              You must be signed into ListenToChurch to download an M3U file.
      </div>
</div>                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title">Recommended Client Software</h3>
    </div>

    <div class="panel-body">
        <div class="row">
            <div class="col-md-3">
                <h4><i class="fab fa-android"></i> Android</h4>
                <ul class="list-group">
                <li class="list-group-item">
                    <a class="btn btn-primary btn-block" href="https://play.google.com/store/apps/details?id=com.listentochurch.app" role="button" target="_blank">
                    <img alt="Listen To Church Pro for Android" src="https://lh3.googleusercontent.com/ovDCXrx-Nf2nKo6sfLXNB6Upas3F3G0FwyPj0Ml5lAZBKyhG7HzckfftxiOWzkQKfiQ=s180-rw" style="width:50px;height:50px;"> ListenToChurch Pro<span class="sr-only">Opens new window</span></a>
                </li>
                </ul>
            </div>
            <div class="col-md-3">
                <h4><i class="fab fa-app-store-ios"></i> iOS</h4>
                <ul class="list-group">
                <li class="list-group-item">
                    <a class="btn btn-primary btn-block" href="https://itunes.apple.com/ca/app/vlc-for-mobile/id650377962?mt=8" role="button" target="_blank">
                    <img alt="vlc Mobile" src="/assets/images/vlc_for_ios.png" style="width:50px;height:50px;"> VLC for Mobile <span class="sr-only">Opens new window</span></a>
                </li>
                </ul>
            </div>
            <!--<div class="col-md-3">
                <h4><i class="fa fa-apple" aria-hidden="true"></i> Mac</h4>
                <ul class="list-group">
                <li class="list-group-item">
                    <a class="btn btn-primary btn-block" href="http://www.videolan.org/vlc/download-macosx.html" role="button" target="_blank">
                    <img alt="vlc Mac OS X" src="/assets/images/vlc_for_ios.png" style="width:50px;height:50px;"> VLC for Mac OS X <span class="sr-only">Opens new window</span></a>
                </li>
                </ul>
            </div>-->
            <!--<div class="col-md-3">
                <h4><i class="fa fa-windows" aria-hidden="true"></i> Windows</h4>
                <ul class="list-group">
                <li class="list-group-item">
                    <a class="btn btn-primary btn-block" href="http://www.videolan.org/vlc/download-windows.html" role="button" target="_blank">
                    <img alt="vlc Windows" src="/assets/images/vlc_for_android.png" style="width:50px;height:50px;"> VLC for Windows <span class="sr-only">Opens new window</span>
                    </a>
                </li>
                </ul>
            </div>-->
        </div>
    </div>
</div>                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
                                </div>

    </div>

        
    </div>

    <!-- Scripts -->
    <!-- Minified version of `es6-promise-auto` below. -->
    <script src="https://listentochurch.com/assets/es6-promise/es6-promise.min.js"></script>
    <script src="https://listentochurch.com/assets/es6-promise/es6-promise.auto.min.js"></script>
    <!--<script type="text/javascript" src="https://listentochurch.com/js/app.js"></script>-->
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://listentochurch.com/js/jquery.min.js"></script>

    <script src="https://listentochurch.com/assets/bootstrap-3.3.7/js/bootstrap.min.js"></script>
    
    <script src="https://listentochurch.com/js/axios.min.js"></script>

    <script src="https://listentochurch.com/assets/select2/select2.min.js"></script>

    <script src="https://listentochurch.com/assets/js.cookie.min.js"></script>

    <script src="https://listentochurch.com/assets/cookieconsent.min.js"></script>

    <!--<script src="https://listentochurch.com/js/Sortable.js"></script>-->
    <link rel="stylesheet" type="text/css" href="https://listentochurch.com/assets/jqueryui/jquery-ui.min.css" />
    <script src="https://listentochurch.com/assets/jqueryui/jquery-ui.min.js"></script>
    <script src="https://listentochurch.com/assets/bootstrap-notify.min.js"></script>

    <script>
        window.addEventListener("load", function(){
            window.cookieconsent.initialise({
                "palette": {
                    "popup": {
                    "background": "#3937a3"
                    },
                    "button": {
                    "background": "#d0005e"
                    }
                }
            })
        });
        var token = document.head.querySelector('meta[name="csrf-token"]');
        window.axios.defaults.headers.common['X-CSRF-TOKEN'] = token.content;
    </script>

            <script type="text/javascript" src="/assets/player/js/jquery.jplayer.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/socket.io/2.0.3/socket.io.js"></script>
    <script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>
    
    <script src='/assets/fullcalendar-3.9.0/lib/moment.min.js'></script>
    <script src='/assets/fullcalendar-3.9.0/fullcalendar.min.js'></script>
    <script src='/assets/fullcalendar-3.9.0/gcal.min.js'></script>

    <!--<script src="/assets/audiojs/audio.min.js"></script>-->
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <!--<script src="/assets/bootstrap-3.3.6/js/ie10-viewport-bug-workaround.js"></script>-->

    <script type="text/javascript">

        let mount = {};
        mount['auth_level'] = 5;

        var default_server = 'us-ca-fremont-1.listentochurch.com';
        //console.log('System Set default_server to: ' + default_server);
        var current_server = '';
        var access_relays = 1;
        var servers;
        var stream;
        var stream_status;

        var audio_location = {
            protocol: "https",
            port: "443",
            mount: "7833585",
            encoding: "mp3",
        }



        
        //"http://us-mo-kansascity-1.listentochurch.com:8000/7833585.mp3"

        if(access_relays == 1 && Cookies.get('default_server')) {
            default_server = Cookies.get('default_server');
        }

        current_server = default_server;
        setServer();
        getStreamServers();

        $("#buttonRefreshServers").click(function() {
            getStreamServers();
        });

        function getStreamServers() {
            axios.get('https://api.listentochurch.com/api/v1/public/streamserver/7833585')
                .then(function (response) {
                    //console.log(response);
                    servers = response.data;
                    var string = '';
                    $.each(servers, function( index, data ) {
                        var checked = '';
                        let display = true;
                        if (access_relays === 0) {
                            display = false;
                        }
                        if (data.host_name == default_server && data.active == 1) {
                            //console.log('Found Default Server');
                            checked = 'checked';
                            display = true;
                        } else if (data.host_name == default_server && access_relays == 0 ) {
                            //console.log('We are limited to one server.  Selecting it');
                            checked = 'checked';
                            display = true;
                        }
                        var disabled = '';
                        var text_class_start = '';
                        var text_class_end = '';
                        var text_status = '';
                        if (data.active == 0) {
                            text_status = '<b>System Unavailable</b>';
                            text_class_start = '<s>';
                            text_class_end = '</s>';
                        }
                        if (data.advertise == 1 && display) {
                            string += '<div class="radio"><label class="radio"><input onchange="switchServer(this)" '
                                + 'data-server_host_name="' + data.host_name + '" '
                                + 'data-server_id="' + data.id + '" type="radio" name="streamServerRadio" '
                                + checked + ' ' + disabled + '>'
                                + '<span aria-hidden="true" class="flag-icon flag-icon-' + data.flag + '"></span> '
                                + text_class_start + data.location + text_class_end + ' ' + text_status + '</label></div>';
                        }
                    });
                    $("#radioStreamServerDiv").html(string);
                })
                .catch(function (error) {
                    console.log(error);
                });
        }

        function switchServer(e)
        {
            current_server = $(e).data('server_host_name');
            Cookies.set('default_server', current_server);
            setServer();
        }

        function setServer() {
            //console.log('Setting Server: ' + current_server);
            populateStreamVariable();
            $("#easyStreamMountUrl").html(audio_location.protocol + "://" + current_server + ":" + audio_location.port + "/"
                + audio_location.mount + "." + audio_location.encoding);
        }

        function populateStreamVariable()
        {
            stream = {
                title: "Cumberland Mountain Cong",
                mp3: audio_location.protocol + "://" + current_server + ":" + audio_location.port
                    + "/" + audio_location.mount + "." + audio_location.encoding + ""
            },
                ready = false,
                playing = false,
                stoppedOnFailure = false,
                reconnectInterval = 1000 * 10, // The second number is in seconds
                reconnectIntervalHandle = void 0;
        }


        
        function speedtest() {
            var win = window.open("http://" + current_server, '_blank');
            win.focus();
        }

        function checkStreamStatus() {
            $.get("https://api.listentochurch.com/api/v1/public/stream/status/7833585", function (data) {
                //console.log(data);
                stream_status = data;
                if (data.percentage > 104) {
                    $("#percentageDiv").html('<h3 class="text-danger">This system is full.</h3>');
                } else if (data.percentage > 74) {
                    $("#percentageDiv").html('<h3 class="text-danger">This system is '
                        + Math.round(data.percentage) + '% full.</h3>');
                }

                $("#statusButtonText").text(data.message);
                $("#statusButton").removeClass();
                $("#refreshIcon").removeClass("fa-spin");
                if (data.status == 1) {
                    $("#statusButton").addClass('btn btn-success btn-block');
                } else {
                    $("#statusButton").addClass('btn btn-danger btn-block');
                }
            });
        }

        $("#advanced_options.accordion-toggle").click(function() {
            if($("#advanced_options").hasClass('collapsed'))
            {
                // going from collapsed to expanded.
                document.getElementById('advanced_options').title = 'Advanced Options (section expanded, select to collapse)';
                $("#spn_advanced_options").text("- section expanded");
            }
            else
            {
                // going from expanded to collapsed
                document.getElementById('advanced_options').title = 'Advanced Options (section collapsed, select to expand)';
                $("#spn_advanced_options").text("- section collapsed");
            }

        });

        $(document).ready(function () {
            
                        /** */

            checkStreamStatus();

            $("#statusButton").click(function () {
                $("#statusButton").removeClass()
                    .addClass('btn btn-warning btn-block');
                $("#statusButtonText").text("Checking Status of Stream");
                $("#refreshIcon").addClass("fa-spin");
                $("#statusButton").prop('disabled', true)
                    .attr( "title", "Please wait 10 seconds before trying again.");
                setTimeout(function () {
                    $("#statusButton").prop('disabled', false)
                        .attr( "title", "");
                }, 10000);
                checkStreamStatus();
            });

            function setPlayerStatus(status) {
                $("#stream-status").text(status);
            }

            function handleStreamError() {
                if (!playing || reconnectIntervalHandle) {
                    return;
                }
                checkStreamStatus();
                playing = false;
                setPlayerStatus("Error, trying to reconnect...");
                stoppedOnFailure = true;
                reconnectToStream();
                // Try to reconnect on timer events
                reconnectIntervalHandle = setInterval(reconnectToStream, reconnectInterval);
            }

            function reconnectToStream() {
                console.log("Player: reconnecting...");
                setPlayerStatus("Reconnecting...");
                player.jPlayer("clearMedia");
                player.jPlayer("play");
            }

            var player = $("#jquery_jplayer_1").jPlayer({
                ready: function (event) {
                    console.log("Player: ready");
                    ready = true;
                    setPlayerStatus("Ready");
                    //$(this).jPlayer("setMedia", stream);
                    /* Set the alt tag in the jplayer image to empty alt tag for accessibility - Joe Payne 1/23/2018 */
                    $(this).find("img:not([alt])").attr('alt', '');
                },
                pause: function () {
                    console.log("Player: pause");
                    $(this).jPlayer("clearMedia");
                    if (!stoppedOnFailure) {
                        setPlayerStatus("Stopped");
                    }
                    playing = false;
                },
                play: function (e) {
                    console.log("Player: play");
                    if(!reconnectIntervalHandle){
                        setPlayerStatus("Loading...");
                    }

                },
                playing: function (e) {
                    console.log("Player: playing");
                    playing = true;
                    setPlayerStatus("Playing");
                    clearInterval(reconnectIntervalHandle);
                    reconnectIntervalHandle = void 0;
                    stoppedOnFailure = false;
                },
                stalled: function (e) {
                    console.log("Player: stalled", e);
                    setPlayerStatus("Stalled...");
                    /*if(navigator.userAgent.search("Firefox") < 0) {
                        handleStreamError();
                    }*/
                },
                suspend: function (e) {
                    console.log("Player: suspended", e)
                    /*if(navigator.userAgent.search("Firefox") < 0) {
                        handleStreamError();
                    }*/
                },

                abort: function (e) {
                    console.log("Player: aborted", e)
                    handleStreamError();
                },

                emptied: function (e) {
                    console.log("Player: emptied", e)
                    handleStreamError();
                },
                ended: function (e) {
                    console.log("Player: ended", e)
                    if(navigator.userAgent.search("Firefox") < 0) {
                        handleStreamError();
                    }
                },

                error: function (event) {
                    console.log("Player: error")
                    console.log(event.jPlayer.error);
                    if (ready && event.jPlayer.error.type === $.jPlayer.error.URL_NOT_SET) {
                        // Setup the media stream again and play it.
                        $(this).jPlayer("setMedia", stream).jPlayer("play");
                    }
                },
                swfPath: "./player/js/", // Path to jquery.jplayer.swf for Flash fallback
                supplied: "mp3",
                preload: "none",
                wmode: "window",
                solution: 'html, flash',
                useStateClassSkin: true,
                autoBlur: false,
                keyEnabled: true,
                volume: 0.85
            });

            var playBtn = $('#playStopBtn'),
                volume = $('#volume_slider'),
                vol1 = $('#vol1'),
                vol2 = $('#vol2'),
                progressBar = $('.progress-bar'),
                input_slider = document.getElementById("input_slider");

            function muteVol(toggle){
                if(toggle){
                    vol1.removeClass('fa-volume-down').addClass('fa-volume-off').addClass('active-player-button');
                }
                else{
                    vol1.removeClass('fa-volume-off').addClass('fa-volume-down').removeClass('active-player-button');
                }
            }

            function maxVol(toggle){

                if(toggle){
                    vol2.addClass('active-player-button');
                }
                else{
                    //console.log("2");
                    vol2.removeClass('active-player-button');
                }
            }

            vol1.on("click", function(){
                muteVol(true);
                maxVol(false);
                progressBar.css('width', '100%').attr('aria-valuenow', 0).attr('value', 0);
                player.jPlayer("volume", 0);
                input_slider.value = 0;
                input_slider.title = 'Volume currently set at 0%';
            });

            vol2.on("click", function(){
                maxVol(true);
                muteVol(false);
                progressBar.css('width', '100%').attr('aria-valuenow', 100).attr('value', 100);
                player.jPlayer("volume", 1);
                input_slider.value = 100;
                input_slider.title = 'Volume currently set at 100%';
            });

            // Keyboard or mouse input from volume slider control - changed for accessibility - Joe Payne 1/23/2018
            input_slider.oninput = function() {
                var percent = input_slider.value;
                progressBar.attr('aria-valuenow', percent);
                progressBar.css('width', '100%').attr('aria-valuenow', percent).attr('value', percent);
                input_slider.title = 'Volume currently set at ' + percent + '%';
                if(percent == 0){
                    muteVol(true);
                    maxVol(false);
                }
                else if(percent === 100){
                    maxVol(true);
                    muteVol(false);
                }
                else{
                    muteVol(false);
                    maxVol(false);
                }

                player.jPlayer("volume", percent / 100.0);
            }

            volume.on("click", function(e){
                var total = volume.width();
                var val = e.offsetX;
                if(val < 15){
                    val = 0;
                }
                if(val > total - 15){
                    val = total;
                }

                var percent = val > 0 ? val/total*100 : 0;
                progressBar.attr('aria-valuenow', percent);
                //progressBar.css('width', percent+'%').attr('aria-valuenow', percent);
                if(percent == 0){
                    muteVol(true);
                    maxVol(false);
                }
                else if(percent === 100){
                    maxVol(true);
                    muteVol(false);
                }
                else{
                    muteVol(false);
                    maxVol(false);
                }

                input_slider.value = percent;
                player.jPlayer("volume", percent / 100.0);

            });

            playBtn.on("click", function(){

                var isPlaying = playBtn.hasClass('fa-stop-circle');

                // Stop
                if(isPlaying){
                    playBtn.removeClass('fa-stop-circle');
                    playBtn.addClass('fa-play-circle');
                    player.jPlayer("stop");
                    playBtn.removeClass('active-player-button');
                    playing = false;
                    document.getElementById('playStopBtn').title = 'Play stream';
                    $("#spn_playStopBtn").text("Play");
                }
                // Play
                else {
                    if (stream_status.full == 1) {
                        alert('This stream is full.');
                    } else {
                        playBtn.removeClass('fa-play-circle');
                        playBtn.addClass('fa-stop-circle');
                        player.jPlayer("setMedia", stream);
                        setPlayerStatus("Loading...");
                        player.jPlayer("play");
                        playBtn.addClass('active-player-button');
                        document.getElementById('playStopBtn').title = 'Stop stream';
                        $("#spn_playStopBtn").text("Stop");
                    }
                }
            });

            
        });


        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
            (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

        ga('create', 'UA-1312205-10', 'auto');
        ga('send', 'pageview');


    </script>

    <script type="text/javascript">

    </script>

    
    
        


<script>
    $(document).ready(function () {
        $('.js-add-to-bookmarks').on('click', function () {
            let btn = $(this);
            conferenceId = btn.data('conference-id');

            axios.post('/api/v1/user/bookmark/add', {
                'conference_id': conferenceId
            })
                .then(function (response) {
                    btn.hide();

                    $.notify({
                        message: "Added Bookmark!"
                    }, {
                        type: 'success',
                        z_index: 2000
                    });
                })
                .catch(function (error) {
                    console.log(error);

                    $.notify({
                        message: "Error adding bookmark!"
                    }, {
                        type: 'danger',
                        z_index: 2000
                    });
                });
        });
    });
</script>

    <script>
        $('div.alert').not('.alert-important').delay(3000).fadeOut(350);
    </script>
</body>
</html>
