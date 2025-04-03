 // global namespace United Codes
 var uc = uc || {};


 // namespace FlipCard
 uc.FlipCard = {
     version:"25.1.0.0", 
     opt: {
        debug: {
            enabled:true,
            prefix:"UCFC > ",
            location:"namespace",            
        }
    },    
    _isMobile:function() {
        const isMobileUA = /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent);
        const isMobileWidth = $(window).width() < 768;
        return isMobileUA || isMobileWidth;
    },
    _debugMsg(loc, msg, param1, param2, param3, param4) {
        if (this.opt.debug.enabled)
            apex.debug.trace(this.opt.debug.prefix + loc+ " > " + msg, param1, param2, param3, param4); //trace
    },
    _debugErr(loc, msg, param1, param2, param3, param4) {
        if (this.opt.debug.enabled)
            apex.debug.error(this.opt.debug.prefix + loc+ " > " + msg, param1, param2, param3, param4);
    },  
    _setHandle:function(className) {
        $("."+className+" .a-CardView").off("click");
        $("."+className+" .a-CardView").on("click", function(event){
            if ($(event.target).closest('a').length === 0) {
                $(this).toggleClass("flipped-card");
            }
        });        
    },
    setListener:function() {
        uc.FlipCard._debugMsg(uc.FlipCard.opt.debug.location, "setListener executed");
        if (uc.FlipCard._isMobile()) {
            uc.FlipCard._setHandle("t-click-mobile-card");
        }
        else {
            uc.FlipCard._setHandle("t-click-card");
        }
        
    },
    setFlipOn(pBoolean = true, pElement) {
        uc.FlipCard._debugMsg(uc.FlipCard.opt.debug.location, "setFlipOn executed", pBoolean, pElement);
        if (pBoolean) {
            $((pElement?pElement:"")+" .t-click-card .a-CardView, "+(pElement?pElement:"")+" .t-click-mobile-card .a-CardView").addClass("flipped-card");
        }
        else {
            $((pElement?pElement+" ":"")+".t-click-card .a-CardView, "+(pElement?pElement+" ":"")+".t-click-mobile-card .a-CardView").removeClass("flipped-card");
        }
    },
    init:function() {
        apex.jQuery( apex.gPageContext$ ).on( "apexreadyend", function( e ) {
            uc.FlipCard._debugMsg(uc.FlipCard.opt.debug.location, "init executed");
            $( window ).on( "tablemodelviewpagechange", function( event, data ) {
                uc.FlipCard.setListener();
            } );
            uc.FlipCard.setListener();
        } );
    }
 };

uc.FlipCard.init();

