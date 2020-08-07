//
//  ContentView.swift
//  SettingsScreenUsingFormInSwiftUI
//
//  Created by ramil on 07.08.2020.
//

import SwiftUI

struct ContentView: View {
    @State var username: String = ""
    @State private var isPrivate: Bool = true
    @State private var notificationEnable: Bool = false
    @State private var previewIndex = 0
    
    let previewOptions = ["Always", "When Unlocked", "Never"]
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    HStack {
                        Image(systemName: "person.circle.fill")
                            .font(.system(size: 50))
                            .foregroundColor(.gray)
                        
                        VStack(alignment: .leading) {
                            Button {
                                
                            } label: {
                                Text("Sign in to your iPhone")
                            }.font(.callout)
                            
                            Text("Setup iCloud, the App Store, and more.")
                                .font(.caption)
                                .foregroundColor(.secondary)

                        }
                    }
                }
                
                Section {
                    HStack {
                        Image(systemName: "gear")
                            .frame(width: 25, height: 25)
                            .foregroundColor(.white)
                            .background(Color.gray)
                            .clipShape(RoundedRectangle(cornerRadius: 5))
                        Picker(selection: $previewIndex, label: Text("General")) {
                            
                        }
                    }
                    
                    HStack {
                        Image(systemName: "person.crop.circle.badge.exclam")
                            .frame(width: 25, height: 25)
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .clipShape(RoundedRectangle(cornerRadius: 5))
                        Picker(selection: $previewIndex, label: Text("Accesibility")) {
                            
                        }
                    }
                    
                    HStack {
                        Image(systemName: "hand.raised.fill")
                            .frame(width: 25, height: 25)
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .clipShape(RoundedRectangle(cornerRadius: 5))
                        Picker(selection: $previewIndex, label: Text("Privacy")) {
                            
                        }
                    }
                }
                
                Section {
                    HStack {
                        Image(systemName: "key.fill")
                            .frame(width: 25, height: 25)
                            .foregroundColor(.white)
                            .background(Color.gray)
                            .clipShape(RoundedRectangle(cornerRadius: 5))
                        Picker(selection: $previewIndex, label: Text("Password")) {
                            
                        }
                    }
                }
                
                Section(header: Text("Profile")) {
                    TextField("Username", text: $username)
                    Toggle(isOn: $isPrivate) {
                        Text("Private Account")
                    }
                }
                
                Section(header: Text("Notifications")) {
                    Toggle(isOn: $notificationEnable) {
                        Text("Enable")
                    }
                    Picker(selection: $previewIndex, label: Text("Show Previews")) {
                        ForEach(0..<previewOptions.count) {
                            Text(self.previewOptions[$0])
                        }
                    }
                }
                
                Section(header: Text("About")) {
                    HStack {
                        Text("Version")
                        Spacer()
                        Text("2.3.1")
                    }
                }
                
                Section {
                    Button(action: {
                        
                    }, label: {
                        Text("Reset All Settings")
                    })
                }
                
                
            }.navigationBarTitle("Settings")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
