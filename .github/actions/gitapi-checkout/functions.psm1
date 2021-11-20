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


function Get-Files
{
    [CmdletBinding()]
      Param(
          [Parameter(Mandatory=$true, ValueFromPipeline=$true)]
          [string] $Repository,
          [Parameter(Mandatory=$true, ValueFromPipeline=$true)]
          [string[]] $Paths,
          [string] $Refs = "",
          [string] $GithubToken = $Env:GITHUB_TOKEN,
          [string] $OutDirectory
      )

      foreach ($path in $Paths)
      {
          $api = "https://api.github.com/repos/$Repository/contents/$path"
          if (-not [string]::IsNullOrEmpty($Refs))
          {
              $api += "`?ref=$Refs"
          }

          $response = gh api $api

          if ([string]::IsNullOrEmpty($response))
          {
              throw "$api is not reachable"
          }

          $result = $response | ConvertFrom-Json

          foreach($entry in $result)
          {
              if ($entry.type -eq 'file')
              {
                  Get-FileByGitUrl -Repository $Repository -OutFile (Join-Path $OutDirectory $entry.path) -GitUrl $entry.git_url -GithubToken $GithubToken
              }
              if ($entry.type -eq 'dir')
              {
                  Get-Files -Repository $Repository -Paths @($entry.path) -Refs $Refs -OutDirectory (Join-Path $OutDirectory $entry.path) -GithubToken $GithubToken
              }
          }
      }

}
function Get-FileByGitUrl
{
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory=$true, ValueFromPipeline=$true)]
        [string] $Repository,
        [Parameter(Mandatory=$true, ValueFromPipeline=$true)]
        [string] $GitUrl,
        [string] $GithubToken = $Env:GITHUB_TOKEN,
        [string] $OutFile
    )

    Write-Host "$GitUrl => $OutFile"
    $content = gh api $GitUrl --jq .content
    $encoded = gh api $GitUrl --jq .encoding

    # Decode
    if ($encoded -eq 'base64')
    {
        $content = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($content))
    }
    if (-not [string]::IsNullOrEmpty($OutFile))
    {
        # Create the parent path if not exist
        $dir = Split-Path $OutFile
        if (-not [string]::IsNullOrEmpty($dir))
        {
            New-Item -Path $dir -ItemType Directory -Force | Out-Null
        }
        $content | Out-File -Encoding UTF8 $OutFile
    }
    else 
    {
        # Just show the file
        $content
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

    $url = gh api $api --jq .git_url

    if ([string]::IsNullOrEmpty($url))
    {
        throw "$api is not reachable"
    }

    Write-Host "$url => $OutFile"
    $content = gh api $url --jq .content
    $encoded = gh api $url --jq .encoding

    # Decode
    if ($encoded -eq 'base64')
    {
        $content = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($content))
    }
    if (-not [string]::IsNullOrEmpty($OutFile))
    {
        # Create the parent path if not exist
        $dir = Split-Path $OutFile
        if (-not [string]::IsNullOrEmpty($dir))
        {
            New-Item -Path $dir -ItemType Directory -Force | Out-Null
        }


        $content | Out-File -Encoding UTF8 $OutFile
    }
    else 
    {
        # Just show the file
        $content
    }

}
Export-ModuleMember -Function '*';
