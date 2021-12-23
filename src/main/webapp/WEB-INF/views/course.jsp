 <%@include file="/WEB-INF/views/layouts/taglib.jsp" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The Fourteen Course</title>
    <link rel="stylesheet" href= '<c:url value = "/assets/css/course.css"></c:url>'>
</head>
<body>
    
    <%@include file="/WEB-INF/views/layouts/header.jsp" %>
    
    <!--Menu-->
    <div class="containerCourse"></div>
    <script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>
    <script>
        const search = document.querySelector('.elem_search');
        const searchbar = document.querySelector('.searchbar');
        function activeLink(){
            searchbar.classList.toggle('active');
        }
        search.addEventListener('click',activeLink);
    </script>
    <script>
        let container = document.querySelector('.containerCourse');
        function init2(){
            for (let i =0; i<10 ; i++){
                let div = document.createElement('div');

                div.className = 'card';
                div.innerHTML = `
                <div class="box">
                        <div class="content">
                            <h2>`+(i+1)+`</h2>
                            <h3>Card Three</h3>
                            <p> Lorem ipsum, dolor sit amet consectetur adipisicing elit. Perspiciatis, debitis?
                            </p>
                            <a href="infor.html">Read More</a>
                        </div>
                </div>
                `
                container.appendChild(div);
            }
            
        }
    init2();
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