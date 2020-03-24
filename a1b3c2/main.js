//const api = new churchListen();
function loadState(state) {
    window.state = state;
    document.querySelector('#myNavigator').pushPage('page2.html', {data: {title: state}});
};

function loadCongregation(congregation) {
    window.congregation = congregation;
    document.querySelector('#myNavigator').pushPage('page3.html', {data: {title: congregation}});
};

function handle_status (result) {
    document.getElementById("status").innerText = result["message"] + ".";
};

function makePhoneCall() {
    number = window.api.getPhoneNumber();
    if (number == undefined) {
        ons.notification.alert('Cannot find phone number.');
    } else {
        window.location.href = 'tel:' + number;
    };
};
document.addEventListener('init', function(event) {
    var page = event.target;

    if (window.api === undefined) {
        window.api = new churchPlayback(document.getElementById("testaudio"));
        // BETA Warning
        ons.notification.alert('This program is in pre-ALPHA state. if you stub your toe blame yourself.');
    }

    if (page.id === 'page1') {
        string = "";
        window.api.listStates().forEach(function (state, stateindex) {
            string = string + '<ons-list-item onclick="loadState(' + "'" + state + "')" + ';">' + state + '</ons-list-item>';
        });    
        page.querySelector("#states").innerHTML = string;
    } else if (page.id === 'page2') {
        page.querySelector('ons-toolbar .center').innerHTML = page.data.title;
        string = "";
        window.api.listCongregations(window.state).forEach(function (congregation, congregationindex) {
            string = string + '<ons-list-item onclick="loadCongregation(' + "'" + congregation + "')" + ';">' + congregation + '</ons-list-item>';
        });
        page.querySelector("#places").innerHTML = string
    } else if (page.id === 'page3') {
        window.api.loadCongregation(window.state,window.congregation);
        window.status_indicator = window.setInterval(function () {
            window.api.getStatus(handle_status);
            return true;
        },2000);
        page.querySelector('ons-toolbar .center').innerHTML = page.data.title;
        page.querySelector('#backcongregations').innerHTML = window.state;
        page.querySelector('ons-back-button').onClick = function(event) {
            console.log("Cancelling music.");
            window.api.unloadCongregation();
            window.clearInterval(window.status_indicator);
            document.querySelector('ons-navigator').popPage()
        };
        window.api.getStatus(handle_status);

    };
});

if ('serviceWorker' in navigator) {
    navigator.serviceWorker.register('./sw.js', { scope: '/a1b3c2/' }).then(function(reg) {
        console.log('Successfully registered service worker.', reg);
    }).catch(function(err) {
        console.warn('Error whilst registering service worker', err);
    });
}
