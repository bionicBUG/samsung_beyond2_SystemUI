.class public Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;
.super Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;
.source "FaceWidgetPositionAlgorithm.java"


# static fields
.field private static final FACE_WIDGET_NOTIFICATION_MARGIN_RES_ID:[I


# instance fields
.field private mAlphaSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomMarginRatio:F

.field private mContext:Landroid/content/Context;

.field private mCurNotificationMargin:I

.field private mCurrentClockType:I

.field private mDarkAmount:F

.field private mHeight:I

.field private mMinTopMargin:I

.field private mNotificationStackHeight:I

.field private mPanelExpansion:F

.field private mServiceBoxHeight:I

.field private mServiceBoxNotificationMargin:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 38
    sget v1, Lcom/android/systemui/R$dimen;->facewidget_card_notifications_margin:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$dimen;->facewidget_icon_notifications_margin:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$dimen;->facewidget_typo_notifications_margin:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sput-object v0, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->FACE_WIDGET_NOTIFICATION_MARGIN_RES_ID:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 94
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;-><init>()V

    .line 76
    sget-object v0, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->FACE_WIDGET_NOTIFICATION_MARGIN_RES_ID:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->mServiceBoxNotificationMargin:[I

    const/4 v0, -0x1

    .line 84
    iput v0, p0, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->mCurrentClockType:I

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->mBottomMarginRatio:F

    .line 95
    iput-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getMaxY()I
    .locals 1

    .line 234
    iget v0, p0, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->mHeight:I

    iget p0, p0, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->mServiceBoxHeight:I

    sub-int/2addr v0, p0

    return v0
.end method

.method private getServiceBoxX(I)I
    .locals 1

    const/4 v0, 0x0

    add-int/2addr p1, v0

    int-to-float v0, v0

    int-to-float p1, p1

    .line 196
    iget p0, p0, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->mDarkAmount:F

    invoke-static {v0, p1, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private getServiceBoxY(I)I
    .locals 3

    .line 201
    invoke-direct {p0}, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->isPanelExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget v0, p0, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->mPanelExpansion:F

    float-to-int v0, v0

    iget v1, p0, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->mServiceBoxHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->mCurNotificationMargin:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->getMinY()I

    move-result v0

    .line 211
    :goto_0
    iget v1, p0, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->mHeight:I

    iget v2, p0, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->mServiceBoxHeight:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->getMinY()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 213
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockManager;->getInstance()Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object v1

    .line 214
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->isLockStarEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 215
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->getServiceBoxTopPadding()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    move v0, v1

    :cond_1
    add-int/2addr p1, v0

    int-to-float p1, p1

    int-to-float v0, v0

    .line 226
    iget p0, p0, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->mDarkAmount:F

    invoke-static {v0, p1, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private hasVisibleNotification()Z
    .locals 0

    .line 238
    iget p0, p0, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->mNotificationStackHeight:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPanelExpanded()Z
    .locals 1

    .line 242
    iget p0, p0, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->mPanelExpansion:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getBottomMarginY()I
    .locals 2

    .line 246
    iget v0, p0, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->mHeight:I

    int-to-float v0, v0

    iget p0, p0, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->mBottomMarginRatio:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public getExpandedClockPosition()I
    .locals 0

    .line 181
    invoke-direct {p0}, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->getMaxY()I

    move-result p0

    return p0
.end method

.method public getMinStackScrollerPadding()F
    .locals 2

    .line 186
    iget v0, p0, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->mMinTopMargin:I

    iget v1, p0, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->mServiceBoxHeight:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->mCurNotificationMargin:I

    add-int/2addr v0, p0

    int-to-float p0, v0

    return p0
.end method

.method public getMinY()I
    .locals 0

    .line 230
    iget p0, p0, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->mMinTopMargin:I

    return p0
.end method

.method public loadDimens(Landroid/content/res/Resources;)V
    .locals 7

    .line 100
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 104
    sget v1, Lcom/android/systemui/R$dimen;->facewidget_bottom_margin_ratio:I

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 106
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->mBottomMarginRatio:F

    .line 109
    sget-object v0, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->FACE_WIDGET_NOTIFICATION_MARGIN_RES_ID:[I

    array-length v1, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_0

    aget v5, v0, v3

    .line 110
    iget-object v6, p0, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->mServiceBoxNotificationMargin:[I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    aput v5, v6, v4

    add-int/2addr v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public run(Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;)V
    .locals 2

    .line 162
    invoke-static {}, Lcom/android/systemui/doze/PluginAODManager;->getInstance()Lcom/android/systemui/doze/PluginAODManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/doze/PluginAODManager;->getZigzagPosition()Landroid/graphics/Point;

    move-result-object v0

    .line 163
    iget v1, v0, Landroid/graphics/Point;->x:I

    invoke-direct {p0, v1}, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->getServiceBoxX(I)I

    move-result v1

    iput v1, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockX:I

    .line 164
    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0}, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->getServiceBoxY(I)I

    move-result v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockY:I

    .line 165
    invoke-direct {p0}, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->isPanelExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->mAlphaSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    iput v0, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockAlpha:F

    .line 166
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->getMinY()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->mServiceBoxHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->mCurNotificationMargin:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    .line 167
    iget v0, p0, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->mCurrentClockType:I

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/clock/ExternalClockProvider;->isTypoClockType(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->isCenterAlignClockType:Z

    .line 169
    iget v0, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockY:I

    iget v1, p0, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->mServiceBoxHeight:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->mCurNotificationMargin:I

    add-int/2addr v0, p0

    int-to-float p0, v0

    iput p0, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->iconTypeTranslationY:F

    return-void
.end method

.method public setup(IIIFIIIZZFFIILjava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIFIIIZZFFII",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 127
    iput p1, p0, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->mMinTopMargin:I

    .line 128
    iput p10, p0, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->mDarkAmount:F

    .line 129
    iput p5, p0, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->mHeight:I

    .line 130
    iput p6, p0, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->mServiceBoxHeight:I

    .line 131
    iput p3, p0, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->mNotificationStackHeight:I

    .line 132
    iput p4, p0, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->mPanelExpansion:F

    .line 133
    iput-object p14, p0, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->mAlphaSupplier:Ljava/util/function/Supplier;

    .line 134
    iput p13, p0, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->mCurrentClockType:I

    .line 136
    iget-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->mServiceBoxNotificationMargin:[I

    array-length p1, p1

    if-ge p12, p1, :cond_2

    .line 137
    invoke-direct {p0}, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->hasVisibleNotification()Z

    move-result p1

    .line 145
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockManager;->getInstance()Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/PluginLockManager;->getViewMode()I

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-ne p2, p4, :cond_0

    goto :goto_0

    :cond_0
    move p4, p3

    :goto_0
    or-int/2addr p1, p4

    if-eqz p1, :cond_1

    .line 147
    iget-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->mServiceBoxNotificationMargin:[I

    aget p3, p1, p12

    :cond_1
    iput p3, p0, Lcom/android/systemui/facewidget/FaceWidgetPositionAlgorithm;->mCurNotificationMargin:I

    goto :goto_1

    .line 149
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "wrong notification type="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FaceWidgetPositionAlgorithm"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
