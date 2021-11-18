# Requires gh cli to be installed
Function ConvertTo-Bool{
    [CmdletBinding()]
    param(
        [Parameter(Position=0)]
        [System.String]$inputVal
    )
    switch -regex ($inputVal.Trim())
    {
        "^(1|true|yes|on|enabled)$" { $true }

        default { $false }
    }
}
function Get-File {
    [CmdletBinding()]
      Param(
          [Parameter(Mandatory=$true, ValueFromPipeline=$true)]
          [string] $Repository,
          [Parameter(Mandatory=$true, ValueFromPipeline=$true)]
          [string] $FilePath,
          [string] $Refs = "",
          [string] $GithubToken = $Env:GITHUB_TOKEN,
          [string] $OutFile
      )

    # Get the download url of the file by gh cli
    $api = "https://api.github.com/repos/$Repository/contents/$FilePath"

    if (-not [string]::IsNullOrEmpty($Refs))
    {
        $api += "`?ref=$Refs"
    }

    $url = gh api $api --jq .download_url

    if ([string]::IsNullOrEmpty($url))
    {
        throw "$api is not reachable"
    }

    if (-not [string]::IsNullOrEmpty($OutFile))
    {
        # Create the parent path if not exist
        $dir = Split-Path $OutFile
        if (-not [string]::IsNullOrEmpty($dir))
        {
            New-Item -Path $dir -ItemType Directory -Force | Out-Null
        }
        # Download the file
        Invoke-WebRequest $url -OutFile $OutFile
    }
    else 
    {
        # Just show the file
        (Invoke-WebRequest $url).Content
    }

}
Export-ModuleMember -Function '*';
