var CsvReadableStream = require('csv-reader')
var pg = require('pg')
var fs = require('fs')
var createReadStream = fs.createReadStream('./tr.csv', 'utf-8')

var client = new pg.Client('postgres://gurmanramusandhu:Gurman@1@localhost:5432/fruits');



function chaklo() {
    client.connect();
    var rows = [];

    createReadStream.pipe(CsvReadableStream({ parseNumbers: true, parseBooleans: true, trim: true }))
        .on('data', (row) => {
            console.log(row);

            rows.push(row);

        })
        .on('end', async (data) => {
            console.log('finish')
            await client.query('BEGIN');
            try {

                for (let row of rows) {

                    let [action, name, quantity] = row;

                    if (action == 'SELL') {

                        client.query(`SELECT quantity FROM stocks INNER JOIN citrus on stocks.citrus_id = citrus.id
    WHERE citrus.name = $1 GROUP BY quantity;`, [name]);


                    }
                    if (action === 'BUY') {
                        let result = await client.query(`
                UPDATE stocks SET quantity = quantity + $1
                FROM citrus
                WHERE stocks.citrus_id = citrus.id AND name = $2`, [quantity, name]);
                        console.log(`You have bought ${quantity} ${name}'s!`);
                    } else {
                        let result = await client.query(`
                UPDATE stocks SET quantity = quantity - $1
                FROM citrus
                WHERE stocks.citrus_id = citrus.id AND name = $2`, [quantity, name]);
                        console.log(`${quantity} ${name} sold!`);
                    }
                }

                await client.query('COMMIT');
            } catch (e) {
                await client.query('ROLLBACK')
                console.log(e)

            }

        })
}
chaklo();