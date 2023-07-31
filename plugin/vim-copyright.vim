let g:file_copyright_company = "river"
let g:file_copyright_rights = "All rights reserved."
let g:file_copyright_name = "tower_town"
let g:file_copyright_email = "tower_town@outlook.com"

" auto update copyright when save file. Default: 1; 0:close auto.
let g:file_copyright_auto_update = 1

let g:file_copyright_auto_filetypes = [
        \ 'sh', 'plx', 'pl', 'pm', 'py', 'python',
        \ 'h', 'hpp', 'c', 'cpp', 'java',
        \ 'ruby', 'rb', 'rake',
        \ 'uml', 'plantuml',
        \ 'go',
        \ 'vim',
\]

let g:file_copyright_comment_prefix_map  = {
    \"python": "\#", "py":"\#",
    \"cpp":"/*", "c":"/*", "h":"/*", "hpp":"/*",
    \"go":"/*",
    \"vim":"\"",
    \"sh":"\#", "shell":"\#",
\}

let g:file_copyright_comment_mid_prefix_map = {
    \"python": "\#", "py":"\#",
    \"cpp":"\#", "c":"\#", "h":"\#", "hpp":"\#",
    \"go":"\#",
    \"vim":"\"",
    \"sh":"\#", "shell":"\#",
\}

let g:file_copyright_comment_end_map = {
    \"cpp":"*/", "c":"*/", "h":"*/", "hpp":"*/",
    \"go":"*/",
\}
