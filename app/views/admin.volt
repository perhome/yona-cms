<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>{{ helper.title().append('Administrative Panel') }}{{ helper.title().get() }}</title>

    <link href="{{ url.path() }}favicon.ico" rel="shortcut icon" type="image/vnd.microsoft.icon">

    <link href="{{ url.path() }}vendor/semantic-2.1/semantic.min.css" rel="stylesheet" type="text/css">
    <link href="{{ url.path() }}vendor/bootstrap/dist/css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="{{ url.path() }}vendor/bootstrap/jasny-bootstrap/css/jasny-bootstrap.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="{{ url.path() }}vendor/jquery-ui-1.11.4/jquery-ui.min.css">

    <script src="{{ url.path() }}vendor/js/jquery-1.11.0.min.js"></script>
    <script src="{{ url.path() }}vendor/semantic-2.1/semantic.min.js"></script>
    <script src="{{ url.path() }}vendor/bootstrap/jasny-bootstrap/js/jasny-bootstrap.min.js"></script>
    <script src="{{ url.path() }}vendor/js/jquery.address.js"></script>
    <script src="{{ url.path() }}vendor/noty/packaged/jquery.noty.packaged.min.js"></script>

    {# cusom connected CSS files/libraries #}
    {{ assets.outputCss() }}

    {{ stylesheet_link(helper.stylesBundlePath('admin')) }}

</head>
<body>

    {{ partial('admin/nav') }}

    <div class="content">

        {% if title is defined %}
            <h1>{{ title }}</h1>
        {% endif %}

        {% if languages_disabled is not defined %}
            {{ partial('admin/languages') }}
        {% endif %}

        {{ flash.output() }}

        {{ content() }}

        <hr>
        <a href="http://yonacms.com" class="works-on" target="_blank">Works on Yona CMS</a>

    </div>

    {# cusom connected JS files/libraries #}
    {{ assets.outputJs() }}

    {# compilled webpack scripts bundle #}
    {{ javascript_include(helper.scriptsBundlePath('admin')) }}

</body>
</html>