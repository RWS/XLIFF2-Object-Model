param($installPath, $toolsPath, $package, $project)

Write-Host "Attempting to remove the old snk shared folder link."
$project.ProjectItems("sdl.snk").Remove();

Write-Host "Attempting to add a link to the new public snk in the project file list."
$project.ProjectItems.AddFromFile("$toolsPath\sdl.snk");

Write-Host "Attempting to set the snk reference to be against the nuget packagein the current folder"
## try to set the snk to be in the current folder
$project.Properties.Item("AssemblyOriginatorKeyFile").Value = "$toolsPath\sdl.snk";

## try to turn on delay signing
##$project.Properties.Item("DelaySign").Value = "true";


