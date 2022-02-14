#!/bin/sh
# reset jetbrains ide evals

JB_PRODUCTS="IntelliJIdea CLion PhpStorm GoLand PyCharm WebStorm Rider DataGrip RubyMine AppCode"
for PRD in $JB_PRODUCTS; do
  	rm -rf ~/.config/JetBrains/${PRD}*/eval
  	rm -rf ~/.config/JetBrains/${PRD}*/options/other.xml
  	rm -rf ~/.java/.userPrefs/jetbrains
done

echo 'done.'
