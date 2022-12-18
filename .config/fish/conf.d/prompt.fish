function fish_prompt
    set -l last_status $status
    echo -n (set_color normal)' > '(set_color yellow;whoami)(set_color normal)' > '(set_color green;set -g fish_prompt_pwd_dir_length 3;prompt_pwd)
    if [ $last_status -gt 0 ]; then
        echo -n (set_color normal)' > '(set_color red)"[$last_status]"
    end
    echo
    echo (set_color normal;)'> '
end

function fish_right_prompt
    echo (fish_git_prompt)
end

function fish_mode_prompt
    switch $fish_bind_mode
        case default
            set_color --bold red
            echo '[N]'
        case insert
            set_color --bold green
            echo '[I]'
        case replace_one
            set_color --bold purple
            echo '[R]'
        case visual
            set_color --bold brmagenta
            echo '[V]'
        case '*'
            set_color --bold red
            echo '[?]'
    end
    set_color normal
end
