// engine.js -- The heartbeat of the churchlisten UniversalEngine
var congregations = {"Georgia": {"Pinecrest": {"name": "pinecrest", "number": "2542156"}, "Harmony Springs": {"name": "harmonysprings", "number": "5754634"}}, "Pennsylvania": {"Fleetwood": {"name": "fleetwood", "number": "9829924"}, "Mifflinburg": {"name": "mifflinburg", "number": "9693865"}}, "Demo": {"Psalms": {"name": "demo", "number": "9235230"}}, "Oklahoma": {"Fairview": {"name": "fairview", "number": "5298701"}}, "Kansas": {"Bethel Home": {"name": "bethel", "number": "8952475"}, "Meridian": {"name": "meridian", "number": "1031059"}}, "Kentucky": {"Fountain Run": {"name": "fountainrun", "number": "2071724"}}, "Tennessee": {"Monterey": {"name": "cumberlandmountain", "number": "7833585"}}, "British Columbia": {"Abbotsford": {"name": "abbotsford", "number": "4062115"}}, "Arkansas": {"Lone Tree": {"name": "lonetree", "number": "3591366"}}, "Missouri": {"Walker": {"name": "walker", "number": "4173159"}, "Beulah": {"name": "beulah", "number": "8550341"}, "Safe Haven": {"name": "safehaven", "number": "1452834"}}, "Alberta": {"Linden": {"name": "linden", "number": "3147808"}}, "Manitoba": {"Grandview": {"name": "grandview", "number": "5513279"}, "Rosenort": {"name": "rosenort", "number": "6342143"}}, "Ohio": {"Kidron": {"name": "rockofages", "number": "4087892"}}, "Nebraska": {"Paxton": {"name": "paxton", "number": "8713296"}}}

// class churchListen -- raw access to the api
function churchListen() {
    this.state = "";
    this.congregation = "";
    this.techname = "";
    this.technumber = 0;    
}
// Selection apis
churchListen.prototype.listStates = function() {
    return Object.keys(congregations).sort();
}
churchListen.prototype.listCongregations = function(state) {
    return Object.keys(congregations[state]).sort();
}
// Choice api
churchListen.prototype.loadCongregation = function(state,congregation) {
    this.technumber = congregations[state][congregation]["number"];
    this.techname = congregations[state][congregation]["name"];
    this.state = state;
    this.congregation = congregation;
    return this.technumber;
}
// Unchoice api - A dummy api to be replaced in native.js
churchListen.prototype.unloadCongregation = function() {
    return true
}
// Info api
churchListen.prototype.getStatus = function(callback) {
    if (this.technumber < 1) {
        return false;
    };
    requestJSON("http://listentochurch.com/api/v1/public/stream/status/" + this.technumber, callback);
    return true
}
churchListen.prototype.getStreamingUrl = function() {
    if (this.technumber < 1) {
        throw "No place loaded";
    };
    return "https://us-ca-fremont-1.listentochurch.com/" + this.technumber.toString() + ".mp3";
    //return "http://icecast.aleph-com.net:8000/" + this.technumber.toString() + ".mp3";
}
