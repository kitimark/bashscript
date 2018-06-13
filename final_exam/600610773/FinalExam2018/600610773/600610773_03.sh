#!/bin/bash

dir=$1

mkdir $dir/html
mkdir $dir/css
mkdir $dir/js

for file in `find $dir -name "*.html"`; do
    mv $file $dir/html
    shift
done

for file in `find $dir -name "*.css"`; do
    mv $file $dir/css
    shift
done

for file in `find $dir -name "*.js"`; do
    mv $file $dir/js
    shift
done

for file in `find $dir -not -name "*.html" -not -name "*.css" -not -name "*.js" -not -name "html" -not -name "css" -not -name "js" -not -name $dir`; do
    rm $file
done

htmlFiles=`find $dir -name "*.html" | wc -l`
cssFiles=`find $dir -name "*.css" | wc -l`
jsFiles=`find $dir -name "*.js" | wc -l`

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
                </tr>
                
                <tr>
                    <td>html</td>
                    <td>$htmlFiles</td>
                </tr>
        
                <tr>
                    <td>css</td>
                    <td>$cssFiles</td>
                </tr>
                <tr>
                    <td>js</td>
                    <td>$jsFiles</td>
                </tr>
                <tr>
                    <td>Total</td>
                    <td>$(($htmlFiles+$cssFiles+$jsFiles))</td>
                </tr>
            </table>
        </center>
    </body>
</html>" > 600610773File.html