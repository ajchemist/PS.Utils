function Get-ChronoVersionString
{
    param()
    $date_epoch = [int](Get-Date -Date (Get-Date -UFormat "%Y-%m-%d") -UFormat "%s")
    $epoch = [int](Get-Date -UFormat "%s")

    return (Get-Date -UFormat "%Y.%j.") + [string]($epoch - $date_epoch)
}


Export-ModuleMember -Function Get-ChronoVersionString
