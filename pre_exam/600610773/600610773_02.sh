#!/bin/bash

dir=$1

mp3=`find $1 -name "*.mp3" | wc -l`
mp4=`find $1 -name "*.mp4" | wc -l`
all=`find $1 -name "*.*" | wc -l`

((amount=$mp3+$mp4))
((misc=$all-$mp3-$mp4))

echo "<html>
  <head>
    <title>Result</title>
  </head>
  <body><center>
     <table border=1>
       <tr>
         <td>File Type</td> <td>Quantity</td>
       </tr>
       <tr>
         <td>Music</td> <td>$mp3</td>
       </tr>
       <tr>
         <td>Video</td> <td>$mp4</td>
       </tr>
       <tr>
         <td>Misc</td> <td>$misc</td>
       </tr>
       <tr>
         <td>Total</td> <td>$all</td>
       </tr>
     </table>

   </center>
  </body>
</html>" > sampleTable.html
