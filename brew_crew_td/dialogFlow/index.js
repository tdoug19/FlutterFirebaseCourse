const express = require('express');
const bodyParser = require('body-parser');
const {WebhookClient} = require('dialogflow-fulfillment');
const functions = require('firebase-functions');
const admin = require('firebase-admin');

const app = express()
app.use(bodyParser.json())
const port = process.env.PORT || 3000

var serviceAccount = require("/Users/trevordouglas/Repositories/FlutterFirebaseCourse/brew_crew_td/dialogFlow/brew-crew-td-firebase-adminsdk-x15sd-c513e5b2fd.json");

admin.initializeApp({
    credential: admin.credential.cert(serviceAccount),
    databaseURL: "https://brew-crew-td-default-rtdb.firebaseio.com/"
  });
  
app.post('/dialogflow-fulfilment', (request, response) => {

    dialogFlowFulfillment(request, response)
})

app.listen(port, () => {
    console.log(`Listening on port ${port}`)
})


const dialogFlowFulfillment = (request, response) => {
    const agent = new WebhookClient({request, response})

    function sayHello(agent){
        agent.add("Hi from Brew")
    }

    function getUserFromDB(agent){
        
        //admin.database().ref("/DEba3FQIEIZCIdOcJMCclPezBXj1");
        
        const db = admin.database();
        const ref = db.ref();

        ref.on('value', (snapshot) => {
            console.log(snapshot.val());
        }, (errorObject) => {
            console.log('The read failed' + errorObject.name);
        
        });
        
        /*
        return admin.database().ref("brews").once("value").then((snapshot) => {
            var address = snapshot.child().val();
            if(address !== null)
            {
                agent.add('Address is: ' + address);
            }
            else{
              agent.add('error');
            }
          });
*/

          //console.log("Getting user data");
          //agent.add("access DB")

    }

    let intentMap = new Map();
    intentMap.set('Default Welcome Intent', sayHello);
    intentMap.set('getUser', getUserFromDB);
    agent.handleRequest(intentMap);
}


