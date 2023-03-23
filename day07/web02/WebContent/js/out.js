function 로그인() {
	id2 = 'root';
	id = prompt('아이디 입력')
	if (id == id2) { //==
		alert('로그인 성공')
	} else {
		alert('로그인 실패')
	}
}

function 비교(){
	n1 = prompt('비교할 첫번째 숫자를 입력하세요.')
	n2 = prompt('비교할 두번째 숫자를 입력하세요.')
	if (n1 == n2){
		alert('동일')
	}else{
		alert('다름')
	}
		
}

function 기분() {
	feeling1 = prompt('친구의 기분이 어떤가요?(굿,별로,나빠 중)')
	feeling2 = prompt('나의 기분이 어떤가요?(굿,별로,나빠 중)')
	if(feeling1 == feeling2){
		alert('동일') 
	}else{
		alert('다름')
	}
}