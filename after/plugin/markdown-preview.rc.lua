local status, mark = pcall(require, 'nvim-markdown-preview')

if (not status) then
  print('nvim-markdown-preivew is not found !')
  return
end






mark.setup()
