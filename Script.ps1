$Destino = "Cole_Caminho_Do_Servidor"
$AtalhoLocal = "$env:USERPROFILE\Desktop\Administrativo.lnk"

if (-not (Test-Path $AtalhoLocal)) {
    $WshShell = New-Object -ComObject WScript.Shell
    $Shortcut = $WshShell.CreateShortcut($AtalhoLocal)
    $Shortcut.TargetPath = $Destino
    $Shortcut.Save()
}
