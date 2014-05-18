on open location this_URL
	tell application "Terminal"
		do script "/Users/gerardoc/mat.rb " & this_URL & " ;/Applications/Mathematica.app/Contents/MacOS/MathKernel -initfile mat.m"
		activate
	end tell
end open location