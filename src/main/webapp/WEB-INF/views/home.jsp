 <%@include file="/WEB-INF/views/layouts/taglib.jsp" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The Fourteen Course</title>
    <link rel="stylesheet" href="assets/css/home.css">
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
</head>
<body>
     <%@include file="/WEB-INF/views/layouts/header.jsp" %>
    <!--Menu-->
    <div class="gif">
        <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
        <lottie-player src="https://assets10.lottiefiles.com/packages/lf20_hzfmxrr7.json"  background="transparent"  speed="1"  style="width: 500px; height: 500px;"  loop autoplay></lottie-player>
    </div>
    <div><h1> HOT COURSES</h1></div>
    <div class="bottom">
        <div class='containerHome'>
            <span class="iconback"><ion-icon name="arrow-round-back"></ion-icon></span>
            <span class="iconforward"><ion-icon name="arrow-round-forward"></ion-icon></span>
        </div>
    </div>

    <div class="mid_body"> <h1> HOT VIDEOS</h1></div>
    <div class="below">
        <div class='containerHome'>
            <span class="iconback"><ion-icon name="arrow-round-back"></ion-icon></span>            
            <span class="iconforward"><ion-icon name="arrow-round-forward"></ion-icon></span>
                
            </div>
        </div>
    </div>
    <script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>
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

    <script>
        const card = document.querySelectorAll('.card');
        function activeLink(){
            card.forEach((item) =>
            item.classList.remove('active'));
            this.classList.toggle('active');
        }
        card.forEach((item) =>
        item.addEventListener('click',activeLink));
    </script>

    <script>
        const search = document.querySelector('.elem_search');
        const searchbar = document.querySelector('.searchbar');
        function activeLink(){
            searchbar.classList.toggle('active');
        }
        search.addEventListener('click',activeLink);
    </script>

<script>
    const bottom_container = document.querySelector('.containerHome');

    function init1(){
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
            if (i<3){
                div.classList.add('display');
            }
            else if(i>=3) {
                div.classList.add('nonedisplay');
            }

            bottom_container.appendChild(div);
        }
        
    }
    init1();
</script>

<script>
    const bottom_display = document.querySelector('.bottom').querySelectorAll('.display');
    const bottom_nonedisplay = document.querySelector('.bottom').querySelectorAll('.nonedisplay');

    bottom_display[0].style.marginLeft = 100+'px';
    bottom_display[1].style.marginLeft = 550+'px';
    bottom_display[2].style.marginLeft = 1000+'px';


    bottom_nonedisplay.forEach((item) =>
        item.style.marginLeft = 1240+'px');
    bottom_nonedisplay.forEach((item) =>
        item.style.opacity = 0);
    bottom_nonedisplay.forEach((item) =>
        item.style.pointerEvents = 'none');
</script>

<script>
    const backward = document.querySelector('.bottom').querySelector('.iconback');

    function check() {
        const backward1 = document.querySelector('.bottom').querySelector('.iconback');
        let bottom_display = document.querySelector('.bottom').querySelectorAll('.display');
        let bottom_card = document.querySelector('.bottom').querySelectorAll('.card');

        if (bottom_display[2] == bottom_card[bottom_card.length-1]){
            return true;
        }
        else {
            return false;
        }
    }
    function opimaize(){
        let bottom_display = document.querySelector('.bottom').querySelectorAll('.display');
        let bottom_nonedisplay = document.querySelector('.bottom').querySelectorAll('.nonedisplay');

        bottom_nonedisplay.forEach((item) =>
            item.style.opacity = 0
        );
        bottom_nonedisplay.forEach((item) =>
            item.style.pointerEvents = 'none'
        );

        bottom_display[0].style.marginLeft = 100+'px';
        bottom_display[0].style.opacity = 1;
        bottom_display[0].style.pointerEvents = 'auto';

        bottom_display[1].style.marginLeft = 550+'px';
        bottom_display[1].style.opacity = 1;
        bottom_display[1].style.pointerEvents = 'auto';

        bottom_display[2].style.opacity = 1;
        bottom_display[2].style.marginLeft = 1000+'px';
        bottom_display[2].style.pointerEvents = 'auto';
    }

    backward.onclick = function(){
        const bottom_display_1 = document.querySelector('.bottom').querySelectorAll('.display');
        const bottom_nonedisplay_1 = document.querySelector('.bottom').querySelectorAll('.nonedisplay');
        const bottom_card = document.querySelector('.bottom').querySelectorAll('.card');

        if (check() == false){
            var nextcard = bottom_display_1[2].nextElementSibling;
            bottom_display_1[0].classList.replace('display','nonedisplay');
            bottom_display_1[0].style.marginLeft = 40+'px';

            nextcard.classList.replace('nonedisplay','display');
            opimaize(); 
        }  
    };
