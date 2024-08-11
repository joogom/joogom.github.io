# A, B, C ���� ��� ����
$sourceFolderA = "C:\Users\User\Pictures\2024-08-08 FUN EXPO\1. jpg\3"  # A ���� ���
$sourceFolderB = "F:\DCIM\102MSDCF"  # B ���� ���
$destinationFolderC = "C:\Users\User\Pictures\2024-08-08 FUN EXPO\1. jpg\��������3"  # C ���� ���

# Ȯ���ڸ� ������ ���� �̸� ��� ��������
$fileNamesInB = Get-ChildItem -Path $sourceFolderA -File | Select-Object @{Name='BaseName'; Expression={$_.BaseName}}

# B �������� A ������ ������ �̸�(Ȯ���� ����)�� ���� ������ ã�� C ������ �̵�
foreach ($fileBaseName in $fileNamesInB) {
    $fileInB = Get-ChildItem -Path $sourceFolderB -File | Where-Object { $_.BaseName -eq $fileBaseName.BaseName }
    if ($fileInB) {
        Move-Item -Path $fileInB.FullName -Destination $destinationFolderC
    }
}