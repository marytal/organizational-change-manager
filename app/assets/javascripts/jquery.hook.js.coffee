$.extend hook: (hookName) ->
  selector = undefined
  if !hookName or hookName == '*'
    # select all data-hooks
    selector = '[data-hook]'
  else
    # select specific data-hook
    selector = '[data-hook~="' + hookName + '"]'
  $ selector
