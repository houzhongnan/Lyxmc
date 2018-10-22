
  /*弹框JS内容*/
    jQuery(document).ready(function($){
		//弹窗效果（今日推荐第一个方块）
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
	
			//弹窗效果（今日推荐第2个方块）
		//打开窗口
        $('.cd-popup-trigger2').on('click', function(event){
            event.preventDefault();
            $('.cd-popup2').addClass('is-visible2');
            //$(".dialog-addquxiao").hide()
        });
        //关闭窗口
        $('.cd-popup2').on('click', function(event){
            if( $(event.target).is('.cd-popup-close') || $(event.target).is('.cd-popup2') ) {
                event.preventDefault();
                $(this).removeClass('is-visible2');
            }
        });
        //ESC关闭
        $(document).keyup(function(event){
            if(event.which=='27'){
                $('.cd-popup2').removeClass('is-visible2');
            }
        });

		
    });
	<!--登陆注册的隐藏显示效果-->
		function zhuce() {
			$("#signin").hide();
			$("#signup").show();
		}

		function denlu() {
			$("#signup").hide();
			$("#signin").show();
		}

			function up() {
		$("#signup").show();
		$("#login").hide();
	    $("#logins").show();
		$("#login").show();
		$("#signin").hide();
		}

		function mm() {
			$("#signin").show();
			$("#logins").show();
			$("#login").hide();
			$("#login").show();
	        $("#signup").hide();
		}
		<!--登陆的关闭按钮-->
									
										$(document).ready(function() {
											$('.q-login-close').click(function() {
												$('#logins').hide();
											});

										});
										
										<!--图片轮换-->
										$(document).ready(function(e) {
	var progress = $(".progress"),li_width = $("#b04 li").length;
    var unslider04 = $('#b04').unslider({
		dots: true,
		complete:function(index){//自己添加的，官方没有
			progress.animate({"width":(100/li_width)*(index+1)+"%"});
		}
	}),

	data04 = unslider04.data('unslider');
	$('.unslider-arrow04').click(function() {
        var fn = this.className.split(' ')[1];
        data04[fn]();
    });
});