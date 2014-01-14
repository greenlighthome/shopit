function handleSearchBar(){
    if (searchform.search.value.length > 0) {
        removeDisplayNone();
    } else {
        addDisplayNone();
    }
}

function removeDisplayNone() {
    document.getElementById("search-results").removeAttribute("style");
}

function addDisplayNone() {
    var styleAtt = document.createAttribute("style");
    styleAtt.nodeValue = "display:none;"
    document.getElementById("search-results").setAttributeNode(styleAtt);
}