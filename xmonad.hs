import System.IO
import XMonad
import XMonad.Actions.Warp
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.EZConfig(additionalKeys)

main = xmonad =<< xmobar myConfig

myConfig = def { modMask = mod4Mask
               , normalBorderColor  = "#cccccc"
               , focusedBorderColor = "#cd8b00"
               , terminal = "st"
               } `additionalKeys`
               [ ((mod4Mask .|. shiftMask, xK_z), spawn "xlock")
               , ((mod4Mask, xK_p), spawn "dmenu_run -fn 'Hack:pixelsize=13:antialias=true:hinting=true' -nb '#002b36' -nf '#839496' -sb '#073642' -sf '#b58900'")
               ]
