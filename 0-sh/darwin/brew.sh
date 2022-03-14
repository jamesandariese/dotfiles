export HOMEBREW_CASK_OPTS="--appdir=${HOME}/Applications --fontdir=${HOME}/Library/Fonts"
eval $( $HOME/homebrew/bin/brew shellenv )


eval $( brew info --json=v1 --installed \
  | jq -r --arg PATH "$PATH" \
          --arg HOME "$HOME" \
          '(
             ($PATH|split(":")) +
             [.[]
               | select(.keg_only == true and .linked_keg == null) 
               | "\($HOME)/homebrew/opt/\(.name)/bin"
             ]
             | to_entries 
             | unique_by(.value)
             | sort_by(.key)
             | [.[].value]
             | join(":")
             | @sh "PATH=\(.)"
          )'
)
