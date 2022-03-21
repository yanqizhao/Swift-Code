//: [Previous](@previous)

import Foundation

let lineBreaks = """
    This string starts with a line break.
        This string starts with a line break.
    It also ends with a line break.

    """
print(lineBreaks)
print(lineBreaks)

var quotation = """
\""\""

"""
print(quotation)

let threeMoreDoubleQuotationMarks = #"""
Here are three more double quotes: """ \n
"""#
print(threeMoreDoubleQuotationMarks)

quotation.append(threeMoreDoubleQuotationMarks)

print(#"6 times 7 is \#" # (6 * 7) \#(6 * 7)."#)
// 打印 "6 times 7 is 42."

let eAcute: Character = "\u{E9}"                         // é
let combinedEAcute: Character = "\u{65}\u{301}"          // e 后面加上
// eAcute 是 é, combinedEAcute 是 é

let regionalIndicatorForUS: Character = "\u{1F1FA}\u{1F1F8}"
// regionalIndicatorForUS 是 🇺🇸

let greetingt = "Guten Tag!"
greetingt[greetingt.startIndex]
// G
greetingt[greetingt.index(before: greetingt.endIndex)]
// !
greetingt[greetingt.index(after: greetingt.startIndex)]
// u
let index = greetingt.index(greetingt.startIndex, offsetBy: 7)
greetingt[index]
// a

let greeting2 = "Hello, world!"
let inde = greeting2.firstIndex(of: ",") ?? greeting2.endIndex
print(type(of: inde))
let beginning = greeting2[..<inde]
// beginning 的值为 "Hello"
print(type(of: beginning))
// 把结果转化为 String 以便长期存储。
let newString = String(beginning)

//String.UTF8View
//String.Index

//: [Next](@next)
