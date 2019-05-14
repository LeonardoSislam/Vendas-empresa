  String.prototype.formatMoney = function() {
    var v = this;
    if(v.indexOf('.') === -1) {
      v = v.replace(/([\d]+)/, "$1,00");
    }
    v = v.replace(/([\d]+)\.([\d]{1})$/, "$1,$20");
    v = v.replace(/([\d]+)\.([\d]{2})$/, "$1,$2");
    v = v.replace(/([\d]+)([\d]{3}),([\d]{2})$/, "$1.$2,$3");
    return v;
  };

  function id(el) {
    return document.getElementById( el );
  }

  document.addEventListener("turbolinks:load", function() {
    if(id('venda_valoritemunitario')){
      id('venda_valoritemunitario').addEventListener('keyup', function() {
        var teste = total( this.value , id('venda_quantidade').value );
        id('venda_valoritens').value = teste.toFixed(2);
      });
      id('venda_quantidade').addEventListener('keyup', function(){
        var teste = total( id('venda_valoritemunitario').value , this.value );
        id('venda_valoritens').value = teste.toFixed(2);
      });
      id('venda_valoritens').value = total( id('venda_quantidade').value, id('venda_valoritemunitario').value );
    }
  })

  function total( un, qnt ) {
    return parseFloat(un.replace(',', '.'), 10) * parseFloat(qnt.replace(',', '.'), 10);
  }
