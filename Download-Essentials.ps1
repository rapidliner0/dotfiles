# パラメータとして、ファイルを保存するパス、ダウンロードファイル・リストのファイル名を宣言
[String]$path = $env:userprofile + '\downloads'
[String]$file='DownloadURLList.txt'

# ファイルリストから順にURLを抽出
foreach($url in Get-Content $file -Encoding UTF8){
    # 取り出したURLからファイル名を取り出し、変数$fileにセット
  $uri = New-Object System.Uri($url)
  $file = Split-Path $uri.AbsolutePath -Leaf
  # 指定されたURLからファイルをダウンロードし、同名のファイル名で保存
  [String]$argument =$url + " " + "-o " + (Join-Path $path $file)
  Start-Process -FilePath curl.exe -ArgumentList $argument -NoNewWindow
}
