console.log("loaded fileLoad.js");

const nyanAcceptedParams = {"date": "2024-06-25"};

const nyanOutputColumns =  ["date"];

function main(){

    console.log("nyanAllParams:", nyanAllParams);
    console.log("nyanErros:", typeof nyanErros);
    console.log("nyanGetAPI:", typeof nyanGetAPI);
    console.log("nyanJsonAPI", typeof nyanJsonAPI);
    console.log("nyanHostExec:" , typeof nyanHostExec);
    console.log("nyanGetFile:", typeof nyanGetFile);
    let result = 1;

    //let result = nyanGetFile("./sql/duckdb/testtest2.csv");
    console.log(result);
    return JSON.stringify({success: true, status: 200, result: result});
}

main();