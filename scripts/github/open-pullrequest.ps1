[CmdletBinding()]
Param (
    [string]$base = "main",
    [string]$repo = $Env:GITHUB_REPOSITORY,
    [string]$headRepoOwner = $Env:GITHUB_ACTOR,
    [string]$headRef = $Env:GITHUB_HEAD_REF
)

# Check GITHUB_TOKEN
if ($null -eq $Env:GITHUB_TOKEN)
{
    throw "Need to set GITHUB_TOKEN environment variable to use GH CLI."
}

# Check if the PR is already open
$pulls = gh api "repos/$repo/pulls?state=open&base=$base&head=$headRepoOwner`:$headRef" | ConvertFrom-Json

if ($null -ne $pulls)
{
    $pulls.html_url | ForEach-Object {
        Write-Host "Pull request is already open at $_"
    }
    return
}


# Compare 2 branches
$compare = gh api "repos/$repo/compare/$base...$headRepoOwner`:$headRef" | ConvertFrom-Json

if ($compare.status -eq 'identical')
{
    Write-Host "$headRepoOwner`:$headRef == $base. No need to open a PR"
    return
}


# Open PR
$body = @{
    title = "[Housekeeping]$headRepoOwner`:$headRef -> $base"
    head = "$headRepoOwner`:$headRef"
    base = $base
    body = "Triggered by bot"
} | ConvertTo-Json

$result = $body | gh api "repos/$repo/pulls" -X POST --input - | ConvertFrom-Json

if ($null -ne $result)
{

    Write-Host "Pull request is open at $($result.html_url)"

    if ($null -ne $Env:GITHUB_STEP_SUMMARY)
    {
        "Pull request is open at $($result.html_url)" | Add-Content $Env:GITHUB_STEP_SUMMARY
    }

}
else
{
    throw "Can't open Pull request $headRepoOwner`:$headRef -> $base"
}

