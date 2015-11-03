$(window).load(function() {
	// Slideshow
	setInterval(function(){
		$('.bg-video :first-child').fadeOut(1000).next('div').fadeIn(1000).end().appendTo('.bg-video');}, 
	4000);
});


function initialize()
{
    var _isMobile = false;

    if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) )
    {
        _isMobile = true;
    }

    // if( $('body').hasClass('page-backstage') && window.innerWidth > 719)
    // {
    //     var currentImageCarouselIndex = 1;
    //     var imageCarouselMaxCount = $('.image-carousel img').length;
    //
    //     setInterval(function()
    //     {
    //         $('.image-carousel img').removeClass('opaque');
    //
    //         var newImage = currentImageCarouselIndex;
    //         $('.image-carousel img').eq(newImage).addClass('opaque');
    //         currentImageCarouselIndex++;
    //
    //         if( currentImageCarouselIndex > imageCarouselMaxCount-1 ) currentImageCarouselIndex = 0;
    //     },3000);
    // }

    // if( $('body').hasClass('page-stage') && window.innerWidth > 719)
    // {
    //     var videoFrameIsOpen = false;
    //
    //     $('.video-thumb a').click(function( event )
    //     {
    //         event.preventDefault();
    //
    //         $('#stagethumbs .video-thumb').removeClass('active');
    //         $(this).parents('.video-thumb').addClass('active');
    //
    //         //$('#video-player').attr('src',$(this).data('src'));
    //         var id = $(this).attr('href').split("https://vimeo.com/").join('');
    //         $('#video-player').attr('src','//player.vimeo.com/video/'+id);
    //
    //         if( !videoFrameIsOpen )
    //         {
    //             videoFrameIsOpen = true;
    //             $('#videoFrame').addClass('show');
    //         }
    //
    //     });
    // }

    $('a.mail_info').click(function(e) {
        e.preventDefault();
        window.location.href = "mailto:hello@bunnylakefilms.com";
    });

    $('a.mail_office').click(function(e) {
        e.preventDefault();
        window.location.href = "mailto:office@bunnylakefilms.com";
    });

    $('a.mail_rachel').click(function(e) {
        e.preventDefault();
        window.location.href = "mailto:rachel@bunnylakefilms.com";
    });
	
    $('a.mail_aviva').click(function(e) {
        e.preventDefault();
        window.location.href = "mailto:aviva@bunnylakefilms.com";
    });
	
    $('a.mail_celine').click(function(e) {
        e.preventDefault();
        window.location.href = "mailto:celine@bunnylakefilms.com";
    });
	
    $('a.mail_vanessa').click(function(e) {
        e.preventDefault();
        window.location.href = "mailto:vanessa@bunnylakefilms.com";
    });



    function isMobile()
    {
        return window.innerWidth <= 719;
    }


    function resize()
    {
        if ( isMobile() )
        {
            resizeMobile();
        } else
        {
            var ww = window.innerWidth;
            var wh = window.innerHeight;
            var wasp = ww/wh;

            var homeVid = $("#home .videowrap video");
            var bgasp = 1280/720;
            var bgw = ww;
            var bgh = ww/bgasp;
            var bgx = 0;
            if (wasp < bgasp)
            {
                bgh = wh;
                bgw = bgh*bgasp;
                bgx = -(bgw - ww)/2;
            }

            homeVid.css({
                width: bgw,
                height: bgh,
                visibility:'visible',
                opacity: 1
            });

        }
    }

    function resizeMobile()
    {
        // ensure scrolling is enabled
        $("html").css('overflow-y', 'scroll');
    }
    //
    resize();
    $(window).resize(resize);
};
$(document).ready(initialize);
$(document).on('page:load', initialize);
