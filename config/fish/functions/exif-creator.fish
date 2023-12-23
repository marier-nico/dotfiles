function exif-creator --wraps exiftool --argument creator 
  exiftool -xmp:Creator="$creator" -xmp:Rights='https://creativecommons.org/licenses/by-nc-nd/2.0/' -overwrite_original $argv[2..-1]
end 
