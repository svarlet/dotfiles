; -*- mode: emacs-lisp -*-
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
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
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
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     (helm :variables
           helm-buffer-max-length nil)
     ;; auto-completion
     ;; better-defaults
     emacs-lisp
     ;; git
     ;; markdown
     ;; org
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     ;; spell-checking
     ;; syntax-checking
     ;; version-control
     version-control
     markdown
     (syntax-checking :variables
                      syntax-checking-enable-by-default t
                      syntax-checking-enable-tooltips nil)
     (auto-completion :variables
                      spacemacs-default-company-backends '(company-files company-capf)
                      auto-completion-enable-snippets-in-popup t
                      auto-completion-enable-help-tooltip t
                      auto-completion-enable-sort-by-usage t
                      auto-completion-tab-key-behavior 'complete)
     erlang
     (elixir :variables
             elixir-enable-compilation-checking t)
     git
     html
     osx
     (org :variables
          org-enable-github-support t)
     colors
     themes-megapack
     spacemacs-layouts
     (elm :variables
          elm-format-on-save t
          elm-format-command "elm-format-0.17"
          elm-sort-imports-on-save t)
     shell-scripts
     yaml
     docker
     graphviz
     restclient
     shell
     (shell :variables
            shell-default-position 'bottom
            shell-default-full-span nil
            shell-default-shell 'multi-term)
     (javascript :variables
                 javascript-disable-tern-port-files nil)
   )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(neotree ox-gfm all-the-icons)
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
   ;; when the current branch is not `develop'. Note that checking for
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
   dotspacemacs-startup-banner 'official
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(dracula
                         material
                         material-light
                         sanityinc-tomorrow-night
                         sanityinc-tomorrow-day
                         ;;leuven
                         ;;molokai)
                         )
                         ;; If non nil the cursor color matches the state color in GUI Emacs.
                         dotspacemacs-colorize-cursor-according-to-state t
                         ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
                         ;; quickly tweak the mode-line size to make separators look not too crappy.
                         dotspacemacs-default-font '("Source Code Pro"
                                                     :size 16
                                                     :weight light
                                                     :width normal
                                                     :powerline-scale 1.1)
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
                         ;; (default "C-M-m")
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
                         dotspacemacs-auto-resume-layouts nil
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
                         dotspacemacs-helm-resize nil
                         ;; if non nil, the helm header is hidden when there is only one source.
                         ;; (default nil)
                         dotspacemacs-helm-no-header nil
                         ;; define the position to display `helm', options are `bottom', `top',
                         ;; `left', or `right'. (default 'bottom)
                         dotspacemacs-helm-position 'bottom
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
                         dotspacemacs-loading-progress-bar t
                         ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
                         ;; (Emacs 24.4+ only)
                         dotspacemacs-fullscreen-at-startup nil
                         ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
                         ;; Use to disable fullscreen animations in OSX. (default nil)
                         dotspacemacs-fullscreen-use-non-native nil
                         ;; If non nil the frame is maximized when Emacs starts up.
                         ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
                         ;; (default nil) (Emacs 24.4+ only)
                         dotspacemacs-maximized-at-startup nil
                         ;; A value from the range (0..100), in increasing opacity, which describes
                         ;; the transparency level of a frame when it's active or selected.
                         ;; Transparency can be toggled through `toggle-transparency'. (default 90)
                         dotspacemacs-active-transparency 90
                         ;; A value from the range (0..100), in increasing opacity, which describes
                         ;; the transparency level of a frame when it's inactive or deselected.
                         ;; Transparency can be toggled through `toggle-transparency'. (default 90)
                         dotspacemacs-inactive-transparency 90
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
                         dotspacemacs-line-numbers 'relative
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
                         dotspacemacs-whitespace-cleanup 'trailing
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
  "Configuration function.
 This function is called at the very end of Spacemacs initialization after
layers configuration."

  ;; elixir - alchemist
  (add-hook 'alchemist-mode-hook 'company-mode)

  ;; make the cursor blink
  (blink-cursor-mode)

  (setq ns-use-srgb-colorspace nil)

  (setq powerline-default-separator 'slant)

  ;; Sets the initial size of the frame (OS window) and the default size
  ;; of subsequent frames
  (setq initial-frame-alist '((width . 120) ; character
                              (height . 60))) ; lines
  (setq default-frame-alist '((width . 120) ; character
                              (height . 60))) ; lines

  ;; settings for position and size of specific windows
  (add-to-list 'display-buffer-alist
               `(,(rx bos (or
                           "*alchemist test report*"
                           "*alchemist mix*"
                           "*elixir help*"
                           "*alchemist help*"
                           "*compilation*"
                           "*IEx*"
                           "*mix*")
                      eos)
                 (display-buffer-reuse-window
                  display-buffer-in-side-window)
                 (reusable-frames . visible)
                 (side            . bottom)
                 (window-height   . 0.3)))

    ;; Fix the alt/cmd keys on mac
    (setq mac-option-modifier nil
          mac-command-modifier 'meta
          mac-option-key-is-meta nil
          mac-command-key-is-meta 'meta
          x-select-enable-clipboard t)

    ;; Disable fringe at end of file
    (global-vi-tilde-fringe-mode -1)

    ;; company
    (global-company-mode)
    ;;(setq-default company-minimum-prefix-length 1)
    (global-set-key (kbd "C-SPC") 'company-complete)

    ;; neotree - force width
    (setq neo-window-width 40)

    ;; neotree - fix to prevent it from opening twice sometimes
    (when neo-persist-show
      (add-hook 'popwin:before-popup-hook
                (lambda () (setq neo-persist-show nil)))
      (add-hook 'popwin:after-popup-hook
                (lambda () (setq neo-persist-show t))))

    ;; neotree - when neotree opens, find current file and jumps to node
    (setq neo-smart-open t)

    ;; set neotree theme to icons to enable the display of fancy icons in neotree
    (setq neo-theme 'icons)

    ;; neotree - when switching projects with projectile, make neotree change root
    (setq projectile-switch-project-action 'neotree-projectile-action)

    (spacemacs/toggle-automatic-symbol-highlight)
    (spacemacs/toggle-auto-fill-mode-on)
    (add-hook 'text-mode-hook 'spacemacs/toggle-truncate-lines-on)

    (setq-default js2-basic-offset 2)
)
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (all-the-icons memoize font-lock+ org-brain ob-elixir evil-org zenburn-theme zen-and-art-theme yaml-mode xterm-color ws-butler winum white-sand-theme which-key web-mode web-beautify volatile-highlights vi-tilde-fringe uuidgen use-package underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme toxi-theme toc-org tao-theme tangotango-theme tango-plus-theme tango-2-theme tagedit symon sunny-day-theme sublime-themes subatomic256-theme subatomic-theme string-inflection spaceline powerline spacegray-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme smeargle slim-mode shell-pop seti-theme scss-mode sass-mode reverse-theme reveal-in-osx-finder restclient-helm restart-emacs rebecca-theme rainbow-mode rainbow-identifiers rainbow-delimiters railscasts-theme purple-haze-theme pug-mode professional-theme popwin planet-theme phoenix-dark-pink-theme phoenix-dark-mono-theme persp-mode pcre2el pbcopy password-generator paradox spinner ox-gfm osx-trash osx-dictionary orgit organic-green-theme org-projectile org-category-capture org-present org-pomodoro alert log4e gntp org-download org-bullets open-junk-file omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme ob-restclient ob-http noctilux-theme neotree naquadah-theme mustang-theme multi-term move-text monokai-theme monochrome-theme molokai-theme moe-theme mmm-mode minimal-theme material-theme markdown-toc markdown-mode majapahit-theme magit-gitflow madhat2r-theme macrostep lush-theme lorem-ipsum livid-mode skewer-mode linum-relative link-hint light-soap-theme less-css-mode launchctl js2-refactor multiple-cursors js2-mode js-doc jbeans-theme jazz-theme ir-black-theme insert-shebang inkpot-theme info+ indent-guide impatient-mode simple-httpd hydra hungry-delete htmlize hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation hide-comnt heroku-theme hemisu-theme help-fns+ helm-themes helm-swoop helm-purpose window-purpose imenu-list helm-projectile helm-mode-manager helm-make projectile helm-gitignore request helm-flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag hc-zenburn-theme haml-mode gruvbox-theme gruber-darker-theme graphviz-dot-mode grandshell-theme gotham-theme google-translate golden-ratio gnuplot gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe+ git-gutter-fringe fringe-helper git-gutter+ git-gutter gh-md gandalf-theme fuzzy flycheck-pos-tip flycheck-mix flycheck-elm flycheck-credo flycheck-bashate flycheck flx-ido flx flatui-theme flatland-theme fish-mode fill-column-indicator farmhouse-theme fancy-battery eyebrowse expand-region exotica-theme exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist org-plus-contrib evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit magit git-commit with-editor evil-lisp-state smartparens evil-lion evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu anzu evil goto-chg undo-tree eval-sexp-fu highlight espresso-theme eshell-z eshell-prompt-extras esh-help erlang emmet-mode elm-mode elisp-slime-nav editorconfig dumb-jump dracula-theme dockerfile-mode docker json-mode tablist magit-popup docker-tramp json-snatcher json-reformat django-theme diminish diff-hl darktooth-theme autothemer darkokai-theme darkmine-theme darkburn-theme dakrone-theme cyberpunk-theme company-web web-completion-data company-tern dash-functional tern company-statistics company-shell company-restclient restclient know-your-http-well company-quickhelp pos-tip column-enforce-mode color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized color-identifiers-mode coffee-mode clues-theme clean-aindent-mode cherry-blossom-theme busybee-theme bubbleberry-theme browse-at-remote f birds-of-paradise-plus-theme bind-map bind-key badwolf-theme auto-yasnippet yasnippet auto-highlight-symbol auto-compile packed apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes alchemist s company dash elixir-mode pkg-info epl aggressive-indent afternoon-theme adaptive-wrap ace-window ace-link ace-jump-helm-line helm avy helm-core async ac-ispell auto-complete popup))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
)
