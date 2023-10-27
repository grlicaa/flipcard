 // global namespace United Codes
 var uc = uc || {};

 // namespace FlipCard
 uc.FlipCard = {
     version:"23.1.0.0", 
     opt: {
        debug: {
            enabled:true,
            prefix:"UCFC > ",
            location:"namespace"
        }
    },    
    _debugMsg(loc, msg, param1, param2, param3, param4) {
        if (this.opt.debug.enabled)
            apex.debug.trace(this.opt.debug.prefix + loc+ " > " + msg, param1, param2, param3, param4); //trace
    },
    _debugErr(loc, msg, param1, param2, param3, param4) {
        if (this.opt.debug.enabled)
            apex.debug.error(this.opt.debug.prefix + loc+ " > " + msg, param1, param2, param3, param4);
    },  
    setListener:function() {
        uc.FlipCard._debugMsg(uc.FlipCard.opt.debug.location, "setListener executed");
        $(".t-click-card .a-CardView").off("click");
        $(".t-click-card .a-CardView").on("click", function(){
            $(this).toggleClass("flipped-card");
        });
    },
    setFlipOn(pBoolean = true, pElement) {
        uc.FlipCard._debugMsg(uc.FlipCard.opt.debug.location, "setFlipOn executed", pBoolean, pElement);
        if (pBoolean) {
            $((pElement?pElement:"")+" .t-click-card .a-CardView").addClass("flipped-card");
        }
        else {
            $((pElement?pElement+" ":"")+".t-click-card .a-CardView").removeClass("flipped-card");
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

