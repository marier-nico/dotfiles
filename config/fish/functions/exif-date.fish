function exif-date --wraps exiftool
  for f in (ls $argv)
    set touchDate (exiftool -DateTimeCreated -DateCreated -CreateDate -MetadataDate $f | head -n1 | rg -o '\d{4}:\d{2}:\d{2} \d{2}:\d{2}' | tr -d '\:[:space:]')

    if test -n "$touchDate"
      touch -t $touchDate $f
    else
      echo "⚠️ $f missing CreateDate attribute"
    end
  end
end
