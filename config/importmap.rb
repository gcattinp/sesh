# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "bootstrap", to: "https://ga.jspm.io/npm:bootstrap@5.3.1/dist/js/bootstrap.esm.js"
pin "@popperjs/core", to: "https://ga.jspm.io/npm:@popperjs/core@2.11.8/lib/index.js"
pin "flickity", to: "https://ga.jspm.io/npm:flickity@3.0.0/js/index.js"
pin "ev-emitter", to: "https://ga.jspm.io/npm:ev-emitter@2.1.2/ev-emitter.js"
pin "fizzy-ui-utils", to: "https://ga.jspm.io/npm:fizzy-ui-utils@3.0.0/utils.js"
pin "get-size", to: "https://ga.jspm.io/npm:get-size@3.0.0/get-size.js"
pin "imagesloaded", to: "https://ga.jspm.io/npm:imagesloaded@5.0.0/imagesloaded.js"
pin "unidragger", to: "https://ga.jspm.io/npm:unidragger@3.0.1/unidragger.js"
