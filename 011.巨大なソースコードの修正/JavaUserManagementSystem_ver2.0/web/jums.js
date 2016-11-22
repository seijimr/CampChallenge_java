function CheckNameForm(form) {
    if (form !== "") {
        document.getElementById('name').style.visibility = "hidden";
    } else {
        document.getElementById('name').style.visibility = "visible";
    }
}

function CheckTellForm(form) {
    if (form !== "") {
        document.getElementById('tell').style.visibility = "hidden";
    } else {
        document.getElementById('tell').style.visibility = "visible";
    }
}

function CheckBirthForm(form) {
    if (form !== "") {
        document.getElementById('birth').style.visibility = "hidden";
    } else {
        document.getElementById('birth').style.visibility = "visible";
    }
}

function CheckTellForm(form) {
    if (form !== "") {
        document.getElementById('tell').style.visibility = "hidden";
    } else {
        document.getElementById('tell').style.visibility = "visible";
    }
}

function updateconfirm() {
    if (window.confirm("更新していいですか？")) {
        return true;
    }
    return false;
}

function deleteconfirm() {
    if (window.confirm("このユーザーのデータを削除しますか？")) {
        if (window.confirm("削除したら元には戻せません。知っていますか？")) {
            if (window.confirm("本当に削除しますか？")) {
                return true;
            }
        }
    }
    return false;
}

