
    var total = 0;
    var adultQuantity = 0;
    var childQuantity = 0;
$(document).ready(function(){
});
    function adultUpdate(data){
            adultQuantity = data.value;
        total = (10 * parseInt(adultQuantity))+(6 * parseInt(childQuantity));
        $("#cartTotal").text("Total: $" + total);
    }
    function childUpdate(data){
            childQuantity = data.value;
        total = (10 * parseInt(adultQuantity))+(6 * parseInt(childQuantity));
        $("#cartTotal").text("Total: $" + total);
    }
    function initPayPalButton() {
        paypal.Buttons({
            style: {
            shape: 'pill',
            color: 'gold',
            layout: 'vertical',
            label: 'buynow',
            
        },
        createOrder: function(data, actions) {
            return actions.order.create({
                purchase_units: [{"amount":{"currency_code":"USD","value": total}}]
                });
            },
        onApprove: function(data, actions) {
            return actions.order.capture().then(function(details) {
                alert('Transaction completed by ' + details.payer.name.given_name + '!');
                window.location.href = "/confirm";
                });
            },
        onError: function(err) {
            console.log(err);
        },
    }).render('#paypal-button-container'); 
}initPayPalButton();