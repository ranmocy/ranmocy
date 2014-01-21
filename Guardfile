guard :shell, :all_on_start => true do
  watch(/^(cv.*)\.(png|tex)$/) do |m|
    name = m[1]

    print "Building #{name}..."
    n "Building #{name}...", 'LaTeX', :default

    if system("xelatex -halt-on-error #{name}.tex >/dev/null 2>&1")
      count = `texcount -inc -nc -1 #{name}.tex 2>/dev/null`.split('+').first
      n "Built #{name}.pdf (#{count} words)", 'LaTeX', :success
      system("rm #{name}.log >/dev/null 2>&1")
      # system("open #{name}.pdf >/dev/null 2>&1")
      "-> #{name}.tex"
    else
      n "Failed building #{name}", 'LaTeX', :failed
      `tail #{name}.log`
    end
  end

end
