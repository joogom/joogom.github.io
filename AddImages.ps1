Get-ChildItem -File | Rename-Item -NewName { $_.Name -replace ".png_type1", "" }
Get-ChildItem -File | Rename-Item -NewName { $_.Name -replace ".png_type2", "" }
Get-ChildItem -File | Rename-Item -NewName { $_.Name -replace ".jpeg_type1", "" }
Get-ChildItem -File | Rename-Item -NewName { $_.Name -replace ".jpeg_type2", "" }
Get-ChildItem -File | Rename-Item -NewName { $_.Name -replace ".jpg_type1", "" }
Get-ChildItem -File | Rename-Item -NewName { $_.Name -replace ".jpg_type2", "" }
Get-ChildItem -File | Rename-Item -NewName { $_.Name -replace "_", "" }
(Get-ChildItem -File | Select-Object -ExpandProperty FullName) -join "`r`n" | Set-Clipboard
