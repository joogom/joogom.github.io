param(
    [string]$NewFileName,
    [string]$dddd,
    [string]$nickname,
    [string]$sns_type,
    [string]$sns_id
)

# sns_type�� ���� URL�� sns_type_kr ����
if ($sns_type -eq "x") {
    $url = "https://x.com/$sns_id"
    $sns_type_kr = "Ʈ����"
} else {
    $url = "https://www.instagram.com/$sns_id"
    $sns_type = "insta"
    $sns_type_kr = "�ν�Ÿ"
}

# Model ���ڿ� ����
$Model = "Model: <a href=`"$url`" target=`"_blank`">$sns_type_kr $nickname ��(@$sns_id)</a>"

# ���ο� ���� ����
$content = @"
---
dddd: $dddd
nickname: $nickname
sns_type: $sns_type
sns_id: $sns_id
---

<a name="$sns_id"></a>
$Model

![DSC08508-Bearbeitet.jpg](/assets/img/2023/12-02/DSC08508-Bearbeitet.jpg)
"@

# ���� �̸�
$fileName = "${NewFileName}_${sns_id}"
$NewFilePath = ".\_includes\_models\${fileName}.md"

# ���ο� ���Ϸ� ���� (UTF-8 ���ڵ�)
$content | Out-File -FilePath $NewFilePath -Encoding UTF8

Write-Host "������ ���������� �����Ǿ����ϴ�: $NewFilePath"

# Ŭ�����忡 ����.
$fileName | Set-Clipboard