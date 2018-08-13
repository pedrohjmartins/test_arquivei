require_relative 'helper.rb'

Before do |scenario|
  @login_page = LoginPage.new
  @home_page = HomePage.new
end

After do |scenario|
  @helper = Helper.new
  if scenario.failed?
    nome = scenario.name.gsub(/([_@#!%()\-=;><,{}\~\[\]\.\/\?\"\*\^\$\+\-]+)/, '')
    @helper.take_screenshot(nome, 'screenshots/test_failed')
    embed(
      "screenshots/test_failed/#{nome}.png",
      'image/png',
      'Clique aqui para ver o screenshot !'
    )
  end
  if scenario.passed?
    nome = scenario.name.gsub(/([_@#!%()\-=;><,{}\~\[\]\.\/\?\"\*\^\$\+\-]+)/, '')
    @helper.take_screenshot(nome, 'screenshots/test_passed')
    embed(
      "screenshots/test_passed/#{nome}.png",
      'image/png',
      'Clique aqui para ver o screenshot !'
    )
  end
end
