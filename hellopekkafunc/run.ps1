using namespace System.Net

# Input bindings are passed in via param block.
param($Request)

Write-Host "Hello host from the script"
$HTML = "Hello Pekka"

Push-OutputBinding -Name Response -Value (@{
        StatusCode  = "ok"
        ContentType = "text/html"
        Body        = $HTML
    })



