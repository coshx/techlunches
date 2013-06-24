presenter = Presenter.create({name: 'Ben'})
Presentation.create([{title: 'First Presentation', description: 'for testing...'}])
Presentation.all.each{ |p| p.presenter = presenter; p.save! }
