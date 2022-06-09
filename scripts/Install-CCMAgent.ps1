
[CmdletBinding()]
param (
    # ConfigMgr site code
    [Parameter(Mandatory = $true)]
    [String]
    $SiteCode,

    # ConfigMgr site server
    [Parameter(Mandatory = $true)]
    [String]
    $SiteServer
)
    
begin {
        
}
    
process {
    Start-Process -FilePath "\\$SiteServer\SMS_$SiteCode\Client\ccmsetup.exe" -ArgumentList "/forceinstall /service SMSSITECODE=$SiteCode"
}
    
end {
        
}
