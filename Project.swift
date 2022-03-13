
import ProjectDescription

let infoPlist: [String: InfoPlist.Value] = [ // <1>
    "UILaunchScreen": [:]
]


let project = Project(name: "DietPlanner3",
                      organizationName: "lealapps",
                      settings: nil,
                      targets: [
                        Target(name: "DietPlanner2",
                               platform: .iOS,
                               product: .app,
                               bundleId: "lealapps.DietPlanner2",
                               infoPlist: .extendingDefault(with: infoPlist),
                               sources: ["Targets/DietPlanner2/Sources/**"],
                               resources: ["Targets/DietPlanner2/Sources/**/*.xib",
                                           "Targets/DietPlanner2/Resources/**"],
                               dependencies: [],
                               settings: nil
                        ),
                        Target(name: "DietPlanner2UI",
                               platform: .iOS,
                               product: .app,
                               bundleId: "lealapps.DietPlanner2UI",
                               sources: ["Targets/DietPlanner2UI/Sources/**"],
                               resources: [],
                               dependencies: [],
                               settings: nil
                        ),
                        Target(name: "DietPlanner2Kit",
                               platform: .iOS,
                               product: .app,
                               bundleId: "lealapps.DietPlanner2Kit",
                               sources: ["Targets/DietPlanner2Kit/Sources/**"],
                               resources: [],
                               dependencies: [],
                               settings: nil
                        ),
                        Target(
                           name: "DietPlannerCoredata",
                           platform: .iOS,
                           product: .staticFramework,
                           bundleId: "lealapps.DietPlannerCoredata",
                           infoPlist: .default,
                           sources: ["Targets/DietPlanner2/Sources/**"],
                           resources: ["Targets/DietPlanner2/Resources/**"],
                           coreDataModels: [
                              CoreDataModel("Targets/DietPlanner2/Sources/Coredata/Diet_Planner.xcdatamodeld")
                           ]
                        )
                      ]
)
