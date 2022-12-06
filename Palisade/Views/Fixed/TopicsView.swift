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
                .font(.title)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .fontWeight(.heavy)
            Spacer()
            VStack {
                Spacer()
                VStack {
                    HStack {
                        Spacer()
                        Button {
                            topic = "Sports"
                        } label: {
                            Text("Sports")
                                .foregroundColor(Color.white)
                                .padding()
                                .frame(width: 175.0, height: 150.0)
                                .background(Color.gray)
                                .cornerRadius(10)
                                .shadow(radius: 5)
                        }
                        Spacer()
                        Button {
                            topic = "Nature"
                        } label: {
                            Text("Nature")
<<<<<<< HEAD
=======
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
                            topic = "Art"
                        } label: {
                            Text("Art")
                                .foregroundColor(Color.white)
                                .padding()
                                .frame(width: 175.0, height: 150.0)
                                .background(Color.gray)
                                .cornerRadius(10)
                        }
                        Spacer()
                        Button {
                            topic = "Dating"
                        } label: {
                            Text("Dating")
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
                            topic = "Gaming"
                        } label: {
                            Text("Gaming")
                                .foregroundColor(Color.white)
                                .padding()
                                .frame(width: 175.0, height: 150.0)
                                .background(Color.gray)
                                .cornerRadius(10)
                        }
                        Spacer()
                        Button {
                            print("Food")
                        } label: {
                            Text("Food")
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
                            print("Feelings")
                        } label: {
                            Text("Feelings")
                                .foregroundColor(Color.white)
                                .padding()
                                .frame(width: 175.0, height: 150.0)
                                .background(Color.gray)
                                .cornerRadius(10)
                        }
                        Spacer()
                        Button {
                            print("Work")
                        } label: {
                            Text("Work")
>>>>>>> b003f9170ecceadf71302415559ae71cc83f18ec
                                .foregroundColor(Color.white)
                                .padding()
                                .frame(width: 175.0, height: 150.0)
                                .background(Color.gray)
                                .cornerRadius(10)
                                .shadow(radius: 5)
                        }
                        Spacer()
                    }
                    Spacer()
                    HStack {
                        Spacer()
                        Button {
                            topic = "Art"
                        } label: {
                            Text("Art")
                                .foregroundColor(Color.white)
                                .padding()
                                .frame(width: 175.0, height: 150.0)
                                .background(Color.gray)
                                .cornerRadius(10)
                                .shadow(radius: 5)
                        }
                        Spacer()
                        Button {
                            topic = "Dating"
                        } label: {
                            Text("Dating")
                                .foregroundColor(Color.white)
                                .padding()
                                .frame(width: 175.0, height: 150.0)
                                .background(Color.gray)
                                .cornerRadius(10)
                                .shadow(radius: 5)
                        }
                        Spacer()
                    }
                    Spacer()
                    HStack {
                        Spacer()
                        Button {
                            topic = "Gaming"
                        } label: {
                            Text("Gaming")
                                .foregroundColor(Color.white)
                                .padding()
                                .frame(width: 175.0, height: 150.0)
                                .background(Color.gray)
                                .cornerRadius(10)
                                .shadow(radius: 5)
                        }
                        Spacer()
                        Button {
                            print("Food")
                        } label: {
                            Text("Food")
                                .foregroundColor(Color.white)
                                .padding()
                                .frame(width: 175.0, height: 150.0)
                                .background(Color.gray)
                                .cornerRadius(10)
                                .shadow(radius: 5)
                        }
                        Spacer()
                    }
                    Spacer()
                    HStack {
                        Spacer()
                        Button {
                            print("Feelings")
                        } label: {
                            Text("Feelings")
                                .foregroundColor(Color.white)
                                .padding()
                                .frame(width: 175.0, height: 150.0)
                                .background(Color.gray)
                                .cornerRadius(10)
                                .shadow(radius: 5)
                        }
                        Spacer()
                        Button {
                            print("Work")
                        } label: {
                            Text("Work")
                                .foregroundColor(Color.white)
                                .padding()
                                .frame(width: 175.0, height: 150.0)
                                .background(Color.gray)
                                .cornerRadius(10)
                                .shadow(radius: 5)
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

