import UIKit

var errorCode:String? = "404"
print( errorCode )

// 可选型不可以直接使用
//"The errorCode is" + errorCode


// 强制解包
"The errorCode is " + errorCode!

// 强制解包是危险的
errorCode = nil
//"The errorCode is" + errorCode!

// 判断不是nil
if errorCode != nil{
    print("The errorCode is " + errorCode!)
}
else{
    print("No error")
}


// if let 解包
if let unwrappedErrorCode = errorCode{
    "The errorCode is " + unwrappedErrorCode
}
else{
    "No error"
}

// 可以使用相同的变量名
if let errorCode = errorCode{
    print("The errorCode is " + errorCode)
}
else{
    print("No error")
}


// 使用if-let同时解包多个变量
var errorMessage:String? = "Not found"

if let errorCode = errorCode{
    if let errorMessage = errorMessage{
        print("The errorCode is " + errorCode + "\nThe errorMessage is " + errorMessage)
    }
}

if let errorCode = errorCode, let errorMessage = errorMessage{
    print("The errorCode is " + errorCode + "\nThe errorMessage is " + errorMessage)
}


//
if let errorCode = errorCode, let errorMessage = errorMessage , errorCode == "404"{
    print("Page not found")
}
