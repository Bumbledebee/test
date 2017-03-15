# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Publisher.create!(name:"TestPub", dashboardlink:"url", fyberpublisherid:1234)
Application.create!(name:"myapp", dashboardlink:"url", buildlink:"url", ticketlink:"url", fyberapplicationid:4444)
Platform.create!(name:"iOS")
Platform.create!(name:"Unity (iOS)")
Platform.create!(name:"Adobe Air (iOS)")
Platform.create!(name:"Android")
Platform.create!(name:"Unity (Android)")
Platform.create!(name:"Adobe Air (Android)")
Platform.create!(name:"Amazon (Android)")
Feature.create!(name:"yourapp:general")
Feature.create!(name:"yourapp:vcs")
Feature.create!(name:"yourapp:reporting")
Feature.create!(name:"rewardedvideo:general")
Feature.create!(name:"rewardedvideo:adcolony")
Feature.create!(name:"rewardedvideo:adcolony-adobe-air")
Feature.create!(name:"rewardedvideo:admob")
Feature.create!(name:"rewardedvideo:admob-adobe-air")
Feature.create!(name:"rewardedvideo:vungle")
Feature.create!(name:"rewardedvideo:vungle-adobe-air")
Feature.create!(name:"interstitial:general")
Feature.create!(name:"interstitial:adcolony")
Feature.create!(name:"interstitial:adcolony-adobe-air")
Feature.create!(name:"interstitial:admob")
Feature.create!(name:"interstitial:admob-adobe-air")
Feature.create!(name:"interstitial:vungle")
Feature.create!(name:"interstitial:vungle-adobe-air")
Test.create!(feature_id:1,orderid:1,name:"App Startup", criteria:"App must start up succesfully")
Test.create!(feature_id:1,orderid:2,name:"App ID", criteria:"App must start up succesfully")
Test.create!(feature_id:1,orderid:3,name:"App version", criteria:"App must start up succesfully")
Test.create!(feature_id:1,orderid:4,name:"SDK version", criteria:"App must start up succesfully")
Test.create!(feature_id:1,orderid:5,name:"Device Identifiers", criteria:"App must start up succesfully")
Test.create!(feature_id:1,orderid:6,name:"User IDs", criteria:"App must start up succesfully")
Testvalue.create!(test_id:1,value:"Success", result_state:"Passed", result_recommendation:"Good. Your app starts.")
Testvalue.create!(test_id:1,value:"Failure",result_state:"Failed", result_recommendation:"Please check why your app does not start")
Testvalue.create!(test_id:2,value:"True",result_state:"Passed", result_recommendation:"Good. Appid from dashboard matches.")
Testvalue.create!(test_id:2,value:"False",result_state:"Failure", result_recommendation:"Please check dashboard.fyber.com to see that appids match")
Testvalue.create!(test_id:3,value:"True",result_state:"Passed", result_recommendation:"Good. We can see which version of your app was started")
Testvalue.create!(test_id:3,value:"False",result_state:"Failure", result_recommendation:"Please make sure we which version of your app was started")
Testvalue.create!(test_id:4,value:"7.2.3",result_state:"Warning", result_recommendation:"Please update to the latest version of the SDK")
Testvalue.create!(test_id:4,value:"7.1.0",result_state:"Warning", result_recommendation:"Please update to the latest version of the SDK")
Testvalue.create!(test_id:4,value:"7.1.1",result_state:"Warning", result_recommendation:"Please update to the latest version of the SDK")
Testvalue.create!(test_id:4,value:"7.2.0",result_state:"Warning", result_recommendation:"Please update to the latest version of the SDK")
Testvalue.create!(test_id:4,value:"7.2.4",result_state:"Warning", result_recommendation:"Please update to the latest version of the SDK")
Testvalue.create!(test_id:4,value:"7.2.5",result_state:"Warning", result_recommendation:"Please update to the latest version of the SDK")
Testvalue.create!(test_id:4,value:"7.2.6",result_state:"Warning", result_recommendation:"Please update to the latest version of the SDK")
Testvalue.create!(test_id:4,value:"7.2.7",result_state:"Warning", result_recommendation:"Please update to the latest version of the SDK")
Testvalue.create!(test_id:4,value:"7.2.8",result_state:"Warning", result_recommendation:"Please update to the latest version of the SDK")
Testvalue.create!(test_id:4,value:"8.0.0",result_state:"Warning", result_recommendation:"Please update to the latest version of the SDK")
Testvalue.create!(test_id:4,value:"8.0.1",result_state:"Warning", result_recommendation:"Please update to the latest version of the SDK")
Testvalue.create!(test_id:4,value:"8.1.0",result_state:"Warning", result_recommendation:"Please update to the latest version of the SDK")
Testvalue.create!(test_id:4,value:"8.1.1",result_state:"Passed", result_recommendation:"Consider updating to the latest version of the SDK")
Testvalue.create!(test_id:4,value:"8.3.1",result_state:"Passed", result_recommendation:"Consider updating to the latest version of the SDK")
Testvalue.create!(test_id:4,value:"8.4.6",result_state:"Passed", result_recommendation:"Consider updating to the latest version of the SDK")
Testvalue.create!(test_id:4,value:"8.9.1",result_state:"Passed", result_recommendation:"Good. You have the latest version of our SDK")
Testvalue.create!(test_id:5,value:"Sent",result_state:"Passed", result_recommendation:"Good. You are sending us user device identifier. [Only in iOS 10 with ad tracking limited turned on it could be a bunch of 0.]")
Testvalue.create!(test_id:5,value:"Not Sent",result_state:"Failed", result_recommendation:"Please make sure device identifier is sent")
Testvalue.create!(test_id:6,value:"is_uniqe",result_recommendation:"Good. Every gaming user has a unique id with Fyber")
Testvalue.create!(test_id:6,value:"is_not_unique",result_state:"Failed", result_recommendation:"Please make sure user id is unique per user")
Realtest.create!(application_id:1, publisher_id:1, platform_id:4, feature_id:1)
Realtest.create!(application_id:1, publisher_id:1, platform_id:4, feature_id:2)
Realtest.create!(application_id:1, publisher_id:1, platform_id:4, feature_id:3)
Realtest.create!(application_id:1, publisher_id:1, platform_id:4, feature_id:10)
Realtest.create!(application_id:1, publisher_id:1, platform_id:4, feature_id:12)
Realtest.create!(application_id:1, publisher_id:1, platform_id:4, feature_id:7)
Realtestresult.create!(realtest_id:1,test_id:1, testvalue_id:1)
Realtestresult.create!(realtest_id:1,test_id:2, testvalue_id:3)
Realtestresult.create!(realtest_id:1,test_id:3, testvalue_id:5)
Realtestresult.create!(realtest_id:1,test_id:4, testvalue_id:21)
Realtestresult.create!(realtest_id:1,test_id:5, testvalue_id:24)
Realtestresult.create!(realtest_id:1,test_id:6, testvalue_id:27)