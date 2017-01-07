
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/view/template/header.jsp"%>

<!-- Carousel
================================================== -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img class="first-slide" src="<c:url value="/resources/images/background.png"/>" alt="First slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Welcome to Kris's Music Store</h1>
                    <p>Here you can browse and buy Instruments, Records and music related Accessories. Order Now for Your Amazing New Kit!</p>
                    <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>
                </div>
            </div>
        </div>
        <div class="item">
            <img class="second-slide" src="<c:url value="/resources/images/background.png"/>" alt="Second slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Facts You Should Know About Music</h1>
                    <p>Music brings joy, to all of our hearts. It's one of those, emotional arts.</p>
                    <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
                </div>
            </div>
        </div>
        <div class="item">
            <img class="third-slide" src="<c:url value="/resources/images/background.png"/>" alt="Third slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>It's A Jazz Affair</h1>
                    <p>Though ups and downs, Somehow I manage to survive in life.</p>
                    <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
                </div>
            </div>
        </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div><!-- /.carousel -->


<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <div class="row">
        <div class="col-lg-4 col-md-4 col-sm-4">
            <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=Instrument"/>" role="button">
                <img src="<c:url value="/resources/images/record-icon-11.png" />" class="img-circle" alt="Instrument Image" width="140" height="140">
            </a>
        </div><!-- /.col-lg-4 -->

        <div class="col-lg-8 col-md-8 col-sm-8">
            <h2>Instrument</h2>
            <p>Well crafted and delicate instruments</p>
        </div>

    </div><!-- /.row -->
    <!-- Three columns of text below the carousel -->
    <div class="row">
        <div class="col-lg-4 col-md-4 col-sm-4">
            <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=Record"/>" role="button">
                <img src="<c:url value="/resources/images/record-icon-11.png" />" class="img-circle" alt="Instrument Image" width="140" height="140">
            </a>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-8 col-md-8 col-sm-8">
            <h2>Discography</h2>
            <p>An exceptional collections of music records in favor of the traditional and modern genre of jazz/</p>
        </div>


    </div><!-- /.row -->
    <!-- Three columns of text below the carousel -->
    <div class="row">
        <div class="col-lg-4 col-md-4 col-sm-4">
            <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=Accessory"/>" role="button">
                <img src="<c:url value="/resources/images/record-icon-11.png" />" class="img-circle" alt="Instrument Image" width="140" height="140">
            </a>
        </div><!-- /.col-lg-4 -->

        <div class="col-lg-8 col-md-8 col-sm-8">
            <h2>Accessory</h2>
            <p>All musical and related geeky goods.</p>
        </div>

    </div><!-- /.row -->




    <%@include file="/WEB-INF/view/template/footer.jsp"%>
