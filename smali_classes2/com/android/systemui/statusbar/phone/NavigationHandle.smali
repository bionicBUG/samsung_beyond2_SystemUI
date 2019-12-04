.class public Lcom/android/systemui/statusbar/phone/NavigationHandle;
.super Landroid/view/View;
.source "NavigationHandle.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/ButtonInterface;


# instance fields
.field private final mBottom:I

.field private mContext:Landroid/content/Context;

.field private final mDarkColor:I

.field private mDarkIntensity:F

.field private mHintDrawable:Lcom/android/systemui/statusbar/phone/gesture/GestureHintDrawable;

.field private final mLightColor:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationHandle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, -0x40800000    # -1.0f

    .line 38
    iput p2, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mDarkIntensity:F

    .line 40
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    .line 57
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mContext:Landroid/content/Context;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 59
    sget v0, Lcom/android/systemui/R$dimen;->navigation_handle_radius:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mRadius:I

    .line 60
    sget v0, Lcom/android/systemui/R$dimen;->navigation_handle_bottom:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mBottom:I

    .line 62
    sget p2, Lcom/android/systemui/R$attr;->darkIconTheme:I

    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result p2

    .line 63
    sget v0, Lcom/android/systemui/R$attr;->lightIconTheme:I

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v0

    .line 64
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 65
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 66
    sget-boolean p2, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz p2, :cond_0

    sget p2, Lcom/android/systemui/R$color;->navbar_icon_color_light:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    goto :goto_0

    .line 67
    :cond_0
    sget p2, Lcom/android/systemui/R$attr;->singleToneColor:I

    invoke-static {v1, p2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p2

    :goto_0
    iput p2, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mLightColor:I

    .line 68
    sget-boolean p2, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz p2, :cond_1

    sget p2, Lcom/android/systemui/R$color;->navbar_icon_color_dark:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    goto :goto_1

    .line 69
    :cond_1
    sget p1, Lcom/android/systemui/R$attr;->singleToneColor:I

    invoke-static {v0, p1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    :goto_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mDarkColor:I

    .line 70
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 p1, 0x0

    .line 71
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public abortCurrentGesture()V
    .locals 0

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 76
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 78
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    if-nez v0, :cond_0

    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 81
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mRadius:I

    mul-int/lit8 v1, v1, 0x2

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 83
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mBottom:I

    sub-int/2addr v0, v3

    sub-int/2addr v0, v1

    const/4 v4, 0x0

    int-to-float v5, v0

    int-to-float v6, v2

    add-int/2addr v0, v1

    int-to-float v7, v0

    .line 84
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mRadius:I

    int-to-float v8, v0

    int-to-float v9, v0

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 4

    .line 111
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mDarkIntensity:F

    cmpl-float v1, v0, p1

    if-eqz v1, :cond_2

    .line 112
    sget-boolean v1, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mHintDrawable:Lcom/android/systemui/statusbar/phone/gesture/GestureHintDrawable;

    if-eqz v1, :cond_1

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/gesture/GestureHintDrawable;->setDarkIntensity(F)V

    .line 116
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mLightColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mDarkColor:I

    .line 121
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 120
    invoke-virtual {v1, p1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mDarkIntensity:F

    .line 123
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 125
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public setDelayTouchFeedback(Z)V
    .locals 0

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .line 90
    check-cast p1, Lcom/android/systemui/statusbar/phone/gesture/GestureHintDrawable;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mHintDrawable:Lcom/android/systemui/statusbar/phone/gesture/GestureHintDrawable;

    .line 92
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->sec_hint_bottom_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mHintDrawable:Lcom/android/systemui/statusbar/phone/gesture/GestureHintDrawable;

    const/16 v1, 0x50

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mHintDrawable:Lcom/android/systemui/statusbar/phone/gesture/GestureHintDrawable;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mHintDrawable:Lcom/android/systemui/statusbar/phone/gesture/GestureHintDrawable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v3, p1

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mHintDrawable:Lcom/android/systemui/statusbar/phone/gesture/GestureHintDrawable;

    const/4 v1, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 98
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mHintDrawable:Lcom/android/systemui/statusbar/phone/gesture/GestureHintDrawable;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setVertical(Z)V
    .locals 0

    return-void
.end method
