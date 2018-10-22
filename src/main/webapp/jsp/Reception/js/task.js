/**
 * lcvc
 */
$(document).ready(function() {
	$("#nav a:eq("+0+")").css({ "border-bottom": "3px solid firebrick", "font-size": "18px", "color": "firebrick" });
	$("#nav a").click(function(){
		var page=$(this).index();
		for(var i=0;i<7;i++){
	     if(page==(i-1)){
	     	$("#nav a:eq("+page+")").css({ "border-bottom": "3px solid firebrick", "font-size": "18px", "color": "firebrick" });
             $("#tab"+(i)+"").show(200);
	     }else{
     	   $("#nav a:eq("+(i-1)+")").css({ "color": "#666", "font-size": "18px", "border-bottom": "0px " });
     	   $("#tab"+(i)+"").hide();
         }
		}
	});
	
});

//热门推荐
//打开窗口
        $('.cd-popup-trigger1').on('click', function(event){
            event.preventDefault();
            $('.cd-popup1').addClass('is-visible1');
            //$(".dialog-addquxiao").hide()
        });
        //关闭窗口
        $('.cd-popup1').on('click', function(event){
            if( $(event.target).is('.cd-popup-close') || $(event.target).is('.cd-popup1') ) {
                event.preventDefault();
                $(this).removeClass('is-visible1');
            }
        });
        //ESC关闭
        $(document).keyup(function(event){
            if(event.which=='27'){
                $('.cd-popup1').removeClass('is-visible1');
            }
        });
		


//主图餐厅
$(document).ready(function() {
        //打开窗口
        $('.cd-popup-trigger0').on('click', function(event){
            event.preventDefault();
            $('.cd-popup').addClass('is-visible');
            //$(".dialog-addquxiao").hide()
        });
        //关闭窗口
        $('.cd-popup').on('click', function(event){
            if( $(event.target).is('.cd-popup-close') || $(event.target).is('.cd-popup') ) {
                event.preventDefault();
                $(this).removeClass('is-visible');
            }
        });
        //ESC关闭
        $(document).keyup(function(event){
            if(event.which=='27'){
                $('.cd-popup').removeClass('is-visible');
            }
        });
		});