param(
    [string]$NewFilePath,
    [string]$NewTitle
)

# 템플릿 파일 경로
$templatePath = "POSTTEMPLETE.md"

# 템플릿 파일 내용 읽기 (UTF-8 인코딩)
$templateContent = Get-Content -Path $TemplatePath -Raw -Encoding UTF8

# title의 첫 번째 줄 찾기 및 변경
$updatedContent = $templateContent -replace "(?m)^title:\s*(.*)$", "title: $NewTitle"

# 새로운 파일로 저장 (UTF-8 인코딩)
$updatedContent | Out-File -FilePath $NewFilePath -Encoding UTF8

Write-Host "파일이 성공적으로 생성되고 제목이 변경되었습니다: $NewFilePath"