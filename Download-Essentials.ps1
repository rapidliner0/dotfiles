
[String]$path = $env:userprofile + '\downloads'
[String]$file='DownloadURLList.txt'

foreach($url in Get-Content $file -Encoding UTF8){
  $uri = New-Object System.Uri($url)
  $file = Split-Path $uri.AbsolutePath -Leaf
  [String]$argument =$url + " " + "-o " + (Join-Path $path $file)
  Start-Process -FilePath curl.exe -ArgumentList $argument -NoNewWindow
}
