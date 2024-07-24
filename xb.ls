# XhideBinder By LiYingChao on 2024.7.22 MIT(c)
# <x>多重(数字) <hide>隐藏(字符) <binder>绑定
# 话说叫KoishiCode会不会更好些 ( 雾
isNode = typeof module is "object"
export xb =
    encode : function( string, is-array = no )
        chars = string.toString( 10 ).split( '' )
        back-array = new Array!
        unis = new Array!
        for char in chars
            unis ++= char.charCodeAt!
        minchar = Math.min.apply( Math, unis )
        back-array ++= [ 0x0 ] * minchar
        for index of unis
            if index isnt unis.length
                back-array ++= 0x20
            back-array ++= [ 0x0 ] * ( unis[ index ] - minchar )
        if is-array then back-array
            else if isNode then Buffer.from back-array
            else do ->
                retv = ""
                for code in back-array
                    retv += String.fromCharCode code
                retv
    decode : function( array )
        back-value = ''
        if typeof array is "string"
            chars = array.split ' '
            for char in chars.slice 1
                back-value += String.fromCharCode( char.length + chars[ 0 ].length )
        else if typeof array is "object"
            if Array.isArray array
                chars = array.join( '' ).split 0x20
                for char in chars.slice 1
                    back-value += String.fromCharCode( char.length + chars[ 0 ].length )
            else
                back-value += xb.decode array.toJSON().data
        back-value
