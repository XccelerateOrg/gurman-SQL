var pg = require('pg')

// var config = {
//     user :'gurmanramusandhu', 
//     database:'postgres',
//     password:'123456',
//     host:'localhost',
//     port:'5432',
//     max: 20,
//     idleTimeoutMIllis: 5000,
// }


// var client = new pg.Client(config);

// client.connect();

// client.query('SELECT * FROM employee', (err,data)=>{
//     if(err){
//         console.log(err)
//     }
//     else console.log(data.rows)
// })

function getfruit(color){

    var client = new pg.Client('postgres://gurmanramusandhu:Gurman@1@localhost:5432/testing');

    client.connect();
    
    var query=`SELECT * FROM citrus where color = $1`;

    client.query(query,[color],(err,data)=>{
        if(err){
            console.log(err);
        }
        else console.log(data.rows);
    })


}

getfruit('orange')