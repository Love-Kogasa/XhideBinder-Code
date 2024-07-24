export function bytext( ele, cele, dele )
    dele.onclick = ->
        download xb.encode( ele.value ), "code.txt"
    cele.onclick = ->
        navigator.clipboard.writeText( xb.encode( ele.value ) )
            .then do
                ->
                    window.alert( "复制成功)" )
                ->
                    window.alert( "复制失败(" )
export function byfile( ele, dele )
    reader = new FileReader!
    reader.onload = ( event ) ->
        download xb.encode( event.target.result ), "code.txt"
    dele.onclick = ->
        reader.readAsText( ele.files[0] )
    null
export function frfile( ele, cele, text, dele )
    reader = new FileReader!
    reader.onload = ( event ) ->
        download xb.decode( event.target.result ), "code.txt"
    readercp = new FileReader!
    readercp.onload = ( event ) ->
        navigator.clipboard.writeText xb.decode( event.target.result )
        .then do
            ->
                window.alert( "复制成功)" )
            ->
                window.alert( "复制失败(" )
    readertxt = new FileReader!
    readertxt.onload = ( event ) ->
        text.value = xb.decode event.target.result
    ele.onchange = ->
        readertxt.readAsText @files[0]
    cele.onclick = ->
        readercp.readAsText ele.files[0]
    dele.onclick = ->
        reader.readAsText ele.files[0]
