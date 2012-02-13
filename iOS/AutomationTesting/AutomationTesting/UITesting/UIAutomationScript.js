// Setup
var app = UIATarget.localTarget();
var target = app.frontMostApp().mainWindow();

//Define individual elements
var shoutTextField = target.textFields()[0];
var shoutButton = target.buttons()[0];
var messageTextField = target.staticTexts()[1];

var resetButton = target.buttons()[1];
 
function firstTest()
{
    UIALogger.logStart("Testing Automation");
    
    UIALogger.logMessage("Let's put a word on shout out text field");
    shoutTextField.setValue("Testing");
    
    app.delay(10);
    
    UIALogger.logMessage("Let's take a screenshot");
    app.captureScreenWithName("foo");
}

function clearAll()
{  
    
    var testname = "Clear Fields";  
    
    //Start the test  
    UIALogger.logStart(testname);  
    app.delay(10);  
    
    UIALogger.logMessage("Tap on Clear All Button");  
    resetButton.tap();  
    
    app.captureScreenWithName("foo2");  
    var label = messageTextField.value();  
    var textbox = shoutTextField.value();  
    
    if (label == "" && textbox == ""){  
        //the test ended with a successful outcome  
        UIALogger.logPass(testname);  
    }else{  
        //the test ended with a unsuccessful outcome  
        UIALogger.logFail(testname);  
    }  
    
}

firstTest();
clearAll();
