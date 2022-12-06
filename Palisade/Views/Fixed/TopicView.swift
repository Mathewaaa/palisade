//
//  TopicsView.swift
//  Palisade
//
//  Created by KKaay on 11/24/22.
//

import SwiftUI

struct TopicView: View {
    @Binding var topic: Category
    var body: some View {
        VStack {
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
                            topic = Category.sports
                        } label: {
                            Text("Sports")
                                .foregroundColor(Color.white)
                                .padding()
                                .frame(width: 150.0, height: 100.0)
                                .background(Color.gray)
                                .cornerRadius(10)
                        }
                        Spacer()
                        Button {
                            topic = Category.nature
                        } label: {
                            Text("Nature")
                                .foregroundColor(Color.white)
                                .padding()
                                .frame(width: 150.0, height: 100.0)
                                .background(Color.gray)
                                .cornerRadius(10)
                        }
                        Spacer()
                    }
                    Spacer()
                        .frame(height: 40.0)
                    HStack {
                        Spacer()
                        Button {
                            topic = Category.art
                        } label: {
                            Text("Art")
                                .foregroundColor(Color.white)
                                .padding()
                                .frame(width: 150.0, height: 100.0)
                                .background(Color.gray)
                                .cornerRadius(10)
                        }
                        Spacer()
                        Button {
                            topic = Category.dating
                        } label: {
                            Text("Dating")
                                .foregroundColor(Color.white)
                                .padding()
                                .frame(width: 150.0, height: 100.0)
                                .background(Color.gray)
                                .cornerRadius(10)
                        }
                        Spacer()
                    }
                    Spacer()
                        .frame(height: 40.0)
                    HStack {
                        Spacer()
                        Button {
                            topic = Category.gaming
                        } label: {
                            Text("Gaming")
                                .foregroundColor(Color.white)
                                .padding()
                                .frame(width: 150.0, height: 100.0)
                                .background(Color.gray)
                                .cornerRadius(10)
                        }
                        Spacer()
                        Button {
                            topic = Category.food
                        } label: {
                            Text("Food")
                                .foregroundColor(Color.white)
                                .padding()
                                .frame(width: 150.0, height: 100.0)
                                .background(Color.gray)
                                .cornerRadius(10)
                        }
                        Spacer()
                    }
                    Spacer()
                        .frame(height: 40.0)
                    HStack {
                        Spacer()
                        Button {
                            topic = Category.feelings
                        } label: {
                            Text("Feelings")
                                .foregroundColor(Color.white)
                                .padding()
                                .frame(width: 150.0, height: 100.0)
                                .background(Color.gray)
                                .cornerRadius(10)
                        }
                        Spacer()
                        Button {
                            topic = Category.work
                        } label: {
                            Text("Work")
                                .foregroundColor(Color.white)
                                .padding()
                                .frame(width: 150.0, height: 100.0)
                                .background(Color.gray)
                                .cornerRadius(10)
                        }
                        Spacer()
                    }
                    Spacer()
                }
            }
        }
    }
}

