
if(window.XMLHttpRequest)
{
    xhttp=new XMLHttpRequest();
}
else{
    xhttp=new ActiveXObject("Microsoft.XMLHTTP")
}
xhttp.open("GET","cart.xml",false);
xhttp.send();
var xmlDoc=xhttp.responseXML;





function display() {
    var i;
    var table =
        `<thead class="thead-dark"><tr><th>Item Name</th><th>Price</th><th>Quantity</th>
            <th>Total</th><th>Delete</th><th>Edit</th>
        </tr></thead>`;
        
    var x = xmlDoc.getElementsByTagName("ITEM");
    

    // Start to fetch the data by using TagName 
    for (i = 0; i < x.length; i++) {
        table += "<tr><td>" +
           x[i].getElementsByTagName("item_name")[0]
            .childNodes[0].nodeValue + "</td><td>" +
            x[i].getElementsByTagName("price")[0]
            .childNodes[0].nodeValue + "</td><td>" +
            x[i].getElementsByTagName("quantity")[0]
            .childNodes[0].nodeValue + "</td><td>" +
            (x[i].getElementsByTagName("price")[0].childNodes[0].nodeValue)*(x[i].getElementsByTagName("quantity")[0].childNodes[0].nodeValue)  + "</td><td>"+
            `<a onclick='javascript:remove(${i})'><i class='fas fa-trash'></i></a></td><td>`+
            `<a onclick='javascript:change(${i})' data-toggle="modal" data-target="#new2"><i class="fas fa-user-edit"></i></a></td></tr>`;
    }
    // Print the xml data in table form
    document.getElementById("id").innerHTML = table;
}
function remove(node){
    y=xmlDoc.getElementsByTagName("ITEM")[node];
    xmlDoc.documentElement.removeChild(y);
    show(xmlDoc);
    console.log(y);
}

function show(xmlDoc){
    var i;
    var table =
        `<thead class="thead-dark"><tr><th>Item Name</th><th>Price</th><th>Quantity</th>
            <th>Total</th><th>Delete</th><th>Edit</th>
        </tr></thead>`;
        
    var x = xmlDoc.getElementsByTagName("ITEM");

    // Start to fetch the data by using TagName 
    for (i = 0; i < x.length; i++) {
        table += "<tr><td>" +
            x[i].getElementsByTagName("item_name")[0]
            .childNodes[0].nodeValue + "</td><td>" +
            x[i].getElementsByTagName("price")[0]
            .childNodes[0].nodeValue + "</td><td>" +
            x[i].getElementsByTagName("quantity")[0]
            .childNodes[0].nodeValue + "</td><td>" +
            (x[i].getElementsByTagName("price")[0].childNodes[0].nodeValue)*(x[i].getElementsByTagName("quantity")[0].childNodes[0].nodeValue) 
             + "</td><td>"+
            `<a onclick='javascript:remove(${i})'><i class='fas fa-trash'></i></a></td><td>`+
            `<a onclick='javascript:change(${i})' data-toggle="modal" data-target="#new2"><i class="fas fa-user-edit"></i></a></td></tr>`;
    }
    // Print the xml data in table form
    document.getElementById("id").innerHTML = table;
}

function add(){
	
    var bill=document.getElementById('exampleDataList').value;
    var name=document.getElementById('Name').value;
    var type=document.getElementById('type').value;
    var bill_amt=document.getElementById('bill').value;
    
    var item = xmlDoc.createElement('ITEM');

    var bill_id = xmlDoc.createElement('item_name');
    newText1=xmlDoc.createTextNode(bill);
    bill_id.appendChild(newText1);

    var pname = xmlDoc.createElement('price');
    newText2=xmlDoc.createTextNode(name);
    pname.appendChild(newText2);

    var ptype = xmlDoc.createElement('quantity');
    newText3=xmlDoc.createTextNode(type);
    ptype.appendChild(newText3);

    var bill_amount = xmlDoc.createElement('total');
    newText4=xmlDoc.createTextNode(bill_amt);
    bill_amount.appendChild(newText4);



    item.appendChild(bill_id);
    item.appendChild(pname);
    item.appendChild(ptype);
    item.appendChild(bill_amount);


    var y = xmlDoc.getElementsByTagName("ITEM");
    y[0].appendChild(item);
	
	
    // Print the xml data in table form
	

    document.getElementById("id").innerHTML = table;
	
    show(xmlDoc);
	display();
    $('#new').modal('hide');
}

var node2;
function change(node1){
    node2=node1;
    y=xmlDoc.getElementsByTagName("ITEM")[node1];
    document.getElementById('bill_id1').value=y.getElementsByTagName("item_name")[0].childNodes[0].nodeValue;
    document.getElementById('Name1').value=y.getElementsByTagName("price")[0].childNodes[0].nodeValue;
    document.getElementById('type1').value=y.getElementsByTagName("quantity")[0].childNodes[0].nodeValue;
    document.getElementById('bill1').value=y.getElementsByTagName("total")[0].childNodes[0].nodeValue;
}

function replace(){
    y=xmlDoc.getElementsByTagName("ITEM")[node2];
    y.getElementsByTagName("item_name")[0].childNodes[0].nodeValue=document.getElementById('bill_id1').value;
    y.getElementsByTagName("price")[0].childNodes[0].nodeValue=document.getElementById('Name1').value;
    y.getElementsByTagName("quantity")[0].childNodes[0].nodeValue=document.getElementById('type1').value;
    y.getElementsByTagName("total")[0].childNodes[0].nodeValue=document.getElementById('bill1').value;
    show(xmlDoc);
    $('#new2').modal('hide'); 
}