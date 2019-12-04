.class public Lcom/android/keyguard/biometrics/KeyguardBiometricProximityInterpolator;
.super Landroid/view/animation/PathInterpolator;
.source "KeyguardBiometricProximityInterpolator.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    const v0, 0x3e2e147b    # 0.17f

    const v1, 0x3e23d70a    # 0.16f

    const v2, 0x3ecccccd    # 0.4f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 23
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-void
.end method
