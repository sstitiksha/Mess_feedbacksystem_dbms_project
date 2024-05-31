window.onload = function() {

    //To change pic per day

    today = new Date();
    day = today.getDay();

    document.getElementById('breakfastimg').src = "images/breakfast/" + day + ".jpg";
    document.getElementById('lunchimg').src = "images/lunch/" + day + ".jpg";
    document.getElementById('snacksimg').src = "images/snack/" + day + ".jpg";
    document.getElementById('dinnerimg').src = "images/dinner/" + day + ".jpg";

    //For changing cards on clicking buttons

    document.getElementById("menucard-b").style.display = "initial";
    document.getElementById("menucard-l").style.display = "none";
    document.getElementById("menucard-s").style.display = "none";
    document.getElementById("menucard-d").style.display = "none";

    document.getElementById("breakfast-btn").addEventListener('click', function() {
        document.getElementById("menucard-b").style.display = "initial";
        document.getElementById("menucard-l").style.display = "none";
        document.getElementById("menucard-s").style.display = "none";
        document.getElementById("menucard-d").style.display = "none";
    });

    document.getElementById("lunch-btn").addEventListener('click', function() {
        document.getElementById("menucard-b").style.display = "none";
        document.getElementById("menucard-l").style.display = "initial";
        document.getElementById("menucard-s").style.display = "none";
        document.getElementById("menucard-d").style.display = "none";

    });

    document.getElementById("snacks-btn").addEventListener('click', function() {
        document.getElementById("menucard-b").style.display = "none";
        document.getElementById("menucard-l").style.display = "none";
        document.getElementById("menucard-s").style.display = "initial";
        document.getElementById("menucard-d").style.display = "none";

    });

    document.getElementById("dinner-btn").addEventListener('click', function() {
        document.getElementById("menucard-b").style.display = "none";
        document.getElementById("menucard-l").style.display = "none";
        document.getElementById("menucard-s").style.display = "none";
        document.getElementById("menucard-d").style.display = "initial";

    });
}

//To limit the number of checkbox checked

function checkboxlimit() {
    var checkboxes = document.getElementsByName("b-menu[]");
    console.log(checkboxes);
    var numberOfCheckedItems = 0;
    for (var i = 0; i < checkboxes.length; i++) {
        if (checkboxes[i].checked)
            numberOfCheckedItems++;
    }
    if (numberOfCheckedItems > 7) {
        alert("You can't select more than seven food items!");
        return false;
    }
}

function checkboxlimit1() {
    var checkboxes = document.getElementsByName("l-menu[]");
    var numberOfCheckedItems = 0;
    for (var i = 0; i < checkboxes.length; i++) {
        if (checkboxes[i].checked)
            numberOfCheckedItems++;
    }
    if (numberOfCheckedItems > 7) {
        alert("You can't select more than seven food items!");
        return false;
    }
}

function checkboxlimit2() {
    var checkboxes = document.getElementsByName("s-menu[]");
    var numberOfCheckedItems = 0;
    for (var i = 0; i < checkboxes.length; i++) {
        if (checkboxes[i].checked)
            numberOfCheckedItems++;
    }
    if (numberOfCheckedItems > 7) {
        alert("You can't select more than seven food items!");
        return false;
    }
}

function checkboxlimit3() {
    var checkboxes = document.getElementsByName("d-menu[]");
    var numberOfCheckedItems = 0;
    for (var i = 0; i < checkboxes.length; i++) {
        if (checkboxes[i].checked)
            numberOfCheckedItems++;
    }
    if (numberOfCheckedItems > 7) {
        alert("You can't select more than seven food items!");
        return false;
    }
}