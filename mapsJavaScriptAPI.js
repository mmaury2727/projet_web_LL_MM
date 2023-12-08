var CROSproxyURL = 'https://www.whateverorigin.org/get?url=';

var args = '';
if (typeof language != 'undefined') args += '&language=' + language;

var bypass = function (googleAPIcomponentJS, googleAPIcomponentURL) {
    if (googleAPIcomponentURL.toString().indexOf("common.js") != -1) {
        var removeFailureAlert = function(googleAPIcomponentURL) {
            sendRequestThroughCROSproxy(googleAPIcomponentURL,(responseText)=>{
                var anotherAppendChildToHeadJSRegex = /.src=(.*?);\(void 0\)/;
                var anotherAppendChildToHeadJS = responseText.match(anotherAppendChildToHeadJSRegex);
                var googleAPItrustedScriptURL = anotherAppendChildToHeadJS[1];
                var bypassQuotaServicePayload = anotherAppendChildToHeadJS[0].replace(googleAPItrustedScriptURL, googleAPItrustedScriptURL+'.toString().indexOf("QuotaService.RecordEvent")!=-1?"":'+googleAPItrustedScriptURL);

                var script = document.createElement('script');
                script.innerHTML = responseText.replace(new RegExp(/;if.*Failure.*?\}/), ";").replace(new RegExp(/(\|\|\(\(\)=>\{\}\);.*\?.*?\()/), "$1true||").replace(anotherAppendChildToHeadJSRegex, bypassQuotaServicePayload);
                document.head.appendChild(script);
            });
        }
        googleAPIcomponentJS.innerHTML = '(' + removeFailureAlert.toString() + ')("' + googleAPIcomponentURL.toString() + '")';
    } else if(googleAPIcomponentURL.toString().indexOf("map.js") != -1){
        var hijackMapJS = function(googleAPIcomponentURL) {
            sendRequestThroughCROSproxy(googleAPIcomponentURL,(responseText)=>{
                var unknownStatusRegex = /const .*?=(.*\.getStatus\(\));/;
                var unknownStatusMatch = responseText.match(unknownStatusRegex);
                var unknownStatus=unknownStatusMatch[1];
                var replaceUnknownStatusPayload = unknownStatusMatch[0].replace(unknownStatus, '1');
                
                var script = document.createElement('script');
                script.innerHTML = responseText.replace(unknownStatusRegex, replaceUnknownStatusPayload);
                document.head.appendChild(script);
            });
        }
        googleAPIcomponentJS.innerHTML = '(' + hijackMapJS.toString() + ')("' + googleAPIcomponentURL.toString() + '")';
    } else {
        googleAPIcomponentJS.src = googleAPIcomponentURL;
    }
}

var createAndExecutePayload = function (googleAPIjs){
    var script = document.createElement('script');
    var appendChildToHeadJS = googleAPIjs.match(/(\w+)\.src=(_.*?);/);
    var googleAPIcomponentJS = appendChildToHeadJS[1];
    var googleAPIcomponentURL = appendChildToHeadJS[2];
    script.innerHTML = googleAPIjs.replace(appendChildToHeadJS[0], '(' + bypass.toString() + ')(' + googleAPIcomponentJS + ', ' + googleAPIcomponentURL + ');');
    document.head.appendChild(script);
}

sendRequestThroughCROSproxy('https://maps.googleapis.com/maps/api/js?key=AIzaSyB41DRUbKWJHPxaFjMAwdrzWzbVKartNGg&callback=initMap' + args, (googleAPIjs)=>{
    createAndExecutePayload(googleAPIjs);
});

function sendRequestThroughCROSproxy(url, callback){
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4) {
            if(this.status == 200){
                if(callback) callback(JSON.parse(this.responseText).contents);
            }else{
                sendRequestThroughCROSproxy(url, callback);//retry
            }
        }
    };
    xhttp.open("GET", CROSproxyURL + encodeURIComponent(url), true);
    xhttp.send();
}

function addMetroLine() {
    var metroPath = [
        { lat: 48.858844, lng: 2.294350 }, // Exemple de coordonnées pour la ligne de métro (Place du Trocadéro)
        { lat: 48.853467, lng: 2.368637 }, // (Exemple) Coordonnées suivantes
        // Ajoutez plus de coordonnées pour définir le tracé complet de la ligne
    ];

    var metroLine = new google.maps.Polyline({
        path: metroPath,
        geodesic: true,
        strokeColor: '#FF0000',
        strokeOpacity: 1.0,
        strokeWeight: 2
    });

    metroLine.setMap(map);
}
