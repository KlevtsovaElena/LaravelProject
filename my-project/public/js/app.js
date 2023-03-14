// import './bootstrap';

const templateItemNews = document.getElementById('tmpl-news').innerHTML;
const news = document.getElementById('news');
const templateNewsOne = document.getElementById('tmpl-news-one').innerHTML;
const templateCategory = document.getElementById('tmpl-category').innerHTML;




//создаём переменную-массив для хранения лайков 
let arrayLike = window.localStorage.getItem('news_likes');

//если нет сохранённого, то создаём новые переменные. 
if (arrayLike == null){
    arrayLike = new Array();
}else {arrayLike = JSON.parse(arrayLike);}


// функция для отправки запросов GET
function sendRequestGET(url){
    let requestObj = new XMLHttpRequest();
    requestObj.open('GET', url, false);
    requestObj.send();
    return requestObj.responseText;
}


//функция для отправки запросов POST
function sendRequestPOST(url, params){
    let requestObj = new XMLHttpRequest();
    requestObj.open('POST', url, false);
    requestObj.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    requestObj.send(params);
    return requestObj.responseText;
}

//функция сохранения в ls
function save(keyData, saveData){
    //кодируем data в json и сохраняем в localStorage
    let dataJson = JSON.stringify(saveData);

    //сохраняем в localStorage
    localStorage.setItem(keyData, dataJson);
}

//функция очищения страницы
function clearPage(){
    news.innerHTML = '';
}

renderAllNews();

function renderAllNews(){
    
    clearPage();

   //получаем данные каталога
   json = sendRequestGET('http://localhost:8000/api/news/');
   //раскодируем данные
   let data = JSON.parse(json);

   //собираем новости и выводим их на страницу
   for (let i = 0; i < data.length; i++){  
        let category = templateCategory.replace('${category}', data[i]['category'])
                                        .replace('${category}', data[i]['category']);
        news.innerHTML += templateItemNews  .replace('${id}', data[i]['id'])
                                            .replace('${id}', data[i]['id'])
                                            .replace('${category}', category)
                                            .replace('${title}', data[i]['title'])
                                            .replace('${photo}', data[i]['photo'])
                                            .replace('${date}', data[i]['date'])
                                            .replace('${view}', data[i]['view'])
                                            .replace('${like}', data[i]['like']);
        if (arrayLike.indexOf(String(data[i]['id'])) >= 0){
            let like = news.querySelectorAll('.like');
            like[like.length-1].classList.add('like-on');
            console.log(data[i]['id'] + " likes");   
        }  
   }

}

function renderNewsCategory(category){
    
    clearPage();

    //получаем данные каталога
    json = sendRequestGET("http://localhost:8000/api/news/condition/?category='" + category + "'");
    //раскодируем данные
    let data = JSON.parse(json);
  
    //собираем новости и выводим их на страницу
    for (let i = 0; i < data.length; i++){  
        news.innerHTML += templateItemNews  .replace('${id}', data[i]['id'])
                                            .replace('${id}', data[i]['id'])
                                            .replace('${category}', '')
                                            .replace('${title}', data[i]['title'])
                                            .replace('${photo}', data[i]['photo'])
                                            .replace('${date}', data[i]['date'])
                                            .replace('${view}', data[i]['view'])
                                            .replace('${like}', data[i]['like']);
        if (arrayLike.indexOf(String(data[i]['id'])) >= 0){
            let like = news.querySelectorAll('.like');
            like[like.length-1].classList.add('like-on');
            console.log(data[i]['id'] + " likes");   
        }  
    }
 }


function renderNews(id) {

    clearPage();

    addView(id);

    //получаем данные каталога
    json = sendRequestGET("http://localhost:8000/api/news/condition/?id=" + id);
    //раскодируем данные
    let data = JSON.parse(json);

    news.innerHTML += templateNewsOne   .replace('${id}', data[0]['id'])
                                        .replace('${title}', data[0]['title'])
                                        .replace('${photo}', data[0]['photo'])
                                        .replace('${description}', data[0]['description'])
                                        .replace('${date}', data[0]['date'])
                                        .replace('${view}', data[0]['view'])
                                        .replace('${like}', data[0]['like']);

    if (arrayLike.indexOf(String(data[0]['id'])) >= 0){
        let like = news.querySelectorAll('.like');
        like[like.length-1].classList.add('like-on');
        console.log(data[0]['id'] + " likes");   
    }  
}

function addView(id) {
    sendRequestPOST('http://localhost:8000/api/news/update/', 'view=' + id);
}

function addLikes(id) {
    // sendRequestPOST('http://localhost:8000/api/news/update/', 'like=' + id);


    let like = event.target.closest('.like').querySelector('.test');
    // let json = sendRequestGET('http://localhost:8000/api/news/condition/?id=' + id);
    // let data = JSON.parse(json);
    if (arrayLike.indexOf(String(id)) >= 0){
        arrayLike.splice(arrayLike.indexOf(String(id)), 1);
        console.log("удалили " + id);
        save('likes', arrayLike);
        sendRequestPOST('http://localhost:8000/api/news/update/', 'dislike=' + id);
        

    } else {
        arrayLike.push(String(id));
        console.log("добавили " + id);
        save('news_likes', arrayLike);
        sendRequestPOST('http://localhost:8000/api/news/update/', 'like=' + id);
    } 


    let json = sendRequestGET('http://localhost:8000/api/news/condition/?id=' + id);
    let data = JSON.parse(json);
    event.target.closest('.like').classList.toggle('like-on');



    // like.style.fontWeight = "bold";
    // like.style.color = "black";  
    // event.target.style.opacity = 1; 
    like.innerText = data[0]['like'];
    
 }