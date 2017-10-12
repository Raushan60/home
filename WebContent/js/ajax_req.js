$.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
});


/***======SEARCH FUNCTIONS======***/

//search suggestion on keyup function
$(document).on("keyup", "#search-inp", function(){
    
    var $this = $(this);
    var $keyword = $this.val();
    
    //getting data only if the keyword is not empty
    if($keyword!=""){
        //$keyword="null";
        
        
        //console.log($keyword);
        $.post($url+'/searchres/'+$keyword, function(response){
            if(response.success)
            {
                var $searchResCont = $('#search-res').empty();

                if(response.searchRes.length!=0){

                    console.log(response.searchRes.length);
                    $.each(response.searchRes, function(i, searches){
                       /* $('<li/>', {
                            text:'<a href="">'+searches.title+'</a>'
                        }).appendTo($searchResCont);*/
                        $('#search-res').append("<li><a href='"+searches.pagelink+"' target='_blank' data-role='none'>"+searches.title+"</a></li>");                    

                    })
                }
                else{
                    $('#search-res').append("<li>No results found!</li>");
                    console.log(response.searchRes);                
                }

            }
        }, 'json');
    }
    else{
        //empty search res if the keyword is empty
        $('#search-res').empty();
    }
    
    
})