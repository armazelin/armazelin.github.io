// native.js -- Provides native functions for churchlisten
// This module is responsible for url lookups and playing the music
var element;

function requestJSON(url, callback) {
    window._callback = callback;
    url = encodeURI(url);

    // Borrowed from http://forums.mozillazine.org/viewtopic.php?t=48738
    if (element != null) {
        document.getElementById('scriptid').remove();
    };
    element = document.createElement("script");
    element.src = "https://json2jsonp.com/?url=" + url + "&callback=window._callback&a=" + Math.random().toString();
    element.type = "text/javascript";
    element.id = "scriptid";
    document.getElementsByTagName("head")[0].appendChild(element);
}

// churchPlayback -- Adds playback functionallity to churchListen
function churchPlayback(audioelement) {
    this.audioelement = audioelement;
    churchListen.call(this);  
};

churchPlayback.prototype = Object.create(churchListen.prototype);
churchPlayback.prototype.constructor = churchListen;

churchPlayback.prototype.loadCongregation = function(state,congregation) {
    churchListen.prototype.loadCongregation.call(this,state,congregation);
    this.audioelement.src = this.getStreamingUrl();
    this.audioelement.load();
    this.audioelement.play();
}

churchPlayback.prototype.unloadCongregation = function() {
    churchListen.prototype.unloadCongregation.call(this);
    this.audioelement.pause();
}
