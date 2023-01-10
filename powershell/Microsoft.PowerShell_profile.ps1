 oh-my-posh init pwsh --config 'C:/Users/Tapio Korvala/Documents/unicorn.omp.json' | Invoke-Expression

# Shows navigable menu of all options when hitting Tab
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadlineKeyHandler -Chord "Ctrl+Spacebar" -Function Complete
Set-PSReadlineOption -ShowToolTips

# Set BellStyle to audible to avoid the annoying beep
Set-PSReadlineOption -BellStyle Visual

# Autocompletion for arrow keys
Set-PSReadlineKeyHandler -Chord Ctrl+n -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Chord Ctrl+p -Function HistorySearchForward

# Smarter history
# Use next word when in prediction view style InlineView
Set-PSReadLineKeyHandler -Chord "Ctrl+f" -Function ForwardWord
Set-PSReadLineOption -PredictionSource HistoryAndPlugin
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows

# Aliases
#New-Alias -Name nvimp -Value nvim $PROFILE
#New-Alias -Name koti -Value Set-Location "C:\"
#New-Alias -Name kotig -Value Set-Location "C:\Git"
#New-Alias -Name motrix -Value Set-Location "C:\Git\motrix_new"
#New-Alias -Name gitaall -Value git add --all

function kotig {
    Set-Location "C:\Git"
}

function koti {
    Set-Location "C:\"
}

function motrix {
    Set-Location "C:\Git\motrix_new"
}

function jonne {
    Set-Location "C:\Git\JonneReviews"
}

function nvimp {
    nvim $PROFILE
}

function nvimh {
    nvim "C:\Users\Tapio Korvala\"
}

function nvimc {
    nvim "C:\Users\Tapio Korvala\AppData\Local\dotfiles_2022\nvim\.config\nvim\init.lua"
}

function gitpf {
    git pull; 
    git fetch
}

function gitaacapf {
    git add -A;
    git commit --amend --no-edit;
    git push origin HEAD --force
}

