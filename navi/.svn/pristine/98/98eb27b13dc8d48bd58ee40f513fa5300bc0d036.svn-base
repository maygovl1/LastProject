document.addEventListener("DOMContentLoaded", () => {
	//AOS.init();
	

	$("a[data-go-link]").each(function(index, atag) {
		const contextPath = $("body").data("contextPath");
		console.log(contextPath);
		let fullUrl = contextPath + $(atag).data("goLink");
		$(atag).attr("href", fullUrl);
	});

	/*
	window.addEventListener('scroll', function(event) { // 스크롤시
	  	let header = document.querySelector("#header");
		console.log(window.pageYOffset);
		if(window.pageYOffset>0){
			header.classList.add("move");
			console.log("컬러변경");
		}else{
			header.classList.remove("move");
			console.log("컬러삭제");
		}
	  
	});
*/


function commonBtn(eventBtn) {
  let parentSelector = "#" + eventBtn;
  let container = document.querySelector(parentSelector);
  let btn = container.querySelector(".btn");

  btn.addEventListener("click", (event) => {

	    let thisBtn = event.target;
	    console.log("thisBtn", thisBtn.classList);
	    console.log("container", container.id);
		let quickBox = thisBtn.parentNode;
		console.log(quickBox);
	  	if (!quickBox.classList.contains('active')) {
	      quickBox.classList.add('active');
	      quickBox.style.zIndex = 900;
	    } else {
	      quickBox.classList.remove("active");
	     quickBox.removeAttribute('style');
	    }
	});
}

commonBtn("chatBtn");

	
	
})

