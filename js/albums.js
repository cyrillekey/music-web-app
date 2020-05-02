// JavaScript Document
    audioPlayer();
        function audioPlayer(){
            var currentSong=0;
            $("#audioPlayer")[0].src=$(".album-tracks #playlist li a" )[0]; 
            
            $("#playlist li a").click(function(e){
                e.preventDefault();
                $("#audioPlayer")[0].src=this;
                $("#audioPlayer")[0].play();
                $("#playlist li").removeClass("currentsong");
                currentSong=$(this).parent().index();
                $(this).parent().addClass("currentsong");
            });
            
            $("#audioPlayer")[0].addEventListener("ended",function(){
                currentSong++;
                if(currentSong==$("#playlist li a").length)
                    currentSong=0;
                $("#playlist li").removeClass("currentsong");
                $("#playlist li:eq("+currentSong+")").addClass("currentsong");
                $("#audioPlayer")[0].src=$("#playlist li a")[currentSong].href;
                $("#audioPlayer")[0].play();
            });
        }

        function audioPlay(){
            $("#audioPlayer")[0].src=$(".album-tracks #playlist li a" )[0]; 
               $("#audioPlayer")[0].play(); 
               
        }