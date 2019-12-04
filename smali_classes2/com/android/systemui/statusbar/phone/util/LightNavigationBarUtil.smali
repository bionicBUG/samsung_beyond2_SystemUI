.class public Lcom/android/systemui/statusbar/phone/util/LightNavigationBarUtil;
.super Ljava/lang/Object;
.source "LightNavigationBarUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBackgroundOpaqueColor(Landroid/content/Context;)I
    .locals 1

    .line 9
    sget v0, Lcom/android/systemui/R$color;->light_navbar_background_opaque:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method
