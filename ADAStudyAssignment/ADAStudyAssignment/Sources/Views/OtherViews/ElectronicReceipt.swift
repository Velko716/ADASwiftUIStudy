//
//  ElectronicReceipt.swift
//  ADAStudyAssignment
//
//  Created by 김진혁 on 4/16/25.
//

import SwiftUI
import PhotosUI

struct ElectronicReceipt: View {
    @Bindable var otherVM: OtherViewModel = .init()
    @State private var selectedImageForPreview: UIImage? = nil
    
    var body: some View {
        customNavigationTitleView(otherVM: otherVM)
        
        
        ZStack {
            Color.white01
            
            VStack {
                ScrollView(.vertical) {
                    HStack {
                        ForEach(otherVM.getImages(), id: \.self) { image in
                            
                            OverlayImageView(image: image)
                            
//                            ZStack {
//                                Color.black.opacity(0.8)
//                                Image(uiImage: image)
//                                    .resizable()
//                                    .scaledToFit()
//                                    .frame(width: 100, height: 100)
//                            }
                            
                            
                        } //:LOOP
                    }//: HSTACK
                }//: SCROLL
            }//: VSTACK
        }//: ZSTACK
        .overlay {
            ZStack {
                Color.black.opacity(0.8).ignoresSafeArea(edges: .all)
            }
        }
    }
        
    
}

// MARK: - 커스텀 네비게이션 타이틀 뷰
struct customNavigationTitleView: View {
    @Bindable var otherVM: OtherViewModel
    
    @Environment(\.dismiss) var dismiss
    @State private var isShowingDialog = false
    @State private var showPhotosPicker: Bool = false
    @State private var showCamera: Bool = false
    @State private var selectedItems: [PhotosPickerItem] = []
    @State private var images: [UIImage] = []
    
    var body: some View {
        HStack {
            
            LabeledContent {
                
                Button {
                    isShowingDialog.toggle()
                } label: {
                    Image("plus")
                }
                
            } label: {
                Button {
                    dismiss() // 뒤로가기
                } label: {
                    Image("back")
                }
            }
            .overlay {
                Text("전자영수증")
                    .foregroundStyle(Color.black)
                    .font(.mainTextMedium16)
            }
            .padding(.horizontal, 13.5)
            
            
        }
        .confirmationDialog(
            "영수증을 어떻게 추가할까요?",
            isPresented: $isShowingDialog,
            titleVisibility: .visible
        ) {
            Button("앨범에서 가져오기") {
                print("showPhotosPicker = true")
                showPhotosPicker = true
            }
            
            Button("카메라로 촬영하기") {
                showCamera = true
            }
            
            Button("취소", role: .cancel) {
                
            }
        }
        // 달력 켜기
        .photosPicker(
            isPresented: $showPhotosPicker,
            selection: $selectedItems,
            maxSelectionCount: 1,
            matching: .images
        )
        // 카메라 켜지기
        .sheet(isPresented: $showCamera) {
            CameraPicker { image in
                images.append(image)
            }
        }
        // 앨범에서 이미지를 불러올때
        .onChange(of: selectedItems) { newItems  in
            for item in newItems {
                Task {
                    if let data = try? await item.loadTransferable(type: Data.self),
                       let image = UIImage(data: data) {
                        otherVM.appendImage(image) // ✅ 여기서 뷰모델에 전달
                    }
                }
            }
        }
        /*
         isPresented: $showPhotosPicker,
         selection: $selectedItems,
         maxSelectionCount: 5,
         matching: .images
         */
    }
}


// MARK: - 오버레이 이미지 view
struct OverlayImageView: View {
    let image: UIImage
    
    var body: some View {
        ZStack {
            Color.black.opacity(0.8)
            
            VStack {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
            } //: VSTACK
            
        }//: ZSTACK
    }
    
}

#Preview {
    ElectronicReceipt()
}
