# Pin npm packages by running ./bin/importmap

pin "application"
# pin "@hotwired/turbo-rails", to: "turbo.min.js"
# pin "@hotwired/stimulus", to: "stimulus.min.js"
# pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin "jquery", to: "jquery.min.js", preload: true
pin "jquery_ujs", to: "jquery_ujs.js", preload: true
# pin_all_from "app/javascript/controllers", under: "controllers"
