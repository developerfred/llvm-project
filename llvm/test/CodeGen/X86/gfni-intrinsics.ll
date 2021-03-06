; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc < %s -mtriple=i386-apple-darwin -mattr=+gfni -show-mc-encoding | FileCheck %s

declare <16 x i8> @llvm.x86.vgf2p8affineinvqb.128(<16 x i8>, <16 x i8>, i8)
define <16 x i8> @test_gf2p8affineinvqb_128(<16 x i8> %src1, <16 x i8> %src2) {
; CHECK-LABEL: test_gf2p8affineinvqb_128:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    gf2p8affineinvqb $11, %xmm1, %xmm0 ## encoding: [0x66,0x0f,0x3a,0xcf,0xc1,0x0b]
; CHECK-NEXT:    retl ## encoding: [0xc3]
 %1 = call <16 x i8> @llvm.x86.vgf2p8affineinvqb.128(<16 x i8> %src1, <16 x i8> %src2, i8 11)
 ret <16 x i8> %1
}

declare <16 x i8> @llvm.x86.vgf2p8affineqb.128(<16 x i8>, <16 x i8>, i8)
define <16 x i8> @test_gf2p8affineqb_128(<16 x i8> %src1, <16 x i8> %src2) {
; CHECK-LABEL: test_gf2p8affineqb_128:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    gf2p8affineqb $11, %xmm1, %xmm0 ## encoding: [0x66,0x0f,0x3a,0xce,0xc1,0x0b]
; CHECK-NEXT:    retl ## encoding: [0xc3]
 %1 = call <16 x i8> @llvm.x86.vgf2p8affineqb.128(<16 x i8> %src1, <16 x i8> %src2, i8 11)
 ret <16 x i8> %1
}

declare <16 x i8> @llvm.x86.vgf2p8mulb.128(<16 x i8>, <16 x i8>)
define <16 x i8> @test_gf2p8mulb_128(<16 x i8> %src1, <16 x i8> %src2) {
; CHECK-LABEL: test_gf2p8mulb_128:
; CHECK:       ## %bb.0:
; CHECK-NEXT:    gf2p8mulb %xmm1, %xmm0 ## encoding: [0x66,0x0f,0x38,0xcf,0xc1]
; CHECK-NEXT:    retl ## encoding: [0xc3]
  %1 = call <16 x i8> @llvm.x86.vgf2p8mulb.128(<16 x i8> %src1, <16 x i8> %src2)
  ret <16 x i8> %1
}

