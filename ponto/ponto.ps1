# Create an Internet Explorer object
$ie = New-Object -ComObject 'internetExplorer.Application'
$ie.Visible= $true # Make it visible

# Open all websites
$ie.Navigate("https://aplic.inmetrics.com.br/pontoeletronico/") 

# Script to wait till webpage is downloaded into the browsers.
while ($ie.Busy -eq $true){Start-Sleep -seconds 15;}

$usernamefield = $ie.Document.getElementByID('edMatricula')
$usernamefield.value = '32796839800'
#$usernamefield.value = 'cpf'

$passwordfield = $ie.Document.getElementByID('edSenha')
$passwordfield.value = 'Pistols@01'
#$passwordfield.value = 'senha'

$Link=$ie.Document.getElementByID('enviar')
$Link.click()

Start-Sleep -seconds 20
Get-Process iexplore | Foreach-Object { $_.CloseMainWindow() }

{exit}