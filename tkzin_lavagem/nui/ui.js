// /* SCRIPT EXCLUSIVO PORTAL DEVS | FEITO POR Tkzin#0001
//   DISCORD DA LOJA https://discord.gg/p77xUVwGEZ
// */

// /* SCRIPT EXCLUSIVO PORTAL DEVS | FEITO POR Tkzin#0001
//   DISCORD DA LOJA https://discord.gg/p77xUVwGEZ
// */

// /* SCRIPT EXCLUSIVO PORTAL DEVS | FEITO POR Tkzin#0001
//   DISCORD DA LOJA https://discord.gg/p77xUVwGEZ
// */

console.log("MELHOR SCRIPT DE LAVAGEM #PORTALDEVS, FEITO POR Tkzin#001")

$(document).ready(() => {

  $(function(){
    init();
      $("#actionmenu").hide()
        window.addEventListener("message", function(event){
          if (event.data.teste != undefined) {
            let status = event.data.teste
              if (status) {
                $("#actionmenu").show()
              } else {
                 $("#actionmenu").hide()
              }
               if (status.hide){
                  sendData("fechar","fechar")
                }
            }
        })
  })

  function init() {
    $(".btn-fab").each(function(i,obj){
  
      if ($(this).attr("data-action")){
        $(this).click(function(){
          var data = $(this).data("action"); 
          sendData("ButtonClick",data); 
        })
      }
      if ($(this).attr("data-sub")){
        var menu = $(this).data("sub");
        var element = $("#"+menu);
  
        $(this).click(function(){
          element.show();
          console.log('o body ficou oculto');
          $("body").hide();
          $(this).parent().hide();
        })
  
        var backBtn = $('<button/>',{text:'Voltar'});
  
        backBtn.click(function(){
          console.log('o body ficou oculto');
          element.hide();
          $("#"+element.data("parent")).show();
        });
  
        element.append(backBtn);
      }
    });
  }
  
  document.onkeyup = function(data){
    if (data.which == 27){
        console.log("vc clicou esc")
        if ($(".b").fadeIn()){
            sendData("fechar","fechar")
            $(".b").hide()
        }
    }
  };
  


// ----------------------------------------------------------------------------------------------------
// -- NÃO MODIFICAR PARTE A BAIXO
// ----------------------------------------------------------------------------------------------------
$("#100k").click(() => {
    document.getElementById("img-100k-confirm").src="https://i.imgur.com/g7GzGKq.png"

    $(".btn-fab-100k").show()
    $(".btn-fab-1kk").hide()



        $("#100k").css("border-bottom","0vw solid transparent")
        $(".div-box").css("top","22.2vw").css("transition","all .5s ease-in").css("transform","translateY(160%)").fadeOut(1200)
        $(".container").css("transition","all .5s ease").fadeOut(1200)
        setTimeout(() => {
          $(".naver").fadeIn(900).css("transform","translateY(0%)").css("display","flex")
        }, 1200);
        $(".btn-cancelar").click(() => {
          $(".naver").css("transform","translateY(180%)").delay(500).hide()
          $(".div-box").show()
          $(".container").css("position","relative").show()
        })

        setTimeout(() => {
          $("#100k").css("border-bottom","0.3vw solid #0084ff")
          $(".prc-100k").fadeOut(100).delay(500).fadeIn(700)
          setTimeout(() => {
            $("#100k").css("border-bottom","0.2vw solid #0084ff")
          }, 800);
        }, 2000);
})

  $("#1kk").click(() => {
   document.getElementById("img-100k-confirm").src="https://i.imgur.com/g7GzGKq.png"
   
   $(".btn-fab-100k").hide()
   $(".btn-fab-1kk").show()

   $(".img-100k-confirm").css("width","3vw")
    $("#1kk").css("border-bottom","0vw solid transparent")
    $(".div-box").css("top","22.2vw").css("transition","all .5s ease-in").css("transform","translateY(160%)").fadeOut(1200)
    $(".container").css("transition","all .3s ease").fadeOut(1200)
    setTimeout(() => {
      $(".naver").fadeIn(900).css("transform","translateY(0%)").css("display","flex")
    }, 1200);
    $(".btn-cancelar").click(() => {
      $(".naver").css("transform","translateY(180%)").delay(500).hide()
      $(".div-box").show()
      $(".container").css("position","relative").show()
    })

    setTimeout(() => {
      $("#1kk").css("border-bottom","0.3vw solid #0084ff")
      $(".prc-1kk").fadeOut(100).delay(500).fadeIn(700)
      setTimeout(() => {
        $("#1kk").css("border-bottom","0.2vw solid 0084ff")
      }, 800);
    }, 2000);
})

$(".fechar").click(() => {$(".actionmenu").fadeOut(200);sendData("fechar2","fechar2")})



  function sendData(name,data){
    $.post("http://tkzin_lavagem/"+name,JSON.stringify(data),function(datab){
      if (datab != "ok"){
        console.log(datab);
      }
    });
  }
})


// /* SCRIPT EXCLUSIVO PORTAL DEVS | FEITO POR Tkzin#0001
//   DISCORD DA LOJA https://discord.gg/p77xUVwGEZ
// */

// /* SCRIPT EXCLUSIVO PORTAL DEVS | FEITO POR Tkzin#0001
//   DISCORD DA LOJA https://discord.gg/p77xUVwGEZ
// */

// /* SCRIPT EXCLUSIVO PORTAL DEVS | FEITO POR Tkzin#0001
//   DISCORD DA LOJA https://discord.gg/p77xUVwGEZ
// */