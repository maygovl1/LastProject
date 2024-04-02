$(document).ready(function(){
		const cPath = document.body.dataset.contextPath;
		if (window.location.href.includes("ing=end")) {
		    $(nav2).addClass("active");
			$(nav1).removeClass("active");
		}else{
			$(nav1).addClass("active");
			$(nav2).removeClass("active");
		}
		let dropboxValue = $().text();
		
		$(".pro-2").on("click",function(e){
			let clickedElementId = e.target.id;
			let ing=$(ingForm).find('input[name="ing"]')
			if(clickedElementId=="nav1"){
				ing.val("ing")
			}else{
				ing.val("end")
			}
			$(ingForm).submit()
		})
		
		$(".pro-ac").each(function() {
	        let $menu = $(this);
    		let url = $menu.data("url");
	        let value = $menu.data("val");
	        let arr = url.split("/");
	        let realUrl=arr[3];
	        if (window.location.href.includes(realUrl)) {
        		$menu.addClass("active")
	        } else {
				$menu.removeClass("active");
	            // 해당하는 URL이 아닌 경우에 대한 처리
	        }
		});
		$(".pro-ac").each(function() {
			$(this).on("click",(e)=>{
				let proId=$("#nav-tab").data("pro");
				let $menu = $(e.target);
				let url = $menu.data("url");
		        let value = $menu.data("val");
		        let arr = url.split("/");
		        menuForm.action=url.replace("{proId}",proId);
				$menu.removeClass("active");
				$(menuForm).submit();
			})
		})
		
		$(menuForm).on("submit",function(e){
//			e.preventDefault();
//			let url=menuForm.action;
//			if(url.includes("manage/P")){
//				return false;
//			}
			
			
		})
});