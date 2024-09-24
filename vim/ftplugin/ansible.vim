set makeprg=ansible-lint\ -p\ %:p


if executable('ansible-lint') == 'yes'
  au BufEnter *.yml,*.yaml silent make! ansible-lint\ -p\ %
  au BufWritePost *.yml,*.yaml silent make! ansible-lint\ -p\ %
endif
