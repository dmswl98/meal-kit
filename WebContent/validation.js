function CheckAddReview() {
	var title = document.getElementById("title");
	var userName = document.getElementById("userName");
	var content = document.getElementById("content");
	
	if(title.value.length < 3) {
		alert("[제목] 최소 3자까지 입력하세요.");
		title.select();
		title.focus();
		return false;
	}
	
	if(userName.value.length < 3) {
		alert("[사용자 이름] 최소 3자까지 입력하세요.");
		userName.select();
		userName.focus();
		return false;
	}
	
	var nameArr = userName.value.split("");
	for(var x of nameArr) {
		if(!isNaN(x)) {
			alert("[사용자 이름] 숫자는 입력하지 마세요.");
			userName.select();
			userName.focus();
			return false;
		}	
	}
	
	if(content.value.length < 5) {
		alert("[내용] 최소 5자까지 입력하세요.");
		content.select();
		content.focus();
		return false;
	}
	
	document.newReview.submit();
}

function CheckAddproduct() {
   		var productId = document.getElementById("productId");
   		var productName = document.getElementById("productName");
   		
   		if(productId.value === null) {
   			alert("[상품 아이디] 상품 아이디를 작성해주세요.");
   			productId.select();
   			productId.focus();
   			return false;
   		}
   		
   		if(productId.value.slice(0,1) !== "P") {
   			alert("[상품 아이디] 대문자 P로 시작하는 상품 아이디를 입력하세요.");
   			productId.select();
   			productId.focus();
   			return false;
   		}
   		
   		if(productName.value === null) {
   			alert("[상품명] 상품명을 작성해주세요.");
   			productName.select();
   			productName.focus();
   			return false;
   		}
   		
   		document.newProduct.submit();
   	}

