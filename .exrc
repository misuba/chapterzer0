set filetype=ruby
set foldlevel=2

" Rails testing
abbr rs response.should
abbr hs have_selector
abbr sn should_not
abbr bv be_valid
abbr rt render_template

" Common variables
abbr uu @user
abbr aa @attr
abbr tt @title


" For general use?
map  :sp .exrc
ab bef before(:each) do 
abbr rd redirect_to
