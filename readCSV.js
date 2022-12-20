const mysql = require('mysql');
const fs = require("fs");
const { parse } = require("csv-parse");

var cnt_du = 0;

var con = mysql.createConnection({
    host: "localhost",
    user: "root", // my username
    password: "password", // my password
    database: "projects"
});

let text = 0;
con.connect(function(err) {
    if (err) throw err;
    console.log("Connected!");
    con.query("SET profiling = 1;")


    fs.createReadStream("files/user_types.csv")
        .pipe(parse({ delimiter: ",", from_line: 2 }))
        .on("data", function(row) {
            //insert query
            var sql = "insert into user_types values ('" + row[0] + "','" + row[1] + "','" + row[2] + "');";
            con.query(sql, function(err, result) {
                if (err) throw err;
            });

        })
        .on("error", function(error) {
            console.log(error.message);
        })
        .on("end", function() {
            console.log("finished");
        });

        fs.createReadStream("files/agencies.csv")
        .pipe(parse({ delimiter: ",", from_line: 2 }))
        .on("data", function(row) {
            //insert query
            var sql = "insert into agencies values ('" + row[0] + "','" + row[1] + "','" + row[2] +"','" + row[3] + "');";
            con.query(sql, function(err, result) {
                if (err) throw err;
            });

        })
        .on("error", function(error) {
            console.log(error.message);
        })
        .on("end", function() {
            console.log("finished");
        });

        fs.createReadStream("files/components.csv")
        .pipe(parse({ delimiter: ",", from_line: 2 }))
        .on("data", function(row) {
            //insert query
            var sql = "insert into components values ('" + row[0] + "','" + row[1] + "','" + row[2] + "','" + row[3] +"','" + row[4] +"','" + row[5] +"');";
            con.query(sql, function(err, result) {
                if (err) throw err;
            });

        })
        .on("error", function(error) {
            console.log(error.message);
        })
        .on("end", function() {
            console.log("finished");
        });

        fs.createReadStream("files/constraints.csv")
        .pipe(parse({ delimiter: ",", from_line: 2 }))
        .on("data", function(row) {
            //insert query
            var sql = "insert into constraints values ('" + row[0] + "','" + row[1] + "','" + row[2] + "');";
            con.query(sql, function(err, result) {
                if (err) throw err;
            });

        })
        .on("error", function(error) {
            console.log(error.message);
        })
        .on("end", function() {
            console.log("finished");
        });

        fs.createReadStream("files/projects.csv")
        .pipe(parse({ delimiter: ",", from_line: 2 }))
        .on("data", function(row) {
            //insert query
            var sql = "insert into projects values ('" + row[0] + "','" + row[1] + "','" + row[2] +"','" + row[3] + "','" + row[4] +"','" + row[5] + "','" + row[6] + "','" + row[7] + "','" + row[8] +"','" + row[9] + "','" + row[10] + "','" + row[11] +"');";
            con.query(sql, function(err, result) {
                if (err) throw err;
            });

        })
        .on("error", function(error) {
            console.log(error.message);
        })
        .on("end", function() {
            console.log("finished");
        });

        fs.createReadStream("files/proposals.csv")
        .pipe(parse({ delimiter: ",", from_line: 2 }))
        .on("data", function(row) {
            //insert query
            var sql = "insert into proposals values ('" + row[0] + "','" + row[1] + "','" + row[2] +"','" + row[3] + "','" + row[4] +"','" + row[5] + "','" + row[6] + "','" + row[7] + "','" + row[8] +"','" + row[9] +"');";
            con.query(sql, function(err, result) {
                if (err) throw err;
            });

        })
        .on("error", function(error) {
            console.log(error.message);
        })
        .on("end", function() {
            console.log("finished");
        });
});