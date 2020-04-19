// engine.js -- The heartbeat of the churchlisten UniversalEngine
var congregations = {"Alberta": {"Crooked Creek": {"name": "rosedale", "number": "7330037"}, "Linden": {"name": "linden", "number": "3147808"}}, "Arkansas": {"Brooksville": {"name": "brooksville", "number": "7891953"}, "Lone Tree": {"name": "lonetree", "number": "3591366", "phonenumber": "6463071955"}}, "British Columbia": {"Abbotsford": {"name": "abbotsford", "number": "4062115", "phonenumber": "2063070010"}}, "California": {"Livingston": {"name": "livingston", "number": "8151586"}}, "Conference": {"Annual Meeting": {"name": "annualmeeting", "number": "10002", "phonenumber": "4156550247"}, "Inspirations": {"name": "inspirations", "number": "10001", "phonenumber": "4048916285"}}, "Demo": {"Psalms": {"name": "demo", "number": "9235230"}}, "Florida": {"Walnut Hill": {"name": "walnuthill", "number": "3018437", "phonenumber": "8504660053"}}, "Georgia": {"Harmony Springs": {"name": "harmonysprings", "number": "5754634", "phonenumber": "7065240004"}, "North Georgia": {"name": "northgeorgia", "number": "4675380", "phonenumber": "7066084680"}, "Pinecrest": {"name": "pinecrest", "number": "2542156"}}, "Guatemala": {"Guastatoya": {"name": "guastatoya ", "number": "5408992", "phonenumber": "4252305081"}}, "Idaho": {"Bonners Ferry": {"name": "mountainview", "number": "6873210", "phonenumber": "2084272040"}, "Buhl": {"name": "buhl", "number": "7382474", "phonenumber": "2088253050"}, "Potlatch": {"name": "wildrose", "number": "6750688", "phonenumber": "2083148222"}}, "Iowa": {"Lime Springs": {"name": "limesprings", "number": "2371450", "phonenumber": "5157240994"}}, "Kansas": {"Bethel Home": {"name": "bethel", "number": "8952475"}, "Copeland": {"name": "copeland", "number": "9674763"}, "Greensburg": {"name": "greensburg", "number": "2857400"}, "Inman": {"name": "zion", "number": "1404429"}, "Meridian": {"name": "meridian", "number": "1031059", "phonenumber": "8324130055"}, "Moundridge": {"name": "gospel", "number": "6168584", "phonenumber": "9133539665"}, "Suncrest": {"name": "suncrest", "number": "9329151", "phonenumber": "6207186220"}}, "Kentucky": {"Fountain Run": {"name": "fountainrun", "number": "2071724", "phonenumber": "5028901011"}, "Murray": {"name": "harmony", "number": "4558587"}}, "Manitoba": {"Grandview": {"name": "grandview", "number": "5513279", "phonenumber": "9292990011"}, "Greenland": {"name": "greenland", "number": "3165507", "phonenumber": "61955009"}, "Maplewood Manor": {"name": "kleefeld", "number": "5472582", "phonenumber": "4809001251"}, "Rosenort": {"name": "rosenort", "number": "6342143", "phonenumber": "6123980730"}}, "Missouri": {"Beulah": {"name": "beulah", "number": "8550341", "phonenumber": "3149320056"}, "Safe Haven": {"name": "safehaven", "number": "1452834", "phonenumber": "8168970140"}, "Walker": {"name": "walker", "number": "4173159", "phonenumber": "8046650190"}}, "Nebraska": {"Paxton": {"name": "paxton", "number": "8713296", "phonenumber": "6123453986"}}, "Ohio": {"Kidron": {"name": "rockofages", "number": "4087892"}}, "Oklahoma": {"Fairview": {"name": "fairview", "number": "5298701", "phonenumber": "9179001027"}}, "Pennsylvania": {"Belleville": {"name": "belleville", "number": "9515732", "phonenumber": "2152341090"}, "Fleetwood": {"name": "fleetwood", "number": "9829924", "phonenumber": "4845752280"}, "McVeytown": {"name": "mcveytown", "number": "5673196", "phonenumber": "7178991199"}, "Mifflinburg": {"name": "mifflinburg", "number": "9693865", "phonenumber": "5706001010"}}, "Saskatchewan": {"Leoville": {"name": "northwood ", "number": "6210641", "phonenumber": "9292990015"}}, "Tennessee": {"Monterey": {"name": "cumberlandmountain", "number": "7833585", "phonenumber": "6156106950"}}}

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


