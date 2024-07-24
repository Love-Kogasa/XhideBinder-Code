const { xb } = require( "./xb" ),
    fs = require( "fs" )
fs.writeFileSync( "test.txt", xb.encode( "hello,world" ) )
console.log( xb.decode( fs.readFileSync( "test.txt" ) ) )