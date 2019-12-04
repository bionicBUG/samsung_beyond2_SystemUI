.class Lcom/android/systemui/keyguardimage/ClockImageCreator;
.super Ljava/lang/Object;
.source "ClockImageCreator.java"

# interfaces
.implements Lcom/android/systemui/keyguardimage/ImageCreator;


# instance fields
.field private final mClockProvider:Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

.field private final mContext:Landroid/content/Context;

.field private final mServiceBoxAttribute:Lcom/android/systemui/facewidget/FaceWidgetAttribute;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mContext:Landroid/content/Context;

    .line 32
    invoke-static {p1}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mClockProvider:Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

    .line 33
    new-instance p1, Lcom/android/systemui/facewidget/FaceWidgetAttribute;

    iget-object v0, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/systemui/facewidget/FaceWidgetAttribute;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mServiceBoxAttribute:Lcom/android/systemui/facewidget/FaceWidgetAttribute;

    return-void
.end method

.method private getClockType()I
    .locals 5

    .line 37
    iget-object v0, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mClockProvider:Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

    invoke-virtual {v0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->getDefaultClockType()I

    move-result v0

    .line 38
    const-class v1, Lcom/android/systemui/facewidget/FaceWidgetController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/facewidget/FaceWidgetController;

    invoke-interface {v1}, Lcom/android/systemui/facewidget/FaceWidgetController;->getCurrentClockType()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return v0

    .line 43
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mClockProvider:Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

    invoke-virtual {p0, v1}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->getClockGroup(I)I

    move-result p0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_3

    const/4 v3, 0x2

    if-eq p0, v3, :cond_3

    const/4 v4, 0x7

    if-eq p0, v4, :cond_2

    const/16 v1, 0x8

    if-eq p0, v1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/16 p0, 0x9

    return p0

    :pswitch_2
    return v4

    :pswitch_3
    return v3

    :pswitch_4
    return v2

    :goto_0
    return v0

    :cond_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0xc358
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getSideMargin(ZI)I
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 129
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    xor-int/lit8 p0, p1, 0x1

    .line 130
    invoke-static {p2, p0}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->getTabletClockSidePadding(IZ)I

    move-result p0

    return p0

    :cond_0
    if-eqz p1, :cond_1

    .line 134
    sget p0, Lcom/android/systemui/R$dimen;->facewidget_page_margin_side:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 137
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->needToSidePaddingForClock(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 138
    iget-object p0, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->getFingerPrintInDisplay(Landroid/content/Context;)I

    move-result p0

    return p0

    :cond_2
    int-to-float p0, p2

    const p1, 0x3e25e354    # 0.162f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method


# virtual methods
.method public createImage(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Landroid/graphics/Point;)Landroid/graphics/Bitmap;
    .locals 10

    .line 78
    invoke-direct {p0}, Lcom/android/systemui/keyguardimage/ClockImageCreator;->getClockType()I

    move-result v0

    .line 79
    iget-object v1, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mClockProvider:Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->getClockView(IZ)Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    move-result-object v1

    if-nez v1, :cond_0

    .line 81
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "createImage returns null / type="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ClockImageCreator"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 85
    :cond_0
    iget-boolean v3, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->useDefaultColor:Z

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v3, :cond_1

    .line 86
    iget-object v3, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->color:[I

    aget v6, v3, v2

    aget v7, v3, v5

    aget v8, v3, v4

    const/4 v9, 0x3

    aget v3, v3, v9

    invoke-virtual {v1, v6, v7, v8, v3}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->setAdaptiveColors(IIII)V

    goto :goto_0

    .line 88
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mClockProvider:Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;

    invoke-virtual {v3, v1, v5}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->setPreDefineOrCustomColor(Lcom/samsung/android/clockpack/plugins/clock/ClockView;Z)V

    .line 91
    :goto_0
    iget-boolean v3, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->isRtl:Z

    if-eqz v3, :cond_2

    .line 92
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 95
    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->forceRefresh()V

    .line 96
    invoke-interface {p0, v1, p1}, Lcom/android/systemui/keyguardimage/ImageCreator;->getViewImage(Landroid/view/View;Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz p2, :cond_9

    .line 98
    iget-object v3, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 99
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 100
    sget v7, Lcom/android/systemui/R$dimen;->facewidget_bottom_margin_ratio:I

    invoke-virtual {v3, v7, v6, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 102
    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->isTypoClockType(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 103
    iget v4, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    iget v6, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    if-ge v4, v6, :cond_3

    move v4, v5

    goto :goto_1

    :cond_3
    move v4, v2

    :goto_1
    iget v6, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    invoke-direct {p0, v4, v6}, Lcom/android/systemui/keyguardimage/ClockImageCreator;->getSideMargin(ZI)I

    move-result v4

    int-to-float v4, v4

    iget v6, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->scale:F

    mul-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, p2, Landroid/graphics/Point;->x:I

    .line 105
    iget-boolean v4, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->isRtl:Z

    if-eqz v4, :cond_5

    .line 106
    iget v4, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    iget v6, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v4, v6

    iput v4, p2, Landroid/graphics/Point;->x:I

    goto :goto_2

    .line 109
    :cond_4
    iget v6, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/2addr v6, v4

    iput v6, p2, Landroid/graphics/Point;->x:I

    .line 112
    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mServiceBoxAttribute:Lcom/android/systemui/facewidget/FaceWidgetAttribute;

    invoke-virtual {v4, v3}, Lcom/android/systemui/facewidget/FaceWidgetAttribute;->loadDimens(Landroid/content/res/Resources;)V

    .line 113
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 114
    iget-object p0, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mServiceBoxAttribute:Lcom/android/systemui/facewidget/FaceWidgetAttribute;

    iget v3, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    iget p1, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    if-le v3, p1, :cond_6

    move v2, v5

    :cond_6
    invoke-virtual {p0, v0, v3, v2}, Lcom/android/systemui/facewidget/FaceWidgetAttribute;->getTabletMinTopMargin(IIZ)I

    move-result p0

    iput p0, p2, Landroid/graphics/Point;->y:I

    goto :goto_4

    .line 116
    :cond_7
    sget v4, Lcom/android/systemui/R$dimen;->facewidget_min_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 117
    iget v5, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->scale:F

    mul-float/2addr v5, v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_8

    const/4 v4, 0x0

    goto :goto_3

    :cond_8
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->scale:F

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    .line 118
    :goto_3
    sget v5, Lcom/android/systemui/R$dimen;->status_bar_height:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    add-float/2addr v4, v3

    .line 119
    iget-object p0, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mServiceBoxAttribute:Lcom/android/systemui/facewidget/FaceWidgetAttribute;

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/systemui/facewidget/FaceWidgetAttribute;->getMinTopMargin(IZZ)I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v4, p0

    iget p0, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->scale:F

    mul-float/2addr v4, p0

    float-to-int p0, v4

    iput p0, p2, Landroid/graphics/Point;->y:I

    :cond_9
    :goto_4
    return-object v1
.end method
