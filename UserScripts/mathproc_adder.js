// ==UserScript==
// @name       My Fancy New Userscript
// @namespace  http://use.i.E.your.homepage/
// @version    0.1
// @description  enter something useful
// @match      http://www.tutorialspoint.com/html5/html5_mathml.htm
// @copyright  2012+, You
// ==/UserScript==

var math = document.querySelector("math");
var link = document.createElement("a");
var linkText = document.createTextNode("MathProc");
link.appendChild(linkText);
link.title = "mathproc";
currentLoc = window.location.href.replace("http://","");
link.href = "mathproc://" + currentLoc;
//link.appendChild(math.firstChild);
//math.parentNode.insertBefore(link, math);
math.parentNode.appendChild(link);
alert('a');