//
//  ViewController.swift
//  test
//
//  Created by 菊地英治 on 2022/06/04.
//

import UIKit
import Eureka
import ImageRow
 
class ViewController: FormViewController {
    
    var place : String = ""
    var weather : String = ""
    var averagewaterdepth = Int()
    var  maximumwaterdepth = Int()
    var  startpressure = Int()
    var  finishpressure = Int()
    var  transparency = Int()
    var  instructor : String = ""
    var  Buddy : String = ""
    var  member1 : String = ""
    var  member2 : String = ""
    var  member3 : String = ""
    var  member4 : String = ""
    var InstructorImage:UIImage? = UIImage()
    var BuddyImage:UIImage? = UIImage()
    var member1Image:UIImage? = UIImage()
    var member2Image:UIImage? = UIImage()
    var member3Image:UIImage? = UIImage()
    var member4Image:UIImage? = UIImage()
   

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        form +++ Section("日時")
        
        <<< DateInlineRow(){ row in
            row.title = "日にち"
        }.onChange(){row in
            print(row.value!)
        }
        
        

        
        <<< TextRow { row in
                row.title = "場所"
                row.placeholder = "場所"
                }.onChange{ row in
                self.place = row.value ?? "place"
                    print(self.place )
                }
        
        <<< ActionSheetRow<String>("") {
                $0.title = "天気"
                $0.selectorTitle = "天気を選択"
                $0.options = ["晴れ","曇り","雨"]
                $0.value = "天気"    // 初期選択項目
            }.onChange{row in
                print(row.value as Any)
            }
        
        
        form +++ Section("水深")
        
        <<< IntRow(){ row in
               row.title = "平均"
               row.value = 0
               self.averagewaterdepth  = row.value ?? 0
               }.onChange({ [unowned self] row in
               self.averagewaterdepth  = row.value ?? 0
                   print(self.averagewaterdepth ,"m")
                
               })
        <<< IntRow(){ row in
               row.title = "最大"
               row.value = 0
               self.maximumwaterdepth  = row.value ?? 0
               }.onChange({ [unowned self] row in
               self.maximumwaterdepth  = row.value ?? 0
                   print(self.maximumwaterdepth ,"m")
               })
        
        form +++ Section("圧力")
        
        <<< IntRow(){ row in
               row.title = "開始"
               row.value = 0
               self.startpressure  = row.value ?? 0
               }.onChange({ [unowned self] row in
               self.startpressure  = row.value ?? 0
                   print(self.startpressure ,"m")
               })
        <<< IntRow(){ row in
               row.title = "終了"
               row.value = 0
               self.finishpressure  = row.value ?? 0
               }.onChange({ [unowned self] row in
               self.finishpressure  = row.value ?? 0
                   print(self.finishpressure ,"m")
               })
      
        form +++ Section("海の状態")
        
        <<< IntRow(){ row in
               row.title = "透明度"
               row.value = 0
               self.transparency  = row.value ?? 0
               }.onChange({ [unowned self] row in
               self.transparency  = row.value ?? 0
                   print(self.transparency,"m")
               })
        
        form +++ Section("メンバー")
        
        <<< TextRow { row in
                row.title = "インストラクター"
                row.placeholder = "インストラクター"
                }.onChange{ row in
                self.instructor = row.value ?? "instructor"
                    print(self.place )
                }
        <<< TextRow { row in
                row.title = "バディ"
                row.placeholder = "バディ"
                }.onChange{ row in
                self.Buddy = row.value ?? "バディ"
                    print(self.Buddy )
                }
        
        <<< TextRow { row in
                row.title = "メンバー１"
                row.placeholder = "メンバー１"
                }.onChange{ row in
                self.member1 = row.value ?? "member1 "
                    print(self.member1  )
                }
        
        <<< TextRow { row in
                row.title = "メンバー２"
                row.placeholder = "メンバー２"
                }.onChange{ row in
                self.member2 = row.value ?? "member2 "
                    print(self.member2  )
                }
        <<< TextRow { row in
                row.title = "メンバー2"
                row.placeholder = "メンバー2"
                }.onChange{ row in
                self.member2 = row.value ?? "member2 "
                    print(self.member2 )
                }
        <<< TextRow { row in
                row.title = "メンバー3"
                row.placeholder = "メンバー3"
                }.onChange{ row in
                self.member3 = row.value ?? "member3 "
                    print(self.member3  )
                }
        <<< TextRow { row in
                row.title = "メンバー4"
                row.placeholder = "メンバー4"
                }.onChange{ row in
                self.member4 = row.value ?? "member4 "
                    print(self.member4  )
                }
        
        
        
        form +++ Section("コメント")
            <<< ImageRow() {
                  $0.title = "インストラクター"
                  $0.sourceTypes = [.PhotoLibrary, .SavedPhotosAlbum, .Camera]
                  $0.clearAction = .yes(style: .destructive)
                  self.InstructorImage = nil
                  $0.onChange { [unowned self] row in
                      self.InstructorImage = row.value!
                  }
        
                }
        <<< ImageRow() {
              $0.title = "バディ"
              $0.sourceTypes = [.PhotoLibrary, .SavedPhotosAlbum, .Camera]
              $0.clearAction = .yes(style: .destructive)
              self.BuddyImage = nil
              $0.onChange { [unowned self] row in
                  self.BuddyImage = row.value!
              }
    
            }
        <<< ImageRow() {
              $0.title = "メンバー１"
              $0.sourceTypes = [.PhotoLibrary, .SavedPhotosAlbum, .Camera]
              $0.clearAction = .yes(style: .destructive)
              self.member1Image = nil
              $0.onChange { [unowned self] row in
                  self.member1Image = row.value!
              }
    
            }
        <<< ImageRow() {
              $0.title = "メンバー２"
              $0.sourceTypes = [.PhotoLibrary, .SavedPhotosAlbum, .Camera]
              $0.clearAction = .yes(style: .destructive)
              self.member2Image = nil
              $0.onChange { [unowned self] row in
                  self.member2Image = row.value!
              }
    
            }
        <<< ImageRow() {
              $0.title = "メンバー３"
              $0.sourceTypes = [.PhotoLibrary, .SavedPhotosAlbum, .Camera]
              $0.clearAction = .yes(style: .destructive)
              self.member3Image = nil
              $0.onChange { [unowned self] row in
                  self.member3Image = row.value!
              }
    
            }
        <<< ImageRow() {
              $0.title = "メンバー4"
              $0.sourceTypes = [.PhotoLibrary, .SavedPhotosAlbum, .Camera]
              $0.clearAction = .yes(style: .destructive)
              self.member4Image = nil
              $0.onChange { [unowned self] row in
                  self.member4Image = row.value!
              }
    
            }
        
        
        
        
        
        
        
        
    }


}

