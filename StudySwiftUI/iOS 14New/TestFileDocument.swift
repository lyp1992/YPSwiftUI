//
//  TestFileDocument.swift
//  StudySwiftUI
//
//  Created by Lai,Yongpeng on 2020/8/5.
//

import SwiftUI
import UniformTypeIdentifiers //引入统一的类型标识符说明文档可以使用的数据类型
// 创建、编辑、共享文本之类
/*
 1.定义文档、包括莹如何保存和加载文档
 2.创建某种允许用户编辑文档的视图
 3.创建一个DocumentGroup能够创建文件并将其加载到用户界面的功能
 */
struct TextFile: FileDocument {

    // 告诉系统我们仅支持plain text
    static var readableContentTypes = [UTType.plainText]
    
    var text = ""
    init(initialText: String = "") {
        text = initialText
    }
    // 这个初始化器加载先前保存的数据
    init(fileWrapper: FileWrapper, contentType: UTType) throws {
        if let data = fileWrapper.regularFileContents {
            text = String(decoding: data, as: UTF8.self)
        }
    }
    
    func write(to fileWrapper: inout FileWrapper, contentType: UTType) throws {
//        let data = LandMarkDatas(text.utf8)
//        fileWrapper = FileWrapper(regularFileWithContents: data)
    }
    
}

struct TestFileDocument: View {
    
    @Binding var document: TextFile
    var body: some View {
        TextEditor(text: $document.text).background(Color.yellow)
    }
}

struct TestFileDocument_Previews: PreviewProvider {
    static var previews: some View {
        TestFileDocument(document: .constant(TextFile()))
    }
}
