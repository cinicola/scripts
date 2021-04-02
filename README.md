# Open powershell on the sfdx project dir:

- Run a method of a test class<br/>
`./apex-tests.ps1 "testClass1.methodA"`

- Run a entire test class<br/>
`./apex-tests.ps1 "testClass1"`

- Run a entire test class and one method of another test class:<br/>
`./apex-tests.ps1 "testClass1,testClass2.methodA"`

- Run a entire test class, 10 times (1000 times is the default)<br/>
`./apex-tests.ps1 "testClass1 10"`
