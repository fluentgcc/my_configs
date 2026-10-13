# 设置pwsh

## pwsh

```
# 安装
winget install -i Microsoft.PowerShell 
```

## oh-my-posh

```
# 安装
winget install -i JanDeDobbeleer.OhMyPosh --source winget
```
```
# 使用， 置于ps1中
oh-my-posh init pwsh --config "~/.config/powerlevel10k_lean.omp.json" | Invoke-Expression
```

## PSReadLine
```
# 更新
pwsh -noprofile -command "Update-Module PSReadLine -AllowPrerelease"

# 安装
Install-Module posh-git -Scope CurrentUser
Install-Module oh-my-posh -Scope CurrentUser

# 安装到用户下
pwsh -noprofile -command "Update-Module  -Scope CurrentUser"

# 验证安装结果
Get-Module PSReadLine -ListAvailable
```

