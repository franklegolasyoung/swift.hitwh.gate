//
//  ContentView.swift
//  InAndOut
//
//  Created by Frank Young on 2020/10/19.
//  Copyright © 2020 Frank Young. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    init() {
        // To remove only extra separators below the list:
        UITableView.appearance().tableFooterView = UIView()
        
        // To remove all separators including the actual ones:
        //UITableView.appearance().separatorStyle = .none
    }
    var body: some View {
        VStack{
            HStack {
                TabView{
                    NavigationView{
                        VStack{
                            ZStack{
                                Rectangle().fill(Color(RGB(red: 13,green: 120,blue: 190))).frame(width: 420, height: 75, alignment: .top)
                                HStack(alignment: .bottom){
                                    VStack(alignment:.leading,spacing: 3){
                                        Text("杨卓宸").font(.custom("PingFangSC-Semibold", size: 20)).foregroundColor(Color.white).padding(EdgeInsets(top: 5, leading: 20, bottom: 0, trailing: 0))
                                        Text("2180400715").font(.system(size: 15)).foregroundColor(Color.white).padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
                                    }
                                    Spacer()
                                    Image(uiImage: UIImage(imageLiteralResourceName: "exit.JPG")).resizable().frame(width: 101, height: 44)
                                }
                            }
                            //1
                            Divider()
                            
                            VStack(alignment:.leading,spacing: 10){
                                Text("位置信息").font(.custom("PingFangSC-Semibold", size: 17)).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                                Text("楼宇：学校南门出(限制2次)").font(.system(size: 15)).foregroundColor(Color.gray).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                                Text("日期："+getNowTimeStampMillisecond()).font(.system(size: 15)).foregroundColor(Color.gray).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                            }.frame(width: 375, height: 80, alignment: .leading)
                            //2
                            Divider()
                            
                            ZStack{
                                Rectangle().frame(width: 375, height: 60, alignment: .top).foregroundColor(Color.white)
                                RoundedRectangle(cornerRadius: 50)
                                    .fill(Color(RGB(red: 0,green: 129,blue: 209)))
                                    .frame(width: 250, height: 40)
                                Text("上报位置成功").font((.system(size: 16))).foregroundColor(Color.white)
                            }
                            //3
                            //Rectangle().frame(width: 375, height: 10, alignment: .top).foregroundColor(Color(RGB(red: 245,green: 245,blue: 245)))
                            List{
                                Text("今日上报").font(.system(size: 14))
                                //Divider()
                                VStack(alignment: .leading, spacing: 5){
                                    Rectangle().frame(width: 375, height: 10, alignment: .top).foregroundColor(Color.white)
                                    Text("上报时间："+getNowTimeStampMillisecond()).font(.system(size: 15))
                                    Text("学校南门出(限制2次) ｜ 进入").font(.system(size: 13)).foregroundColor(Color.gray)
                                    Rectangle().frame(width: 375, height: 10, alignment: .top).foregroundColor(Color.white)
                                }
                            }.listStyle(GroupedListStyle())
                            .navigationBarTitle(Text("上报位置"),displayMode: .inline)
                        }
                    }
                    .tabItem{
                        Image(systemName: "1.circle")
                        Text("OUT")
                    }.tag(0)
                    
                    NavigationView{
                        VStack{
                            ZStack{
                                Rectangle().fill(Color(RGB(red: 13,green: 120,blue: 190))).frame(width: 420, height: 75, alignment: .top)
                                HStack(alignment: .bottom){
                                    VStack(alignment:.leading,spacing: 3){
                                        Text("杨卓宸").font(.custom("PingFangSC-Semibold", size: 20)).foregroundColor(Color.white).padding(EdgeInsets(top: 5, leading: 20, bottom: 0, trailing: 0))
                                        Text("2180400715").font(.system(size: 15)).foregroundColor(Color.white).padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
                                    }
                                    Spacer()
                                    Image(uiImage: UIImage(imageLiteralResourceName: "exit.JPG")).resizable().frame(width: 101, height: 44)
                                }
                            }
                            /*ZStack{
                                Rectangle()
                                    .fill(Color(RGB(red: 0,green: 129,blue: 209))).frame(width: 375, height: 75, alignment: .top)
                                VStack(alignment:.leading,spacing: 3){
                                    HStack(alignment: .bottom){
                                        Text("杨卓宸").font(.custom("PingFangSC-Semibold", size: 20)).foregroundColor(Color.white)
                                        Spacer()
                                        Text("退出登录").font((.system(size: 13))).foregroundColor(Color.white)
                                    }
                                    Text("2180400715").font(.system(size: 15)).foregroundColor(Color.white)
                                }.frame(width: 350, height: 70, alignment: .center)
                            }*/
                            //1
                            Divider()
                            
                            VStack(alignment:.leading,spacing: 10){
                                Text("位置信息").font(.custom("PingFangSC-Semibold", size: 17)).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                                Text("楼宇：学校南门进(限制2次)").font(.system(size: 15)).foregroundColor(Color.gray).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                                Text("日期："+getNowTimeStampMillisecond()).font(.system(size: 15)).foregroundColor(Color.gray).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                            }.frame(width: 375, height: 80, alignment: .leading)
                            //2
                            Divider()
                            
                            ZStack{
                                Rectangle().frame(width: 375, height: 60, alignment: .top).foregroundColor(Color.white)
                                RoundedRectangle(cornerRadius: 50)
                                    .fill(Color(RGB(red: 0,green: 129,blue: 209)))
                                    .frame(width: 250, height: 40)
                                Text("上报位置成功").font((.system(size: 16))).foregroundColor(Color.white)
                            }
                            //3
                            //Rectangle().frame(width: 375, height: 10, alignment: .top).foregroundColor(Color(RGB(red: 245,green: 245,blue: 245)))
                            List{
                                Text("今日上报").font(.system(size: 14))
                                //Divider()
                                VStack(alignment: .leading, spacing: 5){
                                    Rectangle().frame(width: 375, height: 10, alignment: .top).foregroundColor(Color.white)
                                    Text("上报时间："+getNowTimeStampMillisecond()).font(.system(size: 15))
                                    Text("学校南门进(限制2次) ｜ 进入").font(.system(size: 13)).foregroundColor(Color.gray)
                                    Rectangle().frame(width: 375, height: 10, alignment: .top).foregroundColor(Color.white)
                                }
                                VStack(alignment: .leading, spacing: 5){
                                    Rectangle().frame(width: 375, height: 10, alignment: .top).foregroundColor(Color.white)
                                    Text("上报时间："+getTimeStampMillisecond()+" 08:24").font(.system(size: 15))
                                    Text("学校南门出(限制2次) ｜ 进入").font(.system(size: 13)).foregroundColor(Color.gray)
                                    Rectangle().frame(width: 375, height: 10, alignment: .top).foregroundColor(Color.white)
                                }
                            }.listStyle(GroupedListStyle())
                            .navigationBarTitle(Text("上报位置"),displayMode: .inline)
                        }
                    }
                    .tabItem{
                        Image(systemName: "2.circle")
                        Text("IN")
                            .navigationBarTitle("上报位置", displayMode: .inline)
                    }.tag(1)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//MARK: 获取当前时间
func getNowTimeStampMillisecond() -> String {
    let date = Date()
    let timeFormatter = DateFormatter()
    //日期显示格式，可按自己需求显示，HH：24h，hh：12h。
    timeFormatter.dateFormat = "yyy-MM-dd' 'HH:mm"
    let timeStamp = timeFormatter.string(from: date) as String
    return timeStamp
}

//MARK: 伪造时间
func getTimeStampMillisecond() -> String {
    let date = Date()
    let timeFormatter = DateFormatter()
    timeFormatter.dateFormat = "yyy-MM-dd"
    let timeStamp = timeFormatter.string(from: date) as String
    return timeStamp
}

//MARK: RGB颜色调用
func RGB(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
    return UIColor.init(red: red / 255.0, green: green / 255.0, blue: blue / 255.0, alpha: 1.0)
}
