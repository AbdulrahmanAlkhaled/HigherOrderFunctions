//
//  Manage.swift
//  OnlineCourses
//
//  Created by ABDULRAHMAN AL-KHALED on 18/11/2023.
//

import Foundation


struct CourseView: Identifiable{
    let id = UUID()
    var image: String
    var universityName: String
    var title: String
    var coursePrice: Int
    var courseType: String
    var isCompleted: Bool
    var totalDuration: Int?
    var degreeBadges: String?
    var descBadge: String?
}
