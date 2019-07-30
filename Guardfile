guard :shell, :all_on_start => true do
  watch(/^(CV\.tex|friggeri\-cv\.cls)$/) do |m|
    name = "CV"

    print "Building #{name} because of #{m[1]}..."
    n "Building #{name}...", 'LaTeX', :default

    res = `xelatex -halt-on-error #{name}.tex 2>&1`
    if $?.success?
      n "Built #{name}.pdf", 'LaTeX', :success
      system("rm #{name}.log >/dev/null 2>&1")
      system("open #{name}.pdf >/dev/null 2>&1")
      puts "-> #{name}.tex"
    else
      n "Failed building #{name}", 'LaTeX', :failed
      puts res
    end
  end

end
