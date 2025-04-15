//
//  ShopView.swift
//  ADAStudyAssignment
//
//  Created by 김진혁 on 4/14/25.
//

import SwiftUI

struct ShopView: View {
    @EnvironmentObject var shopVM: ShopViewModel // 🤔 @StateObject? @State?
    
    var body: some View {
        ZStack {
            Color.white01
            ScrollView(showsIndicators: false) {
                
                
                
                StarBucksOnlineStoreView() // 스타벅스 온라인 스토어 View
                
                Spacer()
                
                AllProductView() // All Product View
                
                Spacer()
                
                BestItemsView()
                
                Spacer()
                
                NewProductsView()
                
                
            }//: SCROLL
            
            .padding(.horizontal, 19)
            
        }//: ZSTACK
    }
}

// MARK: - 스타벅스 온라인 스토어 View
struct StarBucksOnlineStoreView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Starbucks Online Store")
                .font(.mainTextBold24)
                .foregroundStyle(Color.black03)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 28) {
                    Group {
                        Image("Variant1")
                        Image("Variant2")
                        Image("Variant3")
                    }
                    
                }
            }//: SCROLL
        } //: VSTACK
        
       
        
    }
}

// MARK: - All Product View
struct AllProductView: View {
    @EnvironmentObject var shopVM: ShopViewModel // 🤔 @ObservedObject, @Binding?, @EnvironmentObject
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("All Products")
                .font(.mainTextBold24)
                .foregroundStyle(Color.black03)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 17) {
                    ForEach(shopVM.products) { item in
                        ProductsCard(image: item.image, label: item.name)
                    } //:LOOP
                }//: HSTACK
            }//: SCROLL
            
            
            
        }//: VSTACK
        
    }
}

// MARK: - Best Items
struct BestItemsView: View {
    @EnvironmentObject private var shopVM: ShopViewModel
    @State private var selectedPage = 0
    
    let columns = Array(repeating: GridItem(.flexible()), count: 2)

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Best Items")
                .font(.mainTextBold24)
                .foregroundStyle(Color.black03)
            
            ScrollView(showsIndicators: false) {
                LazyVGrid(columns: columns) {
                    ForEach(shopVM.bestImems) { item in
                        RectangleItemCard(
                            image: item.image,
                            name: item.name,
                            size: item.size
                        )
                    } //:LOOP
                } //: VGRID
                // FIXME: - TabView, tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                
                
            }//: VSTACK
            
        }
    }
    
}


// MARK: - New Products View
struct NewProductsView: View {
    @EnvironmentObject var shopVM: ShopViewModel
    
    let columns = Array(repeating: GridItem(.flexible()), count: 2)
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("New Products")
                .font(.mainTextBold24)
                .foregroundStyle(Color.black03)
            ScrollView(showsIndicators: false) {
                LazyVGrid(columns: columns) {
                    ForEach(shopVM.rectangleItems) { item in
                        RectangleItemCard(
                            image: item.image,
                            name: item.name,
                            size: item.size
                        )
                    } //:LOOP
                } //: VGRID
            }//: SCROLL
        } //: VSTACK
    }
}

#Preview {
   // @Previewable @EnvironmentObject var shopVM: ShopViewModel
    
    ShopView()
        .environmentObject(ShopViewModel(products: []))
}
