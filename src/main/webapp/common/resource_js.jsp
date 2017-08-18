<%--
  Created by IntelliJ IDEA.
  User: LSY
  Date: 2017/8/17
  Time: 10:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script type="application/x-javascript"> addEventListener("load", function () {
    setTimeout(hideURLbar, 0);
}, false);
function hideURLbar() {
    window.scrollTo(0, 1);
} </script>


<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script src="js/main.js"></script>
<!-- Required-js -->

<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function ($) {
        $(".scroll").click(function (event) {
            event.preventDefault();
            $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
        });
    });
</script>
<!-- start-smoth-scrolling -->

<!-- script for smooth drop down-nav -->
<script>
    $(document).ready(function () {
        $(".dropdown").hover(
            function () {
                $('.dropdown-menu', this).stop(true, true).slideDown("fast");
                $(this).toggleClass('open');
            },
            function () {
                $('.dropdown-menu', this).stop(true, true).slideUp("fast");
                $(this).toggleClass('open');
            }
        );
    });
</script>


<!-- Required-js -->
<!-- main slider-banner -->
<script src="js/skdslider.min.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function () {
        jQuery('#demo1').skdslider({
            'delay': 5000,
            'animationSpeed': 2000,
            'showNextPrev': true,
            'showPlayButton': true,
            'autoSlide': true,
            'animationType': 'fading'
        });

        jQuery('#responsive').change(function () {
            $('#responsive_wrapper').width(jQuery(this).val());
        });

    });
</script>
<!-- scriptfor smooth drop down-nav -->
<script>
    $(document).ready(function () {
        $(".dropdown").hover(
            function () {
                $('.dropdown-menu', this).stop(true, true).slideDown("fast");
                $(this).toggleClass('open');
            },
            function () {
                $('.dropdown-menu', this).stop(true, true).slideUp("fast");
                $(this).toggleClass('open');
            }
        );
    });
</script>
<!-- //script for smooth drop down-nav -->
<!-- //script for smooth drop down-nav -->



<!-- here stars scrolling icon -->
<script type="text/javascript">
    $(document).ready(function () {
        /*
         var defaults = {
         containerID: 'toTop', // fading element id
         containerHoverID: 'toTopHover', // fading element hover id
         scrollSpeed: 1200,
         easingType: 'linear'
         };
         */

        $().UItoTop({easingType: 'easeOutQuart'});

    });
</script>
<!-- //here ends scrolling icon -->

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/bootstrap.js"></script>
<script src="js/jquery.svg3dtagcloud.min.js"></script>
<script>
    var tagList='${tagList}';
    tagList=eval("("+tagList+")");
    $( document ).ready( function() {
        var entries = [
        ];
        for(var i=0;i<tagList.length;i++){
            var item={};
            item.label=tagList[i].name;
            item.url='#';
            item.target='_top';
            entries.push(item);
        }

        var settings = {
            entries: entries,
            width: '100%',
            height: '100%',
            radius: '73%',
            radiusMin: '50%',
            bgDraw: true,
            bgColor: '#FFF',
            opacityOver: 1.00,
            opacityOut: 0.13,
            opacitySpeed: 6,
            fov: 800,
            speed: 0.5,
            fontFamily: 'Oswald, Arial, sans-serif',
            fontSize: '15',
            fontColor: '#000',
            fontWeight: 'normal',//bold
            fontStyle: 'normal',//italic
            fontStretch: 'normal',//wider, narrower, ultra-condensed, extra-condensed, condensed, semi-condensed, semi-expanded, expanded, extra-expanded, ultra-expanded
            fontToUpperCase: false

        };

        //var svg3DTagCloud = new SVG3DTagCloud( document.getElementById( 'holder'  ), settings );
        $( '#tag-cloud' ).svg3DTagCloud( settings );

    } );

</script>