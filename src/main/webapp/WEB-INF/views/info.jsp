 <%@include file="/WEB-INF/views/layouts/taglib.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href= '<c:url value = "/assets/css/infor.css"></c:url>'">
</head>
<body>
	<!--Menu-->
	<div class="top">
		<div class="menu">
			<ul>
				<li class="list active"><a href="home.html"> <span
						class="icon home"><ion-icon name="home"></ion-icon></span> <span
						class="text">Home</span>
				</a></li>
				<li class="list"><a href="course.html"> <span
						class="icon book"><ion-icon name="book"></ion-icon></span> <span
						class="text">Course</span>
				</a></li>
				<li class="list"><a href="video.html"> <span
						class="icon video"><ion-icon name="videocam"></ion-icon></span> <span
						class="text">Video</span>
				</a></li>
				<li class="list"><a href="#"> <span class="icon cart"><ion-icon
								name="cart"></ion-icon></span> <span class="text">Cart</span>
				</a></li>
				<li class="list"><a href="login.html"> <span class="icon"><ion-icon
								name="person"></ion-icon></span> <span class="text">Profile</span>
				</a></li>
				<li class="list elem_search"><a href="#"> <span
						class="icon"><ion-icon name="search"></ion-icon>
							</ion-icon></span> <span class="text">Search</span>
				</a></li>
				<div class="indicator"></div>
			</ul>

		</div>
	</div>
	<!--Menu-->
	<div class="information">
		<div class="content">
			<div>
				<h1>Subject</h1>
				<h2>Teacher</h2>
				<p class="cntnt">Lorem, ipsum dolor sit amet. Cupiditate, nihil
					saepe reprehenderit neque harum ipsam possimus rerum eaque
					consequuntur maxime. A, accusamus debitis, laudantium voluptatem
					autem rem magni sequi ut dicta commodi harum praesentium pariatur
					at magnam blanditiis repellat inventore obcaecati perferendis
					voluptatum aspernatur sint. Expedita cupiditate placeat culpa
					molestiae officia porro dolore. Lorem ipsum dolor sit amet
					consectetur adipisicing elit. Accusamus numquam cupiditate maiores?
					Repellat exercitationem quo mollitia laboriosam saepe, dolorem
					omnis neque unde maiores veniam voluptatibus ut. Consequuntur sunt
					enim suscipit!</p>
			</div>
			<div class="rate">
				<ul>
					<li class="star"><a href="#"><span><ion-icon
									name="star-outline"></ion-icon></span></a></li>
					<li class="star"><a href="#"><span><ion-icon
									name="star-outline"></ion-icon></span></a></li>
					<li class="star"><a href="#"><span><ion-icon
									name="star-outline"></ion-icon></span></a></li>
					<li class="star"><a href="#"><span><ion-icon
									name="star-outline"></ion-icon></span></a></li>
					<li class="star"><a href="#"><span><ion-icon
									name="star-outline"></ion-icon></span></a></li>
				</ul>
			</div>
			<p class="pr">Fee: $0.00</p>
			<ul>
				<li class="list"><a href="#"> <span class="icon"><ion-icon
								name="cart"></ion-icon></span> <span class="text">Add to Cart</span>
				</a></li>
				<li class="list"><a href="#"> <span class="icon"><ion-icon
								name="cash"></ion-icon></span> <span class="text">Pay</span>
				</a></li>
			</ul>
		</div>
	</div>
	<div class="comment">
		<div class="commented">
			<ul class="ulcommented">

			</ul>
		</div>
		<div class="commentbox">
			<div class="commentbox_container">
				<input type="text" class="input"> <input type="button"
					class="btn" value="Send">
			</div>
		</div>
	</div>
	<script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>

	<script>
        const commented = document.querySelector('.ulcommented');
        const btn = document.querySelector('.btn');
        const input = document.querySelector('.input');

        for (let i =0;i<10;i++){
            let temp = document.createElement('li');
            temp.className = 'usercommentli';
            temp.innerHTML = `
            <span class="icon"><ion-icon name="contact"></ion-icon></span>
            <p class="userword">Comment `+ (i+1) + `</p>
            `;
            commented.appendChild(temp);
        }
        btn.addEventListener('click',function() {
            let inputVal =  input.value;
            if (inputVal.length != 0){
            var list = document.createElement('li');
            
            list.className = 'usercommentli';
            list.innerHTML = 
            `
                <span class="icon"><ion-icon name="contact"></ion-icon></span>
                <p class="userword">` + inputVal +` </p>
            
            `
            commented.appendChild(list);
            input.value = " ";
        }
        })
    </script>

	<script>
    const list = document.querySelectorAll('.list');
    function activeLink(){
        list.forEach((item) =>
        item.classList.remove('active'));
        this.classList.add('active');
    }
    list.forEach((item) =>
    item.addEventListener('mouseover',activeLink));
</script>
</body>
</html>