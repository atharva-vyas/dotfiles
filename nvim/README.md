## Basic Configuration

```bash
git config --global --add safe.directory /Users/atharvavyas/.local/share/nvim/lazy
```

## Modes

- Insert mode: `i` (i for "insert")
- Normal mode: `<ESC>` (escape to "normal")
- Visual mode: `v` (v for "visual")

Leader key: `space` or `' '`

## Navigation

- Left: `h` (think "h" is on the left of "jkl")
- Down: `j` (think "j" looks like a downward arrow)
- Up: `k` (think "k" is above "j")
- Right: `l` (think "l" is on the right of "hjk")

### Cursor Movement

- Older cursor position: `CTRL-o` (o for "old")
- Newer cursor position: `CTRL-i` (i for "in")
- Start of next word: `w` (w for "word")
- End of next word: `e` (e for "end")
- Backward to start of word: `b` (b for "back")
- Backward to end of word: `ge` (g for "go", e for "end")

### Line Navigation

- Start of line: `0` (think of 0 as the start of a number line)
- End of line: `$` ($ often denotes end in regular expressions)
- Append after cursor: `a` (a for "append")
- Append to end of line: `A` (A for "Append at end")
- Insert at beginning of line: `I` (I for "Insert at start")

### File Navigation

- Cursor location and file info: `CTRL-g` (g for "get info")
- Move to end of file: `G` (G for "Go to end")
- Move to first line: `gg` (double g for "Go to start")
- Move to specific line: `[number]G` (Go to line number)

### Other Navigation

- Start/end of parenthesis: `%` (% looks like it could be a pair of parentheses)

## Editing

### Change and Delete

- Change/delete to next word: `cw`, `dw` (c for "change", d for "delete", w for "word")
- Change/delete to end of word: `ce`, `de` (e for "end")
- Change/delete to end of line: `c$`, `d$` ($ for "end of line")
- Change/delete entire line: `cc`, `dd` (double letter for "entire line")

- Use `ciw` to change inner word (change the whole word under cursor)
- Use `ci"` or `ci'` to change text inside quotes
- Use `ci[` to change text inside quotes

### Insert New Lines

- New line above cursor: `O` (O for "Open line above")
- New line below cursor: `o` (o for "open line below")

### Undo and Redo

- Undo: `u` (u for "undo")
- Undo changes to line: `U` (capital U for "Undo line")
- Redo: `CTRL-R` (R for "redo")

### Copy and Paste

- Copy (yank): `y` (y for "yank")
- Copy word: `yw` (yank word)
- Copy line: `yy` (yank whole line)
- Paste (put): `p` (p for "put")

### Replace

- Replace single character: `r` (r for "replace")
- Replace multiple characters: `R` (R for "Replace mode")

### Indentation

- Indent: `>>` (arrows pointing right)
- Outdent: `<<` (arrows pointing left)

### Comments

- Comment/uncomment current line: `gcc` (g for "go", cc for "comment")
- Comment/uncomment in visual mode: `gc` (g for "go", c for "comment")
- Comment/uncomment multiple lines: `[number]gc` (number of lines to comment)

## Search and Replace

- Search forward: `/[phrase]` (/ points forward)
- Search backward: `?[phrase]` (? looks like a backward /)
- Next match (same direction): `n` (n for "next")
- Next match (opposite direction): `N` (N for "Next reverse")

### Search Options

- Ignore case: `:set ic` (ic for "ignore case")
- Show partial matches: `:set is` (is for "incsearch")
- Highlight search: `:set hls` (hls for "highlight search")
- Temporary highlight search: `:set hl` (hl for "highlight")
- Disable option: `:set no[option]` (no for "negate")

### Replace

- Replace first occurrence in line: `:s/old/new` (s for "substitute")
- Replace all occurrences in line: `:s/old/new/g` (g for "global")
- Replace between two lines: `:[number],[number]s/old/new/g`
- Replace all occurrences in file: `:%s/old/new/g` (% for "whole file")
- Replace with confirmation: `:%s/old/new/gc` (c for "confirm")

## File Operations

- Execute command: `:![command]` (! for "execute")
- Quit without saving: `<ESC>:q!<ENTER>` (q for "quit", ! for "force")
- Save and quit: `<ESC>:wq<ENTER>` (w for "write", q for "quit")
- Save selected text to file: `:'<,'>w [filename]` (w for "write")
- Retrieve and merge files: `:r File.txt` (r for "read")

## Split Windows

- Vertical split: `:vsp filename` (vsp for "vertical split")
- Horizontal split: `:sp filename` (sp for "split")
- Navigate splits: `Ctrl-W` + `h`, `j`, `k`, `l` (W for "window")
- Resize splits: `Ctrl-W` + `+`, `-`, `<`, `>` (intuitive symbols)

## Repeating Commands

Format: `operator [number] motion`
Examples:
- Move cursor by two words: `2w` (2 words forward)
- Cut two words: `d2w` (delete 2 words)

## Plugin Management

- Lazy (plugin manager): `:Lazy`
- Mason (LSP manager): `:Mason`

## Key Mappings

- Code actions: `<leader>ca` (ca for "code action")
- Neotree (file explorer):
  - Open: `<leader>n` (n for "Neotree")
  - Add new file/directory: `a` (a for "add")
  - Rename: `r` (r for "rename")
  - Delete: `d` (d for "delete")
  - Copy: `y` (y for "yank")
  - Cut: `x` (x for "cut")
  - Paste: `p` (p for "paste")
  - Bulk mark: `m` (m for "mark")
- Fuzzy Find (files): `<leader>ff` (ff for "find file")
- Fuzzy Grep (text): `<leader>fg` (fg for "find grep")
- Auto format file: `<leader>gf` (gf for "global format")
- Session management:
  - Load: `<leader>sl` (sl for "session load")
  - New: `<leader>sn` (sn for "session new")
  - Update: `<leader>su` (su for "session update")
  - Delete: `<leader>sd` (sd for "session delete")
- Python venv:
  - Select venv: `<leader>vs` (vs for "venv select")
  - Use cached venv: `<leader>vc` (vc for "venv cached")

## Record Macro's

https://www.youtube.com/watch?v=bTmEqmtr_6I
1) start recording key: `q + <letter for the register>`
2) start pressing whatever keys you want to
3) stop recording key: `q`
- call the recorded macro: `@ + <letter for the register>`

## Additional Tips


3. Use `%` to jump between matching parentheses, brackets, or braces
4. Use `*` to search for the word under the cursor
5. Use `zz` to center the current line on the screen
6. Use `gg=G` to auto-indent the entire file
7. Use `:term` to open a terminal inside Vim/Neovim

Remember to install the Hack Nerd Font for Neotree icons and ripgrep for Fuzzy Grep functionality.

This expanded version includes mnemonics and explanations for most commands, making them easier to remember. It also includes some additional tips that vim users often find helpful.