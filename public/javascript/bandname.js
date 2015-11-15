

// add doc ready..$( document ).ready(function() {

	// $(".mybandnames").click(function(){
	// 	   $("this").next(".bandnamelist").toggle();
	// 	});
		

    // $(".addbandname").click(function(){
    //     $("this").css({
    //       display: "block";
    //     })
    // });
$( document ).ready(function() {


     // $(".fa-heart").mouseenter(function() {
     //      $(this).addClass("icon-5x");
            
     //      });
     //  });

     //  $(".fa-heart").mouseleave(function() {
     //      $(this).removeClass("icon-5x");
     //  });


    $(".add").click(function(){
        // $(".addbandname").css({
        //   display: "block"
        // });

        $(".addbandname").toggle({
          // display: "inline-block"
        });

    });



// jquery to change display of trump...

    // $(".trumpicon").click(function(){
    //     // $(".addbandname").css({
    //     //   display: "block"
    //     // });

    //     $(".trumpcontainer").css({
    //       display: "inline-block"
    //     });
    // });

    $(".trumpicon").mouseenter(function() {
          $(this).css({
            width: 65
          });
      });

      $(".trumpicon").mouseleave(function() {
          $(this).attr("style", "");
      });

      
      $(".trumpicon").click(function() {
          $(".trumpphrase").addClass("selected"); 
          $(".trumpphrase").addClass("selected"); 
          $(".trumpfired").addClass("selected"); 
            
        });


      // $(".trumpicon").click(function() {
      //     if ($(".trumpcontainer").hasClass("open")) {
      //       $(".trumpcontainer").slideUp();
      //       $(".trumpcontainer").removeClass("open");
      //       $(".trumpcontainer").addClass("closed");
      //     } else if ($(".trumpcontainer").hasClass("closed")) {
      //       $(".trumpcontainer").slideDown();
      //       $(".trumpcontainer").removeClass("closed");
      //       $(".trumpcontainer").addClass("open");
      //     }
      //   });


    

});    
		// $(".mybandnames").click(function(){
		//     $("this").css({
		//     	color: "green"
		//     });
		// });

		// $("ul li a").mouseenter(function() {
  //         $(this).css({
  //           textDecoration: "underline"
  //         });
  //       });

  //       $("ul li a").mouseleave(function() {
  //         $(this).attr("style", "");
  //       });

  //       $(".fa-diamond").click(function() {
  //         if ($("ul").hasClass("open")) {
  //           $("ul").slideUp();
  //           $("ul").removeClass("open");
  //           $("ul").addClass("closed");
  //         } else if ($("ul").hasClass("closed")) {
  //           $("ul").slideDown();
  //           $("ul").removeClass("closed");
  //           $("ul").addClass("open");
  //         }
  //       });