</script>

    
<script>
    let forward = document.querySelector('.bottom').querySelector('.iconforward');
    function check_forward(){
        const forward1 = document.querySelector('.bottom').querySelector('.iconforward');
        let bottom_display = document.querySelector('.bottom').querySelectorAll('.display');
        let bottom_card = document.querySelector('.bottom').querySelectorAll('.card');

        if (bottom_display[0] == bottom_card[0]){
            return true;
        }
        else 
        {
            return false;
        }
    }

    function opimaize_forward(){
        let bottom_display = document.querySelector('.bottom').querySelectorAll('.display');
        let bottom_nonedisplay = document.querySelector('.bottom').querySelectorAll('.nonedisplay');

        bottom_nonedisplay.forEach((item) =>
            item.style.opacity = 0
        );
        bottom_nonedisplay.forEach((item) =>
            item.style.pointerEvents = 'none'
        );

        bottom_display[0].style.marginLeft = 100+'px';
        bottom_display[0].style.opacity = 1;
        bottom_display[0].style.pointerEvents = 'auto';

        bottom_display[1].style.marginLeft = 550+'px';
        bottom_display[1].style.opacity = 1;
        bottom_display[1].style.pointerEvents = 'auto';

        bottom_display[2].style.opacity = 1;
        bottom_display[2].style.marginLeft = 1000+'px';
        bottom_display[2].style.pointerEvents = 'auto';
    }

    forward.addEventListener('click',function(){
        let bottom_display = document.querySelector('.bottom').querySelectorAll('.display');
        let bottom_nonedisplay = document.querySelector('.bottom').querySelectorAll('.nonedisplay');
        let bottom_card = document.querySelector('.bottom').querySelectorAll('.card');

        if (check_forward() == false){
            bottom_display[2].classList.replace('display','nonedisplay');
            bottom_display[2].style.marginLeft = 1240+'px';

            var precard = bottom_display[0].previousElementSibling;
            precard.classList.replace('nonedisplay','display');
            opimaize_forward();
        }
    
    });
</script>

<script>
    let container = document.querySelectorAll('.containerHome');
    let below_container = container[container.length-1];

function init2(){
    for (let i =0; i<10 ; i++){
        let div = document.createElement('div');

        div.className = 'card';
        div.innerHTML = `
        <div class="box">
                    <div class="content">
                        <h2>`+(i+1)+`</h2>
                        <span class ='iconplay'>
                            <ion-icon name="play-circle"></ion-icon>
                        </span>
                        <p> Lorem ipsum, dolor sit amet consectetur adipisicing elit. Perspiciatis, debitis?
                        </p>
                    </div>
        </div>
        `
        if (i<3){
            div.classList.add('display');
        }
        else if(i>=3) {
            div.classList.add('nonedisplay');
        }

        below_container.appendChild(div);
    }
    
}
init2();


let temp_display = document.querySelector('.below').querySelectorAll('.display');
let temp_nonedisplay = document.querySelector('.below').querySelectorAll('.nonedisplay');

temp_display[0].style.marginLeft = 100+'px';
temp_display[1].style.marginLeft = 550+'px';
temp_display[2].style.marginLeft = 1000+'px';

temp_nonedisplay.forEach((item) =>
    item.style.marginLeft = 1240+'px');
temp_nonedisplay.forEach((item) =>
    item.style.opacity = 0);
temp_nonedisplay.forEach((item) =>
    item.style.pointerEvents = 'none');

let list_iconplay = document.querySelector('.below').querySelectorAll('.iconplay');

list_iconplay.forEach((item) =>
    item.addEventListener('click',function() {
        window.open("https://www.youtube.com/watch?v=Nu9RVPTpDyA",'_blank');
    })
    );

function checkBackward_Below(){
    let below_display = document.querySelector('.below').querySelectorAll('.display');
    let below_card = document.querySelector('.below').querySelectorAll('.card');

    if (below_display[2] == below_card[below_card.length-1]){
        return true;
    }
    else 
    {
        return false;
    }
}

function checkForward_Below() {
    let below_display = document.querySelector('.below').querySelectorAll('.display');
    let below_card = document.querySelector('.below').querySelectorAll('.card');

    if (below_display[0] == below_card[0]){
        return true;
    }
    else 
    {
        return false;
    }
}

function backwardChange() {
    let list_display = document.querySelector('.below').querySelectorAll('.display');
    let list_nonedisplay = document.querySelector('.below').querySelectorAll('.nonedisplay');
    let list_card = document.querySelector('.below').querySelectorAll('.card');

    if (checkBackward_Below() == false){
        list_display[0].classList.replace('display','nonedisplay');
        list_display[0].style.opacity = 0;
        list_display[0].style.pointerEvents = 'none';
        list_display[0].style.marginLeft = 40+'px';

        list_display[1].style.marginLeft = 100+'px';
        list_display[2].style.marginLeft = 550+'px';
        var nextCard = list_display[2].nextElementSibling;

        nextCard.classList.replace('nonedisplay','display');
        nextCard.style.opacity = 1;
        nextCard.style.marginLeft = 1000+'px';
        nextCard.style.pointerEvents = 'auto';
    }
}

function forwardChange(){
    let list_display = document.querySelector('.below').querySelectorAll('.display');
    let list_nonedisplay = document.querySelector('.below').querySelectorAll('.nonedisplay');
    let list_card = document.querySelector('.below').querySelectorAll('.card');

    if (checkForward_Below() == false){
        list_display[2].classList.replace('display','nonedisplay');
        list_display[2].style.opacity = 0;
        list_display[2].style.pointerEvents = 'none';
        list_display[2].style.marginLeft = 1240+'px';

        list_display[0].style.marginLeft = 550+'px';
        list_display[1].style.marginLeft = 1000+'px';

        var previousCard = list_display[0].previousElementSibling;

        previousCard.classList.replace('nonedisplay','display');
        previousCard.style.opacity = 1;
        previousCard.style.marginLeft = 100+'px';
        previousCard.style.pointerEvents = 'auto';
    }
}
let backward_icon = document.querySelector('.below').querySelector('.iconback');
let forward_icon = document.querySelector('.below').querySelector('.iconforward');

backward_icon.addEventListener('click',backwardChange);
forward_icon.addEventListener('click',forwardChange);


</script>
</body>
</html>
