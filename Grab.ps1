# A, B, C 폴더 경로 설정
$sourceFolderA = "C:\Users\User\Pictures\2024-08-08 FUN EXPO\1. jpg\3"  # A 폴더 경로
$sourceFolderB = "F:\DCIM\102MSDCF"  # B 폴더 경로
$destinationFolderC = "C:\Users\User\Pictures\2024-08-08 FUN EXPO\1. jpg\가져오기3"  # C 폴더 경로

# 확장자를 제외한 파일 이름 목록 가져오기
$fileNamesInB = Get-ChildItem -Path $sourceFolderA -File | Select-Object @{Name='BaseName'; Expression={$_.BaseName}}

# B 폴더에서 A 폴더와 동일한 이름(확장자 제외)을 가진 파일을 찾아 C 폴더로 이동
foreach ($fileBaseName in $fileNamesInB) {
    $fileInB = Get-ChildItem -Path $sourceFolderB -File | Where-Object { $_.BaseName -eq $fileBaseName.BaseName }
    if ($fileInB) {
        Move-Item -Path $fileInB.FullName -Destination $destinationFolderC
    }
}