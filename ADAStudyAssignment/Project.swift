import ProjectDescription

let project = Project(
    name: "ADAStudyAssignment",
    targets: [
        .target(
            name: "ADAStudyAssignment",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.ADAStudyAssignment",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["ADAStudyAssignment/Sources/**"],
            resources: ["ADAStudyAssignment/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "ADAStudyAssignmentTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.ADAStudyAssignmentTests",
            infoPlist: .default,
            sources: ["ADAStudyAssignment/Tests/**"],
            resources: [],
            dependencies: [.target(name: "ADAStudyAssignment")]
        ),
    ]
)
