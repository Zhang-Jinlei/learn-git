# C:\Users\admin\Documents\PowerShell # Microsoft.PowerShell_profile.ps1文件路径
Import-Module posh-git

# Set-Theme Paradox # 设置主题为 Paradox

Set-PSReadLineOption -PredictionSource History # 设置预测文本来源为历史记录
 
Set-PSReadlineKeyHandler -Key Tab -Function Complete # 设置 Tab 键补全
Set-PSReadLineKeyHandler -Key "Ctrl+d" -Function MenuComplete # 设置 Ctrl+d 为菜单补全和 Intellisense
Set-PSReadLineKeyHandler -Key "Ctrl+z" -Function Undo # 设置 Ctrl+z 为撤销
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward # 设置向上键为后向搜索历史记录
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward # 设置向下键为前向搜索历史纪录

function Get-GitStatus { & git status $args }
New-Alias -Name gs -Value Get-GitStatus -Force -Option AllScope

function Get-GitSummary { & git summary $args }
New-Alias -Name gsm -Value Get-GitSummary -Force -Option AllScope

function Get-GitCommit { & git commit -m $args }
New-Alias -Name gc -Value Get-GitCommit -Force -Option AllScope

function Get-GitCheckout { & git checkout $args }
New-Alias -Name gco -Value Get-GitCheckout -Force -Option AllScope

function Get-GitAdd { & git add $args }
New-Alias -Name ga -Value Get-GitAdd -Force -Option AllScope

function Get-GitLog { & git log $args }
New-Alias -Name gl -Value Get-GitLog -Force -Option AllScope

function Get-GitTree { & git log --graph --oneline --decorate $args }
New-Alias -Name glt -Value Get-GitTree -Force -Option AllScope

function Get-GitPush { & git push $args }
New-Alias -Name gps -Value Get-GitPush -Force -Option AllScope

function Get-GitPull { & git pull $args }
New-Alias -Name gpl -Value Get-GitPull -Force -Option AllScope

function Get-GitFetch { & git fetch $args }
New-Alias -Name f -Value Get-GitFetch -Force -Option AllScope

function Get-GitBranch { & git branch $args }
New-Alias -Name b -Value Get-GitBranch -Force -Option AllScope

function Get-GitRemote { & git remote -v $args }
New-Alias -Name r -Value Get-GitRemote -Force -Option AllScope