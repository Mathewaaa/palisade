//
//  TopicsView.swift
//  Palisade
//
//  Created by KKaay on 11/24/22.
//

import SwiftUI

struct TopicsView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Topics")
                .font(.largeTitle)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Spacer()
            VStack {
                Spacer()
                VStack {
                    HStack {
                        Spacer()
                        Button {
                            print("Hello")
                        } label: {
                            Text("Animals")
                                .foregroundColor(Color.white)
                                .padding()
                                .frame(width: 175.0, height: 150.0)
                                .background(Color.gray)
                                .cornerRadius(10)
                        }
                        Spacer()
                        Button {
                            print("Hi")
                        } label: {
                            Text("Movies/TV Shows")
                                .foregroundColor(Color.white)
                                .padding()
                                .frame(width: 175.0, height: 150.0)
                                .background(Color.gray)
                                .cornerRadius(10)
                        }
                        Spacer()
                    }
                    Spacer()
                    HStack {
                        Spacer()
                        Button {
                            print("Hello")
                        } label: {
                            Text("Dating")
                                .foregroundColor(Color.white)
                                .padding()
                                .frame(width: 175.0, height: 150.0)
                                .background(Color.gray)
                                .cornerRadius(10)
                        }
                        Spacer()
                        Button {
                            print("Hi")
                        } label: {
                            Text("Beauty")
                                .foregroundColor(Color.white)
                                .padding()
                                .frame(width: 175.0, height: 150.0)
                                .background(Color.gray)
                                .cornerRadius(10)
                        }
                        Spacer()
                    }
                    Spacer()
                    HStack {
                        Spacer()
                        Button {
                            print("Hello")
                        } label: {
                            Text("Food")
                                .foregroundColor(Color.white)
                                .padding()
                                .frame(width: 175.0, height: 150.0)
                                .background(Color.gray)
                                .cornerRadius(10)
                        }
                        Spacer()
                        Button {
                            print("Hi")
                        } label: {
                            Text("Fashion")
                                .foregroundColor(Color.white)
                                .padding()
                                .frame(width: 175.0, height: 150.0)
                                .background(Color.gray)
                                .cornerRadius(10)
                        }
                        Spacer()
                    }
                    Spacer()
                    HStack {
                        Spacer()
                        Button {
                            print("Hello")
                        } label: {
                            Text("Sports")
                                .foregroundColor(Color.white)
                                .padding()
                                .frame(width: 175.0, height: 150.0)
                                .background(Color.gray)
                                .cornerRadius(10)
                        }
                        Spacer()
                        Button {
                            print("Hi")
                        } label: {
                            Text("Education")
                                .foregroundColor(Color.white)
                                .padding()
                                .frame(width: 175.0, height: 150.0)
                                .background(Color.gray)
                                .cornerRadius(10)
                        }
                        Spacer()
                    }
                }
            }
        }
    }
}

struct TopicsView_Previews: PreviewProvider {
    static var previews: some View {
        TopicsView()
    }
}

