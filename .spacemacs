;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install onl(= 1 1)y unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     javascript
     yaml
     markdown
     ;;javascript
     csv
     ;;html
     ;; osx
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     ;;helm
     auto-completion
     ;; better-defaults
     emacs-lisp
     git
     ;; markdown
     ;; org
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     ;; spell-checking
     ;; syntax-checking
     ;; version-control
     ;; python
     clojure
     ;; parinfer
     restclient
     ;; ess
     ;; elm
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(
                                      command-log-mode
                                      tabbar
                                      ;; tabbar-ruler
                                      drag-stuff
                                      paredit
                                      ht
                                      scad-mode
                                      )
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; w(require 'helm-bookmark)hen the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner nil
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; Example for 5 recent files and 7 projects: '((recents . 5) (projects . 7))
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   ;; (default nil)
   dotspacemacs-startup-lists '(recents)
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(organic-green
                         spacemacs-dark
                         spacemacs-light)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Variable"
                               :size 24
                               :weight normal
                               :width normal
                               :powerline-scale 1.2)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m)
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts t
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize 't
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'right
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar 't
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup 't
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 80
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; If non nil line numbers are turned on in all `prog-mode' and `text-mode'
   ;; derivatives. If set to `relative', also turns on relative line numbers.
   ;; (default nil)
   dotspacemacs-line-numbers `t
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup `nil
   truncate-lines 't

   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs
initialization after layers configuration. This is the place
where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a
package is loaded, you should place your code here."

  ;; this doesnt work
  ;; (local-set-key (kdb "C-s-l") 'dotspacemacs/sync-configuration-layers)

  ;; TODO
  ;; Put all cider commands into cider not global
  ;; Fix paredit
  ;; Add project / allowed files to tabbar

  (require 'warnings)
  (add-to-list 'warning-suppress-types '(undo discard-info))

  (cua-mode 't)
  ;;(C-mode t)
  (setq cua-keep-region-after-copy t) ;; Standard Windows behaviour


  ;; set keys for Apple keyboard, for emacs in OS X
  (setq mac-option-modifier 'meta) ; make alt key do Meta
  (setq mac-command-modifier 'super) ; make cmd key do Super
  (setq mac-control-modifier 'control) ; make Control key do Control
  (setq ns-function-modifier 'hyper)  ; make Fn key do Hyper

  ;; Fix stage mode-line colours
  (setq ns-use-srgb-colorspace nil)

  ;; Clojure shortcuts
  (add-hook 'cider-repl-mode-hook #'company-mode)
  (add-hook 'cider-mode-hook #'company-mode)

  ;; (add-hook 'cider-mode-hook #'turn-off-smartparens-mode)
  ;; (add-hook 'cider-mode-hook #'paredit-mode)
  ;; (add-hook 'cider-repl-mode-hook #'turn-off-smartparens-mode)
  ;; (add-hook 'cider-repl-mode-hook #'paredit-mode)

  ;; Cider settings
  (setq cider-annotate-completion-candidates 't)
  (setq cider-auto-jump-to-error 'never)

  (setq cider-show-error-buffer nil)
  (setq cider-repl-history-file ".cider-history")
  (setq cider-repl-display-in-current-window 't)
  (setq cider-repl-pop-to-buffer-on-connect 't)
  (setq cider-repl-scroll-on-output 't)
  (setq cider-stacktrace-print-length 500)
  (setq cider-stacktrace-print-level 500)
  (setq cider-stacktrace-detail-max 10)
  (setq undo-outer-limit 800000)

  ;; I dont know if this works yet
  (defun clj-hook ()
    (local-set-key (kbd "C-M-l") 'cider-eval-buffer)
    (local-set-key (kbd "<C-M-return>") 'cider-eval-region))

  (add-hook 'clojure-mode-hook 'clj-hook)

  (defun cider-clear-repl-and-run-test ()
    (interactive)
    (cider-eval-buffer)
    (cider-switch-to-repl-buffer)
    (cider-repl-clear-buffer)
    (previous-buffer)
    (cider-test-run-test)
    )

  (defun cider-connect-gradle-clojureRepl ()
    (interactive)
    (cider-nrepl-connect (list :host "localhost"
                               :port 7888) ))

  ;;(global-set-key (kbd "<C-s-tab>") 'cider-format-defun)
  (global-set-key (kbd "C-M-h") 'cider-doc) ;; H
  (global-set-key (kbd "C-M-/") 'comment-line)
  (global-set-key (kbd "C-M-n") 'cider-repl-set-ns)  ;; N
  (global-set-key (kbd "C-M-c") 'cider-repl-clear-buffer) ;; C
  (global-set-key (kbd "C-M-r") 'cider-connect-gradle-clojureRepl) ;; R
  (global-set-key (kbd "C-M-i") 'cider-format-region)  ;; I
  (global-set-key (kbd "<C-M-l>") 'cider-inspect-last-result)
  ;;(global-set-key (kbd "C-M-t") 'cider-test-run-test)
  (global-set-key (kbd "C-M-t") 'cider-clear-repl-and-run-test)
  (global-set-key (kbd "C-M-g") 'cider-find-var) ;; G
  (global-set-key (kbd "<C-M-right>") 'forward-sexp)
  (global-set-key (kbd "<C-M-left>") 'backward-sexp)

  (add-hook 'cider-mode-hook #'eldoc-mode)

  (setq cider-save-file-on-load t)

  ;; XML formatting with xlint installed
  ;; (defun xml-format ()
    ;; (interactive)
    ;; (save-excursion
      ;; (shell-command-on-region (region-beginning) (region-end))
      ;; )
    ;; )

  (global-set-key (kbd "<s-t>") 'toggle-truncate-lines)

  ;; (defun copy-nice ()
    ;; (interactive)
    ;; (kill-ring-save)
    ;; (cua-copy-region))

 ;; To refresh SPC f e R

  ;; Copy paste. I know right.
 ;; (define-key global-map [?\C-x] 'kill-region)
  (global-set-key (kbd "»") 'cua-cut-region) ;; AlrGr-x
 ;; (define-key global-map [?\C-c] 'kill-ring-save)
  (global-set-key (kbd "¢") 'cua-copy-region) ;; AtlGr-c
 ;; (define-key global-map [?\C-v] 'yank)
  (global-set-key (kbd "“") 'cua-paste) ;;  AltGr-v
 ;; (define-key global-map [?\C-z] 'undo)
  (global-set-key (kbd "«") 'undo )
  ;; (define-key global-map [?\C-Z] 'redo)
  ;; (global-set-key (kbd "") 'redo)
  (setq cua-keep-region-after-copy nil)

 (define-key global-map [?\C-s] 'save-buffer)
 (define-key global-map [?\C-=] 'text-scale-increase)
 (define-key global-map [?\C--] 'text-scale-decrease)
 (setq evil-want-fine-undo t)

  ;; Open and find
  (global-set-key (kbd "C-ø") 'projectile-find-file-dwim)
  (define-key global-map [?\C-h] 'projectile-grep)


   ;;; esc quits
  ;;(define-key evil-normal-state-map [escape] 'keyboard-quit)
  (define-key evil-normal-state-map [escape] 'evil-insert-state)
  (define-key evil-visual-state-map [escape] 'keyboard-quit)
  (define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
  (define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
  (define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
  (define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
  (define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)

  ;; (eval-after-load "cider"
    ;; '(global-set-key (kbd "<C-s-r>") (lambda ()
                                   ;; (interactive)
                                   ;; (projectile-save-project-buffers)
                                   ;; (spacemacs/cider-send-buffer-in-repl-and-focus)
                                   ;; (cider-repl-clear-buffer)
                                   ;; (cider-repl-set-ns "repl")
                                   ;; (cider-repl--replace-input "(require 'repl)")
                                   ;; (cider-repl-return)
                                   ;; (cider-repl--replace-input "(in-ns 'repl)")
                                   ;; (cider-repl-return)
                                   ;; (cider-repl--replace-input "(reset)")
                                   ;; (cider-repl-return)
                                   ;; (previous-buffer)
                                   ;; )))

  ;; Make ‘-’ a word character
  ;; (modify-syntax-entry ?- "w" clojure-mode-syntax-table)

  ;; Expand regions
  (require 'expand-region)
  (global-set-key (kbd "<C-M-up>") #'er/expand-region)
  (global-set-key (kbd "<C-M-down>") #'er/contract-region)

  ;; Random editor changes
  (delete-selection-mode 1)  ; Does not seem to work as promised
  (global-set-key (kbd "s-i") 'indent-region)

  ;; draggin
  ;; (drag-stuff-global-mode 1)
  ;; (drag-stuff-mode 't)
  ;; (global-set-key [M-s-up] 'drag-stuff-up)
  ;; (global-set-key [M-s-down] 'drag-stuff-down)

  ;; Move windows
  (global-set-key (kbd "<M-right>") #'evil-window-right)
  (global-set-key (kbd "<M-left>") #'evil-window-left)
  (global-set-key (kbd "<M-up>") #'evil-window-up)
  (global-set-key (kbd "<M-down>") #'evil-window-down)

  ;; Set global word move
  ;; (global-set-key (kbd "<M-f>") #'subword-forward)
  ;; (global-set-key (kbd "<M-s>") #'subword-backward)
  ;; (global-set-key (kbd "<M-d>") #'evil-forward-paragraph)
  ;; (global-set-key (kbd "<M-e>") #'evil-backward-paragraph)

  (global-set-key (kbd "<C-right>") #'evil-end-of-line)
  (global-set-key (kbd "<C-left>") #'evil-beginning-of-visual-line)
  (global-set-key (kbd "<C-down>") #'evil-forward-paragraph)
  (global-set-key (kbd "<C-up>") #'evil-backward-paragraph)

  (set-face-attribute 'default nil :height 140)
  (delete-selection-mode 1)

  ;; Redo. Cause Im sick of not knowing
  ;;(global-set-key (kbd "U") #'undo-tree-redo)


  ;; Log keystrokes
  (require 'command-log-mode)

  ;; Tabs
  (require 'tabbar)
  (global-set-key [M-s-left] 'tabbar-backward-tab)
  (global-set-key [M-s-right] 'tabbar-forward-tab)
  (global-set-key [M-s-up] 'tabbar-forward-group)
  (global-set-key [M-s-down] 'tabbar-backward-group)
  (setq tabbar-use-images nil)

  (global-set-key (kbd "<C-w>") 'spacemacs/kill-this-buffer)
  (define-key global-map [?\s-w] 'spacemacs/kill-this-buffer)


  ;; Custom tab group function
  ;; (setq )


  (defun tab-groups ()
    "Search up the directory tree looking for a .git folder."
    (list
     (cond
      ((string= "*spacemacs*" (buffer-name)) "spacemacs")
      ((string= ".spacemacs" (buffer-name)) "spacemacs")
      ((string= "*Messages*" (buffer-name)) "spacemacs")
      ((string= "*scratch*" (buffer-name)) "spacemacs")
      ((string= "*nrepl" (if (> (length (buffer-name)) 6) (substring (buffer-name) 0 6) "")) "repl")
      ((string= "*cider" (if (> (length (buffer-name)) 6) (substring (buffer-name) 0 6) "")) "repl")
      ((string= "*Echo" (if (> (length (buffer-name)) 5) (substring (buffer-name) 0 5) "")) nil)
      ((string= "*whic" (if (> (length (buffer-name)) 5) (substring (buffer-name) 0 5) "")) nil)
      ((string-match ".http" (buffer-name)) "rest-client")
      ((string-match "*HTTP" (buffer-name)) "rest-client")
      ((eq major-mode 'dired-mode) "process")
      ((not (buffer-file-name)) "process")
      (t "user")
      (regexp-builder)
      )))
  (setq tabbar-buffer-groups-function 'tab-groups)

  (setq tabbar-buffer-list-function
        (lambda ()
          (remove-if
           (lambda(buffer)
             (or
              (string= "*edn*" (buffer-name buffer))
              (string= "*helm" (if (> (length (buffer-name buffer)) 5) (substring (buffer-name buffer) 0 5) ""))
              (string= "*Echo" (if (> (length (buffer-name buffer)) 5) (substring (buffer-name buffer) 0 5) ""))
              ;; (string= "*E" (substring (buffer-name buffer) 0 2))
              ))
           (buffer-list))))

  (custom-set-variables
   '(tabbar-separator (quote (2))))

  (set-face-attribute
   'tabbar-default nil
   :foreground "#000000"
   :background "#ffffff"
   :box nil
   :height 140
   :weight 'light)

 (set-face-attribute
   'tabbar-selected nil
   :foreground "#bc6ec5"
   :background "#f0fff0"
   :weight 'bold
   :height 140
   :box nil
   :slant 'normal)

  (set-face-attribute
   'tabbar-unselected nil
   :foreground "#4f97d7"
   :background "#ffffff"
   :weight 'light
   :height 140
   :box nil
   :slant 'normal)

  (set-face-attribute
   'tabbar-modified nil
   :box nil
   :foreground "#4f97d7"
   :background "#ffffff"
   :weight 'light
   :height 140
   :box nil
   :slant 'italic)

  (set-face-attribute
   'tabbar-selected-modified nil
   :box nil
   :foreground "#bc6ec5"
   :background "#f0fff0"
   :weight 'bold
   :height 140
   :box nil
   :slant 'italic
   )

  (tabbar-mode 1)

  ;; Prevent home dir .git crahsing projectile
  ;; (add-to-list 'projectile-globally-ignored-directories "~")

  ;; make nice
  (spaceline-toggle-major-mode-off)
  (spaceline-toggle-minor-modes-off)

  ;; remote connection
  ;; (setq projectile-global-mode nil)
  (setq projectile-mode-line "Projectile")
  (require 'exec-path-from-shell)
  (exec-path-from-shell-copy-env "SSH_AGENT_PID")
  (exec-path-from-shell-copy-env "SSH_AUTH_SOCK")
  (require 'tramp)
  (setq tramp-default-method "ssh")
  (setq tramp-default-user "ubuntu"
        tramp-default-host "aws")

  (defun tramp/shell-set-hook ()
    (when (file-remote-p (buffer-file-name))
      (let ((vec (tramp-dissect-file-name (buffer-file-name))))
        (when (string-match-p "aws" (tramp-file-name-host vec))
          (setq-local shell-file-name "/bin/sh")))))

  (add-hook 'find-file-hook #'tramp/shell-set-hook)
  (add-hook 'cider-connected-hook #'tramp/shell-set-hook)
  (setq cider-prompt-for-project-on-connect nil)


  ;;----------------------- python
  ;;(define-key python-mode-map (kbd "C-s-l") 'python-shell-send-buffer)
  ;;(define-key python-mode-map (kbd "<C-s-return>") 'python-shell-send-region)

  (defun py-hook ()
    (local-set-key (kbd "C-s-l") 'python-shell-send-buffer)
    (local-set-key (kbd "<C-s-return>") 'python-shell-send-region)
    )

  (add-hook 'python-mode-hook 'py-hook)

  ;;----------------------- R
  (defun r-hook ()
    (local-set-key (kbd "C-s-l") 'ess-eval-buffer)
    (local-set-key (kbd "<C-s-return>") 'ess-eval-line)
    )

  (add-hook 'ess-mode-hook 'r-hook)

  ;; cider figwheel
  (setq cider-cljs-lein-repl
        "(do (require 'figwheel-sidecar.repl-api)
         (figwheel-sidecar.repl-api/start-figwheel!)
         (figwheel-sidecar.repl-api/cljs-repl))")

  ;; Workaround for bug https://github.com/syl20bnr/spacemacs/issues/9549
  (require 'helm-bookmark)

  (setq-default
   ;; Don't insert newline at end of file automatically
   require-final-newline nil
   mode-require-final-newline nil
   )

  (defun move-line-up ()
    "Move up the current line."
    (interactive)
    (transpose-lines 1)
    (forward-line -2)
    (indent-according-to-mode))

  (defun move-line-down ()
    "Move down the current line."
    (interactive)
    (forward-line 1)
    (transpose-lines 1)
    (forward-line -1)
    (indent-according-to-mode))

  (global-set-key [(control shift up)]  'move-line-up)
  (global-set-key [(control shift down)]  'move-line-down)

  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#0a0814" "#f2241f" "#67b11d" "#b1951d" "#4f97d7" "#a31db1" "#28def0" "#b2b2b2"])
 '(clojure-project-root-function
   (lambda
     (dir-name)
     (ignore-errors
       (projectile-project-root))))
 '(package-selected-packages
   (quote
    (ghub sesman winum restclient-helm ob-restclient parent-mode fuzzy flx evil goto-chg undo-tree f diminish company-restclient know-your-http-well paredit s eval-sexp-fu pkg-info epl packed avy popup helm-cider helm-cider-history yaml-mode mmm-mode markdown-toc markdown-mode gh-md scad-mode ess-smart-equals ess-R-object-popup ess-R-data-view ctable ess julia-mode yapfify pyvenv pytest pyenv-mode py-isort pip-requirements live-py-mode hy-mode helm-pydoc cython-mode company-anaconda anaconda-mode pythonic elm-mode web-beautify livid-mode skewer-mode simple-httpd json-mode json-snatcher json-reformat js2-refactor js2-mode js-doc company-tern dash-functional tern coffee-mode ht restclient ob-http edn peg queue csv-mode smeargle orgit org magit-gitflow helm-gitignore gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link evil-magit magit magit-popup git-commit with-editor reveal-in-osx-finder pbcopy osx-trash osx-dictionary launchctl elscreen-buffer-group elscreen projectile anzu hydra inflections multiple-cursors cider seq spinner clojure-mode bind-key auto-complete company iedit smartparens bind-map highlight yasnippet helm helm-core async powerline dash drag-stuff tabbar-ruler mode-icons tabbar web-mode tagedit slim-mode scss-mode sass-mode pug-mode less-css-mode helm-css-scss haml-mode emmet-mode company-web web-completion-data ws-butler window-numbering which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spacemacs-theme spaceline restart-emacs request rainbow-delimiters quelpa popwin persp-mode pcre2el paradox org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint info+ indent-guide ido-vertical-mode hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation hide-comnt help-fns+ helm-themes helm-swoop helm-projectile helm-mode-manager helm-make helm-flx helm-descbinds helm-company helm-c-yasnippet helm-ag google-translate golden-ratio flx-ido fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu elisp-slime-nav dumb-jump define-word company-statistics command-log-mode column-enforce-mode clojure-snippets clj-refactor clean-aindent-mode cider-eval-sexp-fu auto-yasnippet auto-highlight-symbol auto-compile aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line ac-ispell)))
 '(projectile-project-root-files
   (quote
    ("rebar.config" "project.clj" "build.boot" "SConstruct" "pom.xml" "build.sbt" "gradlew" ".ensime" "Gemfile" "requirements.txt" "setup.py" "tox.ini" "composer.json" "Cargo.toml" "mix.exs" "stack.yaml" "info.rkt" "DESCRIPTION" "TAGS" "GTAGS")))
 '(projectile-switch-project-action (quote helm-projectile))
 '(tabbar-separator (quote (2))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((((class color) (min-colors 89)) (:foreground "#326B6B" :background "#F0FFF0")))))
