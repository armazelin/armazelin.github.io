function loadCongregation(state,church) {
    api.loadCongregation(state,church);
    document.getElementById("selectedchurch").innerText = church + ', ' + state;
};
const api = new churchPlayback(document.getElementById("testaudio"));
var myhtml = ""
api.listStates().forEach(function (state, stateindex) {
    console.log(state);
    myhtml = myhtml + '<li><a href="#" class="dropdown-toggle">' + state + '</a><ul class="d-menu" data-role="dropdown">'
    api.listCongregations(state).forEach(function (church, churchindex) {
        myhtml = myhtml + "<li><a href='#' onclick='loadCongregation(" + '"' + state + '","' + church +  '");' + "'>" + church + '</a></li>';
    });
    myhtml = myhtml + '</ul></li>';
});
document.getElementById("hello").innerHTML = myhtml
function handle_status (result) {
    document.getElementById("status").innerText = "Listening to " + api.congregation + ", " + api.state + ". " + result["message"] + ".";
}
window.setInterval(function () {
    api.getStatus(handle_status); // Silently fails
    return true;
},2000);
