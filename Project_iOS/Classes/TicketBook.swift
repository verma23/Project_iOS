//
//  TicketBook.swift
//  Project_iOS
//
//  Created by  on 2022-03-28.
//

import UIKit

class TicketBook: NSObject {

   
        var id : Int?
        var moviename : String?
        var seats : String?
        var dateTime: String?
        var ticketType: String?
        var theatre: String?
        var quantity: String?
        var image: String?
        var email: String?
    
    func initWithData(theRow i :Int, theMoviename m: String, theSeats s: String, theDateTume dt: String , theTicketType tt: String, theTheatre t: String, theQuantity q : String, theImage im: String, theEmail e: String){
        id = i
        moviename = m
        seats = s
        dateTime = dt
        ticketType = tt
        theatre = t
        quantity = q
        image = im
        email = e
        }
    
}
