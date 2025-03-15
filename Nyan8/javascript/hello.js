console.log("loaded hello.js");

function main(){

    console.log(nyanAllParams);
    return JSON.stringify({
        "success": true,
        "status": 200,
        "data": {
            "message": "hello! "
        },
    });
}

main();