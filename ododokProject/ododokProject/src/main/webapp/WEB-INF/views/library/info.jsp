<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>📚 What is Ododok 📚</title>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
</head>
<style>

	
		body	{
	background-color: MistyRose;	
	}
	
	#search1	{
	width : 600px;
	left: 30%;
	position: relative;
	}
	
	#category-check	{
	text-align : center;
	position: relative;
	}
	
	#header	{
	background-color: white;
	padding : 10px;
	position: absolute;
	width:100%;
	z-index:9999;
	}
	
	#body{
	padding-top: 150px;
	position: absolute;
	left: 10%;
	right: 10%;
	}
	
	#main	{
	text-align:center;
	font-family: KyoboHandwriting2020A;
	font-size : 18px;
	}
	
	@font-face {
    font-family: 'yg-jalnan';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.2/JalnanOTF00.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

	@font-face {
    font-family: 'KOTRAHOPE';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2110@1.0/KOTRAHOPE.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}

	@font-face {
    font-family: 'SF_HambakSnow';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2106@1.1/SF_HambakSnow.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

	@font-face {
    font-family: 'KyoboHandwriting2020A';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2112@1.0/KyoboHandwriting2020A.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
    
    
    #info	{
    /* text-align:center; */
    width: 700px;
    position: relative;
	left: 20%;
	left: 20%;
    }
    
    
    #logo	{
     font-family: 'KOTRAHOPE';
     color:pink;
    }
    
}

	#paging	{
	position: relative;
	text-align: center;
	}
	
	
</style>

<style>
        #autoMaker{
            padding : 3px;
            position: absolute; width: 200px;
            height: auto; background: white;
            margin-top: 3px; cursor:pointer;
        }
        #autoMaker > div{
            border : 1px solid #e6e6e6;
            margin-top : 3px;
        }
        #autoMaker > div:hover{
            background : #e6d1ff;
        }		
    </style>
    
<body>

		<section id = header>
					<div class="container">
						<div class="row">
									<div class="col-12">
				
												<!-- Logo -->
												<div id=logo>
													<h1><a href="/ododok/main">Ododok</a></h1>
												</div>
												
								<!-- Nav -->				
								<nav class="navbar navbar-warning">
								 <a href="/ododok/library/info">오도독</a>
								 <a href="/ododok/library/libraryAll">후루룩 우동소식</a>
								 <a href="/ododok/library/eventAll">꺄르르 행사</a>
													</nav>
				
									</div>
						</div>
					</div>	
				</section>
		
		
		
		<section id = body>			
			
			
			
							
				
	<!-- 1230 자동완성기능 추가 -->
		자동완성 테스트	
				<div class="autoSearchTest mb-3">
					<input type="text" id='search_area'  >
    				<div id='autoMaker'></div>
				</div>
	<!-- 1230 자동완성기능 추가 -->	 
			
		</section>

</body>

</html>

<script>

var ref = [
    {key:1, name:'데이터1'},
    {key:2, name:'데이터2'},
    {key:3, name:'자바스크립트'},
    {key:4, name:'Json'},
];

var isComplete = false;  //autoMaker 자식이 선택 되었는지 여부
$('#search_area').keyup(function(){
    var txt = $(this).val();
    if(txt != ''){  //빈줄이 들어오면
        $('#autoMaker').children().remove();

        ref.forEach(function(arg){
            if(arg.name.indexOf(txt) > -1 ){
                $('#autoMaker').append(
                    $('<div>').text(arg.name).attr({'key':arg.key})
                );		
            }
        });
        $('#autoMaker').children().each(function(){
            $(this).click(function(){
                $('#search_area').val($(this).text());
                $('#insert_target').val("key : "+$(this).attr('key')+ ", data : " + $(this).text());
                $('#autoMaker').children().remove();	
                isComplete = true;
            });
        });			
    } else {
        $('#autoMaker').children().remove();
    }  
});
$('#search_area').keydown(function(event){
    if(isComplete) {  //autoMaker 자식이 선택 되었으면 초기화
        $('#insert_target').val('')	
    }
})

</script>