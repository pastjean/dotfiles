" TODO: create cssMaskingProp group and cssMaskingValue group
syn match cssFontProp contained "\<mask\(-\(image\|source-type\|repeat\|position\|clip\|origin\|size\|type\)\)\=\>"
syn match cssFontProp contained "\<mask-box-image\(-\(source\|slice\|width\|outset\|repeat\)\)\=\>"
syn match cssFontProp contained "\<clip-\(path\|rule\)\>"
syn keyword cssFontAttr contained evenodd luminance alpha

" http://www.w3.org/TR/css-masking/#MaskElement
" syn keyword cssTagName mask
