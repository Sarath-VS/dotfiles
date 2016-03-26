
call pathogen#helptags()
call pathogen#infect()

syntax on
filetype plugin indent on
autocmd filetype python set expandtab

if &t_Co >= 256 || has("gui_running")
	    colorscheme mustang
    endif

    if &t_Co > 2 || has("gui_running")
	        " switch syntax highlighting on, when the terminal has colors
		"     syntax on
		"     endif
