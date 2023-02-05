local status, mark = pcall(require, 'markdown-preivew')

if (not status) then
  print('nvim-markdown-preivew is not found !')
  return
end

mark.setup()
