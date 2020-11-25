//
//  CourseList.swift
//  DesignCodeCourse
//
//  Created by Ethel S on 11/25/20.
//

import SwiftUI

struct CourseList: View {
    @ViewBuilder
    var body: some View {
        #if os(iOS)
        content
            .listStyle(InsetGroupedListStyle())
        #else
        content
            .frame(minWidth: 800, idealWidth: 600)
        #endif
    }
    
    var content: some View {
        List(0 ..< 20) { item in
            CourseRow()
        }
        .navigationTitle("Courses")
    }
}

struct CourseList_Previews: PreviewProvider {
    static var previews: some View {
        CourseList()
    }
}
