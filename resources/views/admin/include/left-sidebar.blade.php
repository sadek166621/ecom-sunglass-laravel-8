
<!-- LEFT SIDEBAR -->
<!-- ========================================================= -->
<div class="left-sidebar">
    <!-- left sidebar HEADER -->
    <div class="left-sidebar-header">
        <div class="left-sidebar-title">Navigation</div>
        <div class="left-sidebar-toggle c-hamburger c-hamburger--htla hidden-xs" data-toggle-class="left-sidebar-collapsed" data-target="html">
            <span></span>
        </div>
    </div>
    <!-- NAVIGATION -->
    <!-- ========================================================= -->
    <div id="left-nav" class="nano">
        <div class="nano-content">
            <nav>
                <ul class="nav nav-left-lines" id="main-nav">
                    <!--HOME-->
                    <li class="active-item"><a href="{{route('home')}}"><i class="fa fa-home" aria-hidden="true"></i><span>Dashboard</span></a></li>
                    <!--UI ELEMENTENTS-->
                    <li class="has-child-item close-item">
                        <a><i class="fa fa-cubes" aria-hidden="true"></i><span>Settings Module</span></a>
                        <ul class="nav child-nav level-1">
                            <li><a href="{{route('add-category')}}">Add category</a></li>
                            <li><a href="{{route('sub-category')}}">Add sub category</a></li>
                            <li><a href="{{route('color.index')}}">Color</a></li>
                            <li><a href="{{route('size.index')}}">Size</a></li>
                            <li><a href="{{route('add-brand')}}">Brands</a></li>
                            <li><a href="{{route('add-supplier')}}">Add Suppliers</a></li>

                            <li><a href="{{route('add-logo')}}">Logo</a></li>
                            <li><a href="{{route('add-contact')}}">Contact</a></li>
                            <li><a href="{{route('newsletter')}}">NewsLetter</a></li>
                            <li><a href="{{route('subscribe-box')}}">Subscribe Box</a></li>
                            <li><a href="{{route('coupon-display')}}">Coupon Display</a></li>
                            <li><a href="{{route('subscriber-list')}}">Subscriber List</a></li>
                        </ul>
                    </li>
                    <!--TABLES-->
                    <li class="has-child-item close-item">
                        <a><i class="fa fa-table" aria-hidden="true"></i><span>Shipping Module</span></a>
                        <ul class="nav child-nav level-1">
                            <li><a href="{{route('shipping-rate')}}">Shipping Area</a></li>
                            <li><a href="{{route('shipping-division')}}">Shipping Division</a></li>
                        </ul>
                    </li>
                    <li class="has-child-item close-item">
                        <a><i class="fa fa-table" aria-hidden="true"></i><span>Lens Module</span></a>
                        <ul class="nav child-nav level-1">
                            <li><a href="{{route('lens-type.index')}}">Add Lens Type</a></li>
                            <li><a href="{{route('lens-price.index')}}">Add Lens Price</a></li>
                        </ul>
                    </li>
                    <li class="has-child-item close-item">
                        <a><i class="fa fa-table" aria-hidden="true"></i><span>Flash Sale Module</span></a>
                        <ul class="nav child-nav level-1">
                            <li><a href="{{route('flash-sale.index')}}">Add Flash Sale</a></li>
                            <li><a href="{{route('flash-sale.create')}}">Manage Flash Sale</a></li>
                        </ul>
                    </li>
                    <li class="has-child-item close-item">
                        <a><i class="fa fa-table" aria-hidden="true"></i><span>Coupon Module</span></a>
                        <ul class="nav child-nav level-1">
                            <li><a href="{{route('coupon-code')}}">Coupon Code</a></li>
{{--                            <li><a href="{{route('flash-sale.create')}}">Manage Flash Sale</a></li>--}}
                        </ul>
                    </li>
                    <!--TABLES-->
                    <li class="has-child-item close-item">
                        <a><i class="fa fa-table" aria-hidden="true"></i><span>Products</span></a>
                        <ul class="nav child-nav level-1">
                            <li><a href="{{route('add-product')}}">Add Products</a></li>
                            <li><a href="{{route('manage-product')}}">Manage Products</a></li>
                        </ul>
                    </li>
                    <li class="has-child-item close-item">
                        <a><i class="fa fa-table" aria-hidden="true"></i><span>Stock Management</span></a>
                        <ul class="nav child-nav level-1">
                            <li><a href="{{route('manage-stock')}}">Manage Stock</a></li>
                        </ul>
                    </li>
                    <li class="has-child-item close-item">
                        <a><i class="fa fa-table" aria-hidden="true"></i><span>Order</span></a>
                        <ul class="nav child-nav level-1">
                            <li><a href="{{route('pending-order')}}">Pending Order</a></li>
                            <li><a href="{{route('success-order')}}">Success Order</a></li>
                            <li><a href="{{route('manage-order')}}">Manage Order</a></li>
                        </ul>
                    </li>
                    <li class="has-child-item close-item">
                        <a><i class="fa fa-table" aria-hidden="true"></i><span>Slider Module</span></a>
                        <ul class="nav child-nav level-1">
                            <li><a href="{{route('add-slider')}}">Add slider</a></li>
                        </ul>
                    </li>
                    <li class="has-child-item close-item">
                        <a><i class="fa fa-table" aria-hidden="true"></i><span>View shop image</span></a>
                        <ul class="nav child-nav level-1">
                            <li><a href="{{route('view-upload-shop')}}">View request shop</a></li>
                        </ul>
                    </li>
                    <li class="has-child-item close-item">
                        <a><i class="fa fa-table" aria-hidden="true"></i><span>Sells report Module</span></a>
                        <ul class="nav child-nav level-1">
                            <li><a href="{{route('daily-sells-report')}}">Daily Sells report</a></li>
                            <li><a href="{{route('weekly-sells-report')}}">Weekly Sells report</a></li>
                            <li><a href="{{route('monthly-sells-report')}}">Monthly Sells report</a></li>
                            <li><a href="{{route('sells-report')}}">All Sells report</a></li>
                        </ul>
                    </li>
                    <li class="has-child-item close-item">
                        <a><i class="fa fa-cubes" aria-hidden="true"></i><span>Blog Module</span></a>
                        <ul class="nav child-nav level-1">
                            <li><a href="{{route('blog.category.index')}}">Add Blog Category</a></li>
                            <li><a href="{{route('blog.index')}}">Add Blog</a></li>
                        </ul>
                    </li>
                    <li class="has-child-item close-item">
                        <a><i class="fa fa-cubes" aria-hidden="true"></i><span>Gallery Module</span></a>
                        <ul class="nav child-nav level-1">
                            <li><a href="{{route('add-gallery')}}">Add Gallery</a></li>
                        </ul>
                    </li>
                    <li class="has-child-item close-item">
                        <a><i class="fa fa-cubes" aria-hidden="true"></i><span>Page Module</span></a>
                        <ul class="nav child-nav level-1">
                            <li><a href="{{route('add-page')}}">Add Page</a></li>
                        </ul>
                    </li>
                    <!--PAGES-->


                </ul>
            </nav>
        </div>
    </div>
</div>
