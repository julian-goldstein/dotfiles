import XMonad

main :: IO ()
main = xmonad def
	{ terminal = "xterm"
	, modMask = mod4Mask
	, borderWidth = 3
	}
