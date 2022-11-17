<#
.Synopsis
   Converts a PowerShell object to a Markdown table.
.Description
   The ConvertTo-Markdown function converts a Powershell Object to a Markdown formatted table
.EXAMPLE
   Get-Process | Where-Object {$_.mainWindowTitle} | Select-Object ID, Name, Path, Company | ConvertTo-Markdown
 
   This command gets all the processes that have a main window title, and it displays them in a Markdown table format with the process ID, Name, Path and Company.
.EXAMPLE
   ConvertTo-Markdown (Get-Date)
 
   This command converts a date object to Markdown table format
.EXAMPLE
   Get-Alias | Select Name, DisplayName | ConvertTo-Markdown
 
   This command displays the name and displayname of all the aliases for the current session in Markdown table format
#>
Function ConvertTo-Markdown {
    [CmdletBinding()]
    [OutputType([string])]
    Param (
        [Parameter(
            Mandatory = $true,
            Position = 0,
            ValueFromPipeline = $true
        )]
        [PSObject[]]$InputObject
    )

    $header = @()
    $separator = @()
    $body = @()

    ForEach($item in $InputObject) {

        $item.PSObject.Properties | ForEach-Object{
            $header += $_.Name
            $separator += ":--"
            $body += $($_.Value).Replace('\', '\\').Replace('|','\|').Replace('*', '\*')
        }
    }

    $output = '|' + ($header -join '|') + '|`n|' + ($separator -join '|') + '|`n|' + ($body -join '|') + '|`n'

    $output
}