param(
    [string]$NewFileName,
    [string]$dddd,
    [string]$nickname,
    [string]$sns_type,
    [string]$sns_id
)

# sns_type에 따라 URL과 sns_type_kr 설정
if ($sns_type -eq "x") {
    $url = "https://x.com/$sns_id"
    $sns_type_kr = "트위터"
} else {
    $url = "https://www.instagram.com/$sns_id"
    $sns_type = "insta"
    $sns_type_kr = "인스타"
}

# Model 문자열 설정
$Model = "Model: <a href=`"$url`" target=`"_blank`">$sns_type_kr $nickname 님(@$sns_id)</a>"

# 새로운 내용 생성
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

# 파일 이름
$fileName = "${NewFileName}_${sns_id}"
$NewFilePath = ".\_includes\_models\${fileName}.md"

# 새로운 파일로 저장 (UTF-8 인코딩)
$content | Out-File -FilePath $NewFilePath -Encoding UTF8

Write-Host "파일이 성공적으로 생성되었습니다: $NewFilePath"

# 클립보드에 복사.
$fileName | Set-Clipboard