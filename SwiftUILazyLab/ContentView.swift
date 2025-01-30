//
//  ContentView.swift
//  SwiftUILazyLab
//
//  Created by Gwen Thelin on 1/30/25.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		ScrollView(.vertical, showsIndicators: false) {
			VStack {
				Text("Hats")
					.font(.title)
				
				ScrollView(.horizontal) {
					LazyHStack(spacing: 16) {
						ForEach(0..<hats.count, id: \.self) { index in
							let currentHat = hats[index]
							
							VStack {
								Text(currentHat.name)
									.font(.headline)
								Text("\(currentHat.price.formatted(.currency(code: "USD")))")
									.fontWeight(.light)
								Text(currentHat.color)
									.font(.callout)
									.foregroundStyle(.secondary)
							}
							.frame(width: 120, height: 120)
							.padding(.horizontal, 8)
							.background(Color.yellow.opacity(0.1))
							.cornerRadius(12)
						}
					}
					.scrollTargetLayout()
					.frame(height: 160)
					.padding(.horizontal)
				}
				.scrollTargetBehavior(.viewAligned)
				
				Text("Shirts")
					.font(.title)
				
				ScrollView(.horizontal, showsIndicators: false) {
					LazyHGrid(
						rows: [
							GridItem(.fixed(90), spacing: 24),
							GridItem(.fixed(90), spacing: 24)
						],
						spacing: 16
					) {
						ForEach(0..<shirts.count, id: \.self) { index in
							var currentShirt = shirts[index]
							
							VStack {
								Text(currentShirt.name)
									.font(.headline)
								Text("\(currentShirt.price.formatted(.currency(code: "USD")))")
									.fontWeight(.light)
								Text(currentShirt.color)
									.font(.callout)
									.foregroundStyle(.secondary)
							}
							.frame(width: 100, height: 100)
							.padding(.horizontal, 8)
							.background(Color.red.opacity(0.1))
							.cornerRadius(12)
						}
					}
					.scrollTargetLayout()
					.padding(.horizontal)
					
				}
				.scrollTargetBehavior(.viewAligned)
				
				Text("Pants")
					.font(.title)
				
				ScrollView(.horizontal, showsIndicators: false) {
					LazyHGrid(
						rows: [
							GridItem(.adaptive(minimum: 130, maximum: 170), spacing: 16),
							GridItem(.adaptive(minimum: 130, maximum: 170), spacing: 16),
							GridItem(.adaptive(minimum: 130, maximum: 170), spacing: 16),
							GridItem(.adaptive(minimum: 130, maximum: 170), spacing: 16)
						],
						spacing: 24
					) {
						ForEach(0..<pants.count, id: \.self) { index in
							var currentPants = pants[index]
							
							VStack {
								Text(currentPants.name)
									.font(.headline)
								Text("\(currentPants.price.formatted(.currency(code: "USD")))")
									.fontWeight(.light)
								Text(currentPants.color)
									.font(.callout)
									.foregroundStyle(.secondary)
							}
							.frame(width: 90, height: 90)
							.padding(.horizontal, 8)
							.background(Color.indigo.opacity(0.1))
							.cornerRadius(12)
						}
					}
					.scrollTargetLayout()
					.padding(.horizontal)
				}
				.scrollTargetBehavior(.viewAligned)
			}
			.padding()
		}
	}
}

#Preview {
    ContentView()
}
