//
//  StringExtension.swift
//  FundallCodingChallenge
//
//  Created by FOLAHANMI KOLAWOLE on 18/02/2021.
//

import Foundation

extension String {
   
   var isValidEmail: Bool {
      NSPredicate(format: "SELF MATCHES %@", "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}").evaluate(with: self)
   }
   
   func trunc(length: Int, trailing: String = "…'s") -> String {
      return (self.count > length) ? self.prefix(length) + trailing : self
   }
   
}
