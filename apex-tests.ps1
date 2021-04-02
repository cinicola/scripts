# Samples:
# ./apex-tests.ps1 "testClass1,testClass2.methodA"
# ./apex-tests.ps1 "testClass1"
# ./apex-tests.ps1 "testClass1.methodC"
# ./apex-tests.ps1 "testClass1 10"
$script:testsToRun = $args[0]
$script:loopCount = $args[1]
$script:loopCount = $(if ($script:loopCount) {$script:loopCount} else {1000})
$script:i = 1;

while ($script:i -le $script:loopCount) {
	$script:now = Get-Date
	$script:now = $script:now.ToLongTimeString()
	Write-Warning "$script:now | $script:i | $args"

	echo "sfdx force:apex:test:run --tests $script:testsToRun --resultformat human --loglevel error"
	sfdx force:apex:test:run --tests $script:testsToRun --resultformat human --loglevel error

	start-sleep -seconds 1
	$script:i++
}