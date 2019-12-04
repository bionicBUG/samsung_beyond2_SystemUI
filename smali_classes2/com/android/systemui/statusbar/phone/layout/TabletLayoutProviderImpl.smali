.class public Lcom/android/systemui/statusbar/phone/layout/TabletLayoutProviderImpl;
.super Ljava/lang/Object;
.source "TabletLayoutProviderImpl.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;


# instance fields
.field mContext:Landroid/content/Context;

.field mCurrentAlign:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 24
    iput v0, p0, Lcom/android/systemui/statusbar/phone/layout/TabletLayoutProviderImpl;->mCurrentAlign:I

    .line 27
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/layout/TabletLayoutProviderImpl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getButtonDistanceSize(Landroid/graphics/Point;Z)I
    .locals 2

    .line 85
    iget p0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    :goto_0
    int-to-double p0, p0

    const-wide v0, 0x3f8a9fbe80000000L    # 0.013000000268220901

    mul-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method public getButtonWidth(Landroid/graphics/Point;Z)I
    .locals 2

    if-eqz p2, :cond_0

    .line 68
    iget p2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_0
    iget p2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    int-to-double p1, p1

    .line 69
    iget p0, p0, Lcom/android/systemui/statusbar/phone/layout/TabletLayoutProviderImpl;->mCurrentAlign:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-wide v0, 0x3fca7ef9e0000000L    # 0.2070000022649765

    goto :goto_1

    :cond_1
    const-wide v0, 0x3fc70a3d80000000L    # 0.18000000715255737

    :goto_1
    mul-double/2addr p1, v0

    double-to-int p0, p1

    return p0
.end method

.method public getGesturalLayout(ZZ)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/layout/TabletLayoutProviderImpl;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->config_secNavBarGestureTabletRevLayoutHandle:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 54
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/layout/TabletLayoutProviderImpl;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->config_secNavBarGestureTabletLayoutHandle:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    if-eqz p2, :cond_2

    .line 56
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/layout/TabletLayoutProviderImpl;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->config_secNavBarRevLayoutHandle:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 57
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/layout/TabletLayoutProviderImpl;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->config_secNavBarLayoutHandle:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public getGestureWidth(Landroid/graphics/Point;Z)I
    .locals 2

    .line 74
    iget p0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-double p0, p0

    const-wide v0, 0x3fd3333340000000L    # 0.30000001192092896

    mul-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method public getLayout(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 33
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/layout/TabletLayoutProviderImpl;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->config_navBarRevTabletLayout:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 35
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/layout/TabletLayoutProviderImpl;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->config_navBarTabletLayout:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLayout(ZI)Ljava/lang/String;
    .locals 1

    .line 40
    iput p2, p0, Lcom/android/systemui/statusbar/phone/layout/TabletLayoutProviderImpl;->mCurrentAlign:I

    if-nez p2, :cond_1

    .line 42
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/layout/TabletLayoutProviderImpl;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    sget p1, Lcom/android/systemui/R$string;->config_navBarRevWinnerLayoutAlignLeft:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/android/systemui/R$string;->config_navBarWinnerLayoutAlignLeft:I

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 44
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/layout/TabletLayoutProviderImpl;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_2

    sget p1, Lcom/android/systemui/R$string;->config_navBarRevWinnerLayoutAlignRight:I

    goto :goto_1

    :cond_2
    sget p1, Lcom/android/systemui/R$string;->config_navBarWinnerLayoutAlignRight:I

    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 47
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/layout/TabletLayoutProviderImpl;->getLayout(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSpaceSidePadding(Landroid/graphics/Point;Z)I
    .locals 2

    if-eqz p2, :cond_0

    .line 91
    iget p2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_0
    iget p2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    int-to-double p1, p1

    .line 92
    iget p0, p0, Lcom/android/systemui/statusbar/phone/layout/TabletLayoutProviderImpl;->mCurrentAlign:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-wide v0, 0x3fa10624e0000000L    # 0.033250000327825546

    goto :goto_1

    :cond_1
    const-wide v0, 0x3fa0b0f280000000L    # 0.032600000500679016

    :goto_1
    mul-double/2addr p1, v0

    double-to-int p0, p1

    return p0
.end method

.method public getSpaceWidth(Landroid/graphics/Point;Z)I
    .locals 2

    .line 79
    iget p0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    :goto_0
    int-to-double p0, p0

    const-wide v0, 0x3fbc28f5c0000000L    # 0.10999999940395355

    mul-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method public getVerticalLayoutID(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 63
    sget p0, Lcom/android/systemui/R$layout;->sec_navigation_layout_tablet:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/android/systemui/R$layout;->sec_navigation_layout:I

    :goto_0
    return p0
.end method
