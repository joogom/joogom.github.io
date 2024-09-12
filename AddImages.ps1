# Recursively rename files in all subfolders
Get-ChildItem -File -Recurse | Rename-Item -NewName { $_.Name -replace ".png_type1", "" }
Get-ChildItem -File -Recurse | Rename-Item -NewName { $_.Name -replace ".png_type2", "" }
Get-ChildItem -File -Recurse | Rename-Item -NewName { $_.Name -replace ".jpeg_type1", "" }
Get-ChildItem -File -Recurse | Rename-Item -NewName { $_.Name -replace ".jpeg_type2", "" }
Get-ChildItem -File -Recurse | Rename-Item -NewName { $_.Name -replace ".jpg_type1", "" }
Get-ChildItem -File -Recurse | Rename-Item -NewName { $_.Name -replace ".jpg_type2", "" }
Get-ChildItem -File -Recurse | Rename-Item -NewName { $_.Name -replace " ", "" }
Get-ChildItem -File -Recurse | Rename-Item -NewName { $_.Name -replace "_", "" }

# Copy the full paths of all files to the clipboard
(Get-ChildItem -File -Recurse | Select-Object -ExpandProperty FullName) -join "`r`n" | Set-Clipboard
