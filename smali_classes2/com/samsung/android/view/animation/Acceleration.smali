.class public Lcom/samsung/android/view/animation/Acceleration;
.super Landroid/view/animation/PathInterpolator;
.source "Acceleration.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    .line 8
    invoke-direct {p0, v1, v2, v0, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-void
.end method
