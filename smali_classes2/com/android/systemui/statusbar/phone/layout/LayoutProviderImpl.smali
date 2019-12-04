.class public Lcom/android/systemui/statusbar/phone/layout/LayoutProviderImpl;
.super Ljava/lang/Object;
.source "LayoutProviderImpl.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/layout/LayoutProviderImpl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getButtonDistanceSize(Landroid/graphics/Point;Z)I
    .locals 2

    .line 68
    iget p0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-double p0, p0

    const-wide v0, 0x3fbc28f5c0000000L    # 0.10999999940395355

    mul-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method public getButtonWidth(Landroid/graphics/Point;Z)I
    .locals 2

    .line 53
    iget p0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-double p0, p0

    const-wide v0, 0x3fcc710cc0000000L    # 0.22220000624656677

    mul-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method public getGesturalLayout(ZZ)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 38
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/layout/LayoutProviderImpl;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->config_secNavBarGestureRevLayoutHandle:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 39
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/layout/LayoutProviderImpl;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->config_secNavBarGestureLayoutHandle:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    if-eqz p2, :cond_2

    .line 41
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/layout/LayoutProviderImpl;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->config_secNavBarRevLayoutHandle:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 42
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/layout/LayoutProviderImpl;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->config_secNavBarLayoutHandle:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public getGestureWidth(Landroid/graphics/Point;Z)I
    .locals 2

    .line 58
    iget p0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-double p0, p0

    const-wide v0, 0x3fcc710cc0000000L    # 0.22220000624656677

    mul-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method public getLayout(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 25
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/layout/LayoutProviderImpl;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->config_secNavBarRevLayout:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 27
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/layout/LayoutProviderImpl;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->config_secNavBarLayout:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLayout(ZI)Ljava/lang/String;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/layout/LayoutProviderImpl;->getLayout(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSpaceSidePadding(Landroid/graphics/Point;Z)I
    .locals 2

    .line 73
    iget p0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-double p0, p0

    const-wide/16 v0, 0x0

    mul-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method public getSpaceWidth(Landroid/graphics/Point;Z)I
    .locals 2

    .line 63
    iget p0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-double p0, p0

    const-wide v0, 0x3fbc28f5c0000000L    # 0.10999999940395355

    mul-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method public getVerticalLayoutID(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 48
    sget p0, Lcom/android/systemui/R$layout;->sec_navigation_layout_vertical:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/android/systemui/R$layout;->sec_navigation_layout:I

    :goto_0
    return p0
.end method
