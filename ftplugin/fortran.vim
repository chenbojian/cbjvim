"edit by cbj
"

set expandtab
let s:extfname = expand("%:e")
if s:extfname ==? "f90"
    let fortran_free_source=1
    unlet! fortran_fixed_source
    set shiftwidth=2 " 设定 << 和 >> 命令移动时的宽度为 2
    set softtabstop=2 " 使得按退格键时可以一次删掉 2 个空格
    set tabstop=2 " 设定 tab 长度为 4
else
    let fortran_fixed_source=1
    unlet! fortran_free_source
    set shiftwidth=2 " 设定 << 和 >> 命令移动时的宽度为 4
    set softtabstop=0 
    set tabstop=2 " 设定 tab 长度为 4
endif
