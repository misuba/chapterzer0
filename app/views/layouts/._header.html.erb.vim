let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
imap <F3> <F3>
map 	 za
map  :set foldmethod=indent
vmap K gq
nmap K gqap
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
map <F2> :set filetype=vim
map <F1> :set filetype=ruby
nmap <F3> :set invpaste paste?
map!  => 
map!  <% %>2hi
let &cpo=s:cpo_save
unlet s:cpo_save
set autowrite
set background=dark
set backspace=indent,eol,start
set exrc
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set history=50
set incsearch
set nomodeline
set pastetoggle=<F3>
set printoptions=paper:letter
set ruler
set runtimepath=~/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim72,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after
set secure
set shellcmdflag=-ic
set shiftwidth=2
set shortmess=filnxtToOs
set smartcase
set smartindent
set smarttab
set softtabstop=2
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set tabstop=2
set terse
set wrapmargin=8
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Dropbox/writing/code/pmarg/pmonline/app/views/layouts
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +0 _header.html.erb
args _header.html.erb
edit _header.html.erb
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal balloonexpr=RubyBalloonexpr()
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=:#
setlocal commentstring=<%#%s%>
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'eruby'
setlocal filetype=eruby
endif
set foldcolumn=2
setlocal foldcolumn=2
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=1
setlocal foldlevel=1
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.rb','')
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=ri
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal nomodeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,~/.rvm/rubies/ruby-1.9.2-p180/lib/ruby/site_ruby/1.9.1,~/.rvm/rubies/ruby-1.9.2-p180/lib/ruby/site_ruby/1.9.1/i686-linux,~/.rvm/rubies/ruby-1.9.2-p180/lib/ruby/site_ruby,~/.rvm/rubies/ruby-1.9.2-p180/lib/ruby/vendor_ruby/1.9.1,~/.rvm/rubies/ruby-1.9.2-p180/lib/ruby/vendor_ruby/1.9.1/i686-linux,~/.rvm/rubies/ruby-1.9.2-p180/lib/ruby/vendor_ruby,~/.rvm/rubies/ruby-1.9.2-p180/lib/ruby/1.9.1,~/.rvm/rubies/ruby-1.9.2-p180/lib/ruby/1.9.1/i686-linux,~/.rvm/gems/ruby-1.9.2-p180/gems/ZenTest-4.5.0/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/abstract-1.0.0/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/actionmailer-3.0.7/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/actionpack-3.0.7/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/activemodel-3.0.7/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/activerecord-3.0.7/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/activeresource-3.0.7/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/activesupport-3.0.7/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/annotate-models-1.0.4/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/arel-2.0.10/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/autotest-4.4.6/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/autotest-notification-2.3.1/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/builder-2.1.2/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/bundler-1.0.14/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/diff-lcs-1.1.2/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/erubis-2.6.6/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/factory_girl-1.3.3/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/factory_girl_rails-1.0.1/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/factory_girl_rails-1.0/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/faker-0.9.5/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/gravatar_image_tag-1.0.0/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/i18n-0.5.0/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/mail-2.2.19/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/mime-types-1.16/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/nokogiri-1.4.4/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/polyglot-0.3.1/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/rack-1.2.3/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/rack-mount-0.6.14/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/rack-test-0.5.7/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/rails-3.0.7/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/railties-3.0.7/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/rake-0.9.1/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/rake-0.9.2/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/rspec-2.0.1/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/rspec-2.6.0/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/rspec-core-2.0.1/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/rspec-core-2.6.4/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/rspec-expectations-2.0.1/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/rspec-expectations-2.6.0/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/rspec-mocks-2.0.1/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/rspec-mocks-2.6.0/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/rspec-rails-2.0.1/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/rspec-rails-2.6.1/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/spork-0.8.5/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/sqlite3-1.3.3/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/thor-0.14.6/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/treetop-1.4.9/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/tzinfo-0.3.27/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/webrat-0.7.1/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/webrat-0.7.3/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/will_paginate-2.3.15/lib,~/.rvm/gems/ruby-1.9.2-p180/gems/will_paginate-3.0.pre2/lib,~/.rvm/gems/ruby-1.9.2-p180@global/gems/bundler-1.0.0.rc.5/lib,~/.rvm/gems/ruby-1.9.2-p180@global/gems/rake-0.9.1/lib
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal smartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'eruby'
setlocal syntax=eruby
endif
setlocal tabstop=2
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=8
silent! normal! zE
11,22fold
23,36fold
9,37fold
9
normal zo
11
normal zc
23
normal zc
9
normal zc
let s:l = 1 - ((0 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOs
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
