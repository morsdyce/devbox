<?php 
//phpinfo();


echo ab(1,2);
echo ab(3,4);
echo ab(5,6);

function ab($x, $y) {
	$a = $x;
	$b = $y;
	
	$c = $a + $b;
	
	return $c;
}

?>