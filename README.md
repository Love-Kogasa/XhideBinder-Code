## ~~这是一种神奇的编码~~
This is a funny code
# XhideBinder Code
将数据编码成由 0x00 和 0x20 两个字符串组成的字符串/Buffer/blob<br>
Make data to string/buf/array by both 0x00 and 0x20<br>
本库采用LiveScript编写(支持es5)<br>
Module write by LiveScript<br>
支持浏览器&Nodejs<br>
Supports browsers and Nodejs
### Method 方法
编码并写入文件 Encode & write to file
```javascript
const { xb } = require( "XhideBinder" ),
    { writeFileSync } = require( "fs" )
writeFileSync( "test.txt", xb.encode( "hello,world" ) )
```
解码文件 Decode from file
```javascript
const { xb } = require( "XhideBinder" ),
    { readFileSync } = require( "fs" )
console.log(
    xb.decode( readFileSync( "test.txt" ) )
)
```
编码成数组 Encode to array
```javascript
const { xb } = require( "XhideBinder" ),
    { writeFileSync } = require( "fs" )
console.log( xb.encode( "hello,world", true ) )
```
# TheEnd ~~完结散花~~