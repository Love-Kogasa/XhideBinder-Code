// Generated by LiveScript 1.6.0
(function(){
  var out$ = typeof exports != 'undefined' && exports || this;
  out$.bytext = bytext;
  function bytext(ele, cele, dele){
    dele.onclick = function(){
      return download(xb.encode(ele.value), "code.txt");
    };
    return cele.onclick = function(){
      return navigator.clipboard.writeText(xb.encode(ele.value)).then(function(){
        return window.alert("复制成功)");
      }, function(){
        return window.alert("复制失败(");
      });
    };
  }
  out$.byfile = byfile;
  function byfile(ele, dele){
    var reader;
    reader = new FileReader();
    reader.onload = function(event){
      return download(xb.encode(event.target.result), "code.txt");
    };
    dele.onclick = function(){
      return reader.readAsText(ele.files[0]);
    };
    return null;
  }
  out$.frfile = frfile;
  function frfile(ele, cele, text, dele){
    var reader, readercp, readertxt;
    reader = new FileReader();
    reader.onload = function(event){
      return download(xb.decode(event.target.result), "code.txt");
    };
    readercp = new FileReader();
    readercp.onload = function(event){
      return navigator.clipboard.writeText(xb.decode(event.target.result)).then(function(){
        return window.alert("复制成功)");
      }, function(){
        return window.alert("复制失败(");
      });
    };
    readertxt = new FileReader();
    readertxt.onload = function(event){
      return text.value = xb.decode(event.target.result);
    };
    ele.onchange = function(){
      return readertxt.readAsText(this.files[0]);
    };
    cele.onclick = function(){
      return readercp.readAsText(ele.files[0]);
    };
    return dele.onclick = function(){
      return reader.readAsText(ele.files[0]);
    };
  }
}).call(this);
