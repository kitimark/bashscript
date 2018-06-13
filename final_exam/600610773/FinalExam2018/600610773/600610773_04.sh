#!/bin/bash

file=$1

i=0
for word in `sort $file | cut -d "," -f 2`; do
    ((price[$i]=word))
    ((i++))
    shift
done

i=0
for word in `sort $file | cut -d "," -f 3`; do
    ((quantity[$i]=word))
    ((i++))
    shift
done

for j in `seq $(($i+1))`; do
    ((j=$j-1))
    ((price[$j]=price[$j]*quantity[$j]))
    ((total+=price[$j]))
    ((amount+=quantity[$j]))
done

echo "<html>
    <head>
        <title>sampleTable</title>
    </head>

    <body>
        <center>
            <table border=\"1\">
                <tr bgcolor=\"#ff0000\">
                    <td width=\"300\">File Type</td>
                    <td width=\"300\">Quantity</td>
                    <td width=\"300\">Price</td>
                </tr>
                
                <tr>
                    <td>CPU</td>
                    <td>${quantity[0]}</td>
                    <td>${price[0]}</td>                    
                </tr>
        
                <tr>
                    <td>HDD</td>
                    <td>${quantity[1]}</td>
                    <td>${price[1]}</td>                    
                </tr>

                <tr>
                    <td>KEYBOARD</td>
                    <td>${quantity[2]}</td>
                    <td>${price[2]}</td>                    
                </tr>

                <tr>
                    <td>RAM</td>
                    <td>${quantity[3]}</td>
                    <td>${price[3]}</td>                    
                </tr>

                <tr>
                    <td>Total</td>
                    <td>$amount</td>
                    <td>$total</td>
                </tr>
            </table>
        </center>
    </body>
</html>" > 600610773Expense.html
