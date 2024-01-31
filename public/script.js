$(function(){
    $("#addsessionform").on("submit", function(e){
        e.preventDefault();
        var form = $(this);
        var url = form.attr("action");
        var type = form.attr("method");
        var data = form.serialize();

        $.ajax({

            url: url,
            data: data,
            type: type,
            dataType: "JSON",
            success: function(data){
                if(data == "success"){
                    $("#addSession").modal("hide");
                    swal("Great", "Successfully Session Data Inputed", "success");
                    form[0].reset();
                    return getSessionData();
                }
            },

        });

    });


    function getSessionData(){
        var url = $("#getalldata").data("url");

        $.ajax({
            url: url,
            type: "get",
            dataType: "HTMl",
            success: function(response){
                $("#showAllDataHere").html(response);
            }
        })
    }


    // Edit
    $(document).on("click", "#edit", function(arg){
        arg.preventDefault();
        var id = $(this).data("id");
        var url = $(this).attr("href");

        $.ajax({
            url: url,
            data: {id:id},
            dataType:"JSON",
            type: "GET",
            success: function(response){
                $("#UpdateSession").modal("show");
                $("#sessions").val(response.sessions);
                $("#sessionid").val(response.id);
                $("#updatesessiontitle").text("Update " + response.sessions + "'s Data");
            }
        })

    });



    $("#updatesessionform").on("submit", function(arg){
        arg.preventDefault();
        var form =$(this);
        var url = form.attr("action");
        var type = form.attr("method");
        var data = form.serialize();

        $.ajax({
            url: url,
            type: type,
            dataType: "JSON",
            data: data,
            success: function(response){
                if(response == "success"){
                    swal("Data Updated", "Success", "success");
                    $("#UpdateSession").modal("hide");
                    return getSessionData();
                }
            },
        });

    });


    $(document).on("click", ".pagination li a", function(e){
        e.preventDefault();
        var page = $(this).attr("href");
        var pagenumber = page.split("?page=")[1];
        return getPagination(pagenumber);
    });

    function getPagination(pagenumber){
        var geturl = $("#getalldatabypagination").data("url");
        var url = geturl+"?page=" + pagenumber;

        $.ajax({
            url: url,
            type: "GET",
            dataType: "HTML",
            success: function(response){
                $("#showAllDataHere").html(response);
            }
        });
    }


});
