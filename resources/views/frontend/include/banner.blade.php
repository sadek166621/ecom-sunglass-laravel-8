<!--breadcrumbs area start-->
<div class="breadcrumbs_area">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="breadcrumb_content">
                    <h3>@yield('banner-title')</h3>
                    <ul>
                        <li><a href="{{ route('/') }}">home</a></li>
                        <li>></li>
                        <li>@yield('banner-title')</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!--breadcrumbs area end-->
