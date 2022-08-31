Add-Type -AssemblyName System.Windows.Forms

while ($true)
{  
  $wshell = New-Object -ComObject wscript.shell
  $x = Get-Random -Minimum 500 -Maximum 2000
  $y = Get-Random -Minimum 500 -Maximum 1200
  [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($x, $y)
  $wshell.SendKeys('%({TAB})')
  Start-Sleep -Seconds 10
}
