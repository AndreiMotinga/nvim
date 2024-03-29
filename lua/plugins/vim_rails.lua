return {
  "tpope/vim-rails",
  config = function()
    vim.api.nvim_exec(
      [[
        let g:rails_projections = {
          \  "app/controllers/*_controller.rb": {
          \      "test": [
          \        "spec/requests/{}_spec.rb",
          \        "spec/requests/{}/index_spec.rb",
          \        "spec/controllers/{}_controller_spec.rb",
          \        "test/controllers/{}_controller_test.rb"
          \      ],
          \      "alternate": [
          \        "spec/requests/{}_spec.rb",
          \        "spec/controllers/{}_controller_spec.rb",
          \        "test/controllers/{}_controller_test.rb"
          \      ],
          \   },
          \   "spec/requests/*_spec.rb": {
          \      "command": "request",
          \      "alternate": "app/controllers/{}_controller.rb",
          \      "template": "require 'rails_helper'\n\n" .
          \        "RSpec.describe '{}' do\nend",
          \   },
          \   "spec/requests/*/index_spec.rb": {
          \      "command": "request",
          \      "alternate": "app/controllers/{}_controller.rb",
          \      "template": "require 'rails_helper'\n\n" .
          \        "RSpec.describe '{}' do\nend",
          \   },
          \ }
      ]],
      false
    )
  end,
}
