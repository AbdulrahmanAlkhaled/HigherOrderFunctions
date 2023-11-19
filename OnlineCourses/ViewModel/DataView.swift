//
//  DataView.swift
//  OnlineCourses
//
//  Created by ABDULRAHMAN AL-KHALED on 18/11/2023.
//

import Foundation

class ModificationViewModel: ObservableObject{
    @Published var dataArray: [CourseView] = []
    @Published var sortArray: [CourseView] = []
    @Published var reduceArray: Int = 0
    @Published var mapArray: [String] = []
    @Published var mapArray2: [String] = []
    
    init(){
        getData()
        sortedArray()
        reducedArray()
        mappedArray()
    }
    
    func getData(){
        let course1 = CourseView(image: "courseImage", universityName: "University of Illinois Gies", title: "MSc of artificial intelligence", coursePrice: 1500, courseType: "Master", isCompleted: true, totalDuration: 16, degreeBadges: "badge-4", descBadge: "Badge from University of Illinois Gies")
        let course2 = CourseView(image: "courseImage2", universityName: "UC Berkeley College of Engineering", title: "Master of Advanced in Science", coursePrice: 2500, courseType: "Master", isCompleted: true, totalDuration: 24, degreeBadges: "badge-7", descBadge: "Badge form UC Berkeley College of Engineering")
        let course3 = CourseView(image: "courseImage3", universityName: "University of Leeds", title: "MSc Data Science", coursePrice: 1800, courseType: "Master", isCompleted: false, degreeBadges: nil)
        let course4 = CourseView(image: "courseImage4", universityName: "Dartmouth College", title: "BSc of Computer Engineering", coursePrice: 2200, courseType: "Bachelor", isCompleted: false, degreeBadges: nil)
        let course5 = CourseView(image: "courseImage5", universityName: "University of London", title: "BSc Computer Science", coursePrice: 3500, courseType: "Bachelor", isCompleted: false, degreeBadges: nil)
        self.dataArray.append(contentsOf: [
            course1,
            course2,
            course3,
            course4,
            course5
        ])
    }
    
    func sortedArray(){
        sortArray = dataArray.sorted(by: {$0.coursePrice < $1.coursePrice})
    }
    func reducedArray(){
        reduceArray = dataArray.reduce(0) { $0 + ($1.totalDuration ?? 0 ) }
    }
    func mappedArray() {
        mapArray = dataArray.map({$0.degreeBadges ?? "Error"})
    }
}
