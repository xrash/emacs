;;; -*- lexical-binding: t -*-
(require 'treesit)

;; add tree sitter recipes
;; basically teaching tree sitter where grammars live
;; when tree sitter knows where grammars live, we can actually install them

(add-to-list 'treesit-language-source-alist
             '(markdown "https://github.com/tree-sitter-grammars/tree-sitter-markdown"
                        "split_parser" "tree-sitter-markdown/src"))

(add-to-list 'treesit-language-source-alist
             '(markdown-inline "https://github.com/tree-sitter-grammars/tree-sitter-markdown"
                               "split_parser" "tree-sitter-markdown-inline/src"))

(add-to-list 'treesit-language-source-alist
             '(typescript
               "https://github.com/tree-sitter/tree-sitter-typescript"
               "master"
               "typescript/src"))

(add-to-list 'treesit-language-source-alist
             '(tsx
               "https://github.com/tree-sitter/tree-sitter-typescript"
               "master"
               "tsx/src"))

(add-to-list 'treesit-language-source-alist
             '(go
               "https://github.com/tree-sitter/tree-sitter-go"
               "master"
               "src"))

(add-to-list 'treesit-language-source-alist
             '(json
               "https://github.com/tree-sitter/tree-sitter-json"
               "master"
               "src"))

(add-to-list 'treesit-language-source-alist
             '(bash
               "https://github.com/tree-sitter/tree-sitter-bash"
               "master"
               "src"))

(add-to-list 'treesit-language-source-alist
             '(rust
               "https://github.com/tree-sitter/tree-sitter-rust"
               "master"
               "src"))
