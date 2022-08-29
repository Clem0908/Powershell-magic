Add-Type -AssemblyName System.Windows.Forms
$wsh = New-Object -ComObject wscript.shell

while ($true)
{  
  $Pos = [System.Windows.Forms.Cursor]::Position
  $r = Get-Random -Minimum 50 -Maximum 1250
  $x = ($pos.X % 500) + r
  $r = Get-Random -Minimum 50 -Maximum 1250
  $y = ($pos.Y % 500) + r
  [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($x, $y)
  $wsh = SendKeys("%({TAB})")
  $wsh = SendKeys("%({TAB})")
  Start-Sleep -Seconds 10
}
