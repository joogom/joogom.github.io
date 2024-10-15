# A, B, C ���� ��� ����
$sourceFolderA = "C:\Users\User\Pictures\2024-09-29 ��� �������&����Ÿ Ʈ��\2"  # A ���� ���
$sourceFolderB = "C:\Users\User\Pictures\2024-09-29 ��� �������&����Ÿ Ʈ��\3. raw"  # B ���� ���
$destinationFolderC = "C:\Users\User\Pictures\2024-09-29 ��� �������&����Ÿ Ʈ��"  # C ���� ���

# # Ȯ���ڸ� ������ ���� �̸� ��� ��������
# $fileNamesInB = Get-ChildItem -Path $sourceFolderA -File | Select-Object @{Name='BaseName'; Expression={$_.BaseName}}

# # B �������� A ������ ������ �̸�(Ȯ���� ����)�� ���� ������ ã�� C ������ �̵�
# foreach ($fileBaseName in $fileNamesInB) {
#     $fileInB = Get-ChildItem -Path $sourceFolderB -File | Where-Object { $_.BaseName -eq $fileBaseName.BaseName }
#     if ($fileInB) {
#         Move-Item -Path $fileInB.FullName -Destination $destinationFolderC
#     }
# }

# Ȯ���ڸ� ������ ���� �̸� ��Ͽ��� "_" ����
$fileNamesInB = Get-ChildItem -Path $sourceFolderA -File | 
    Select-Object @{Name='BaseName'; Expression={$_.BaseName -replace '_', ''}}

# B �������� A ������ ������ �̸�(Ȯ���� ����)�� ���� ������ ã�� C ������ �̵�
foreach ($fileBaseName in $fileNamesInB) {
    $fileInB = Get-ChildItem -Path $sourceFolderB -File | 
        Where-Object { ($_.BaseName -replace '_', '') -eq $fileBaseName.BaseName }
    if ($fileInB) {
        Move-Item -Path $fileInB.FullName -Destination $destinationFolderC
    }
}