#!/bin/bash

dir=$1

musicFiles=`find $dir -name "*.mp3" | wc -l`
movieFiles=`find $dir -name "*.mp4" | wc -l`

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
                    <td>Music</td>
                    <td>$musicFiles</td>
                </tr>
        
                <tr>
                    <td>Movie</td>
                    <td>$movieFiles</td>
                </tr>
                <tr>
                    <td>Total</td>
                    <td>$(($musicFiles+$movieFiles))</td>
                </tr>
            </table>
        </center>
    </body>
</html>" > 600610773Multimedia.html
