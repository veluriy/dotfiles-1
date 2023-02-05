# Usage

## tmux keybind

| key | action          |
| --- | --------------- |
| C-j | prefix          |
| K   | new window      |
| J   | kill window     |
| H   | previous window |
| L   | next window     |
| s   | split window    |
| v   | vsplit widow    |
| o   | next pane       |
| h   | left pane       |
| j   | down pane       |
| k   | up pane         |
| l   | right pane      |
| C-c | copy mode       |

## nvim keymap

| mode | key                | action                                 |
| ---- | ------------------ | -------------------------------------- |
| n/v  | Space              | leader key                             |
| i    | jk                 | switch normal mode and save            |
| i    | jj                 | switch normal mode                     |
| n/v  | C-Up               | move the current line up one line      |
| n/v  | C-Down             | move the current line down one line    |
| n    | te                 | :tabedit                               |
| n    | tc                 | :tabclose                              |
| n    | ss                 | :split                                 |
| n    | sv                 | :vsplit                                |
| n    | sh                 | left window                            |
| n    | sj                 | down window                            |
| n    | sk                 | up window                              |
| n    | sl                 | right window                           |
| n    | Left/Down/Up/Right | resize window                          |
| n    | Leader-z           | ZZ                                     |
| n    | C-s                | :w                                     |
| n    | U                  | C-r                                    |
| n    | Leader-Esc         | :nohlsearch                            |
| n    | Leader-%           | :source %                              |
| n    | +                  | C-a                                    |
| n    | -                  | C-x                                    |
| n    | C-a                | select all                             |
| t    | Esc                | switch normal mode                     |
| t    | jk                 | switch normal mode                     |
| n/v  | f                  | hop.hint_char1 after cursor            |
| n/v  | F                  | hop.hint_char1 before cursor           |
| n/v  | t                  | hop.hint_char1 after cursor offset -1  |
| n/v  | T                  | hop.hint_char1 before cursor offset -1 |
| n/v  | Leader-w           | hop.hint_words                         |
| n/v  | Leader-a           | hop.hint_anywhere                      |
| n/v  | Leader-l           | hop.hint_lines                         |
| n    | ;f                 | telescope.find_files                   |
| n    | ;r                 | telescope.live_grep                    |
| n    | \\                 | telescope.buffers                      |
| n    | ;t                 | telescope.help_tags                    |
| n    | ;;                 | telescope.resume                       |
| n    | ;e                 | telescope.diagnostics                  |
| n    | sf                 | telescope.file_browser                 |
| n    | gn                 | vim.lsp.buf.references                 |
| n    | gd                 | lspsaga.lsp_finder                     |
| n    | gr                 | lspsaga.rename                         |
| n    | K                  | lspsaga.hover_doc                      |
| n    | ge                 | lspsaga.show_line_diagnostics          |
| n    | gj                 | lspsaga.diagnostic_jump_next           |
| n    | gk                 | lspsaga.diagnostic_jump_prev           |
| n/x  | gx                 | lspsaga.code_action                    |
| n/t  | Leader-t           | FTerm.toggle                           |
| n    | Leader-b           | FTerm.btop                             |
| n    | Leader-h           | FTerm.htop                             |
| n    | Leader-g           | FTerm.gitui                            |
