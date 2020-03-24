// engine.js -- The heartbeat of the churchlisten UniversalEngine
var congregations = {"Alberta": {"Linden": {"name": "linden", "number": "3147808"}}, "Arkansas": {"Lone Tree": {"name": "lonetree", "number": "3591366", "phonenumber": "6463071955"}}, "British Columbia": {"Abbotsford": {"name": "abbotsford", "number": "4062115", "phonenumber": "2063070010"}}, "California": {"Livingston": {"name": "livingston", "number": "8151586"}}, "Demo": {"Psalms": {"name": "demo", "number": "9235230"}}, "Georgia": {"Harmony Springs": {"name": "harmonysprings", "number": "5754634", "phonenumber": "7065240004"}, "Pinecrest": {"name": "pinecrest", "number": "2542156"}}, "Idaho": {"Bonners Ferry": {"name": "mountainview", "number": "6873210", "phonenumber": "2084272040"}, "Buhl": {"name": "buhl", "number": "7382474", "phonenumber": "2088253050"}, "Potlatch": {"name": "wildrose", "number": "6750688", "phonenumber": "2083148222"}}, "Kansas": {"Bethel Home": {"name": "bethel", "number": "8952475"}, "Meridian": {"name": "meridian", "number": "1031059", "phonenumber": "8324130055"}, "Suncrest": {"name": "suncrest", "number": "9329151", "phonenumber": "6207186220"}}, "Kentucky": {"Fountain Run": {"name": "fountainrun", "number": "2071724", "phonenumber": "5028901011"}}, "Manitoba": {"Grandview": {"name": "grandview", "number": "5513279", "phonenumber": "9292990011"}, "Rosenort": {"name": "rosenort", "number": "6342143", "phonenumber": "6123980730"}}, "Missouri": {"Beulah": {"name": "beulah", "number": "8550341", "phonenumber": "3149320056"}, "Safe Haven": {"name": "safehaven", "number": "1452834", "phonenumber": "8168970140"}, "Walker": {"name": "walker", "number": "4173159", "phonenumber": "8046650190"}}, "Nebraska": {"Paxton": {"name": "paxton", "number": "8713296", "phonenumber": "6123453986"}}, "Ohio": {"Kidron": {"name": "rockofages", "number": "4087892"}}, "Oklahoma": {"Fairview": {"name": "fairview", "number": "5298701", "phonenumber": "9179001027"}}, "Pennsylvania": {"Fleetwood": {"name": "fleetwood", "number": "9829924", "phonenumber": "4845752280"}, "Mifflinburg": {"name": "mifflinburg", "number": "9693865"}}, "Tennessee": {"Monterey": {"name": "cumberlandmountain", "number": "7833585", "phonenumber": "6156106950"}}}

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
    this.phonenumber = congregations[state][congregation]["phonenumber"];
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

churchListen.prototype.getPhoneNumber = function() {
    if (this.technumber < 1) {
        throw "No place loaded";
    };
    return this.phonenumber;
    //return "http://icecast.aleph-com.net:8000/" + this.technumber.toString() + ".mp3";
}


