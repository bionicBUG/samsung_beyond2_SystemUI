.class public Lcom/android/systemui/widget/SystemUITextView;
.super Landroid/widget/TextView;
.source "SystemUITextView.java"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/widget/SystemUITextView$ResData;
    }
.end annotation


# instance fields
.field private mAttrCount:I

.field private mCompoundVisible:Z

.field private mDensityDpi:I

.field private mFontScale:F

.field private mIsCallbackRegistered:Z

.field private mIsFixedFontSize:Z

.field private mMaxFontScale:F

.field protected mOriginalFontSizeDp:F

.field private mPendingUpdateFlag:I

.field protected mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

.field protected mUpdateFlag:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/widget/SystemUITextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/widget/SystemUITextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/widget/SystemUITextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mOriginalFontSizeDp:F

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mUpdateFlag:I

    const/4 v1, 0x0

    .line 47
    iput-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    const v1, 0x3f99999a    # 1.2f

    .line 48
    iput v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mMaxFontScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 49
    iput v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mFontScale:F

    .line 51
    iput v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mDensityDpi:I

    const/4 v1, 0x1

    .line 52
    iput-boolean v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mCompoundVisible:Z

    .line 53
    iput v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mAttrCount:I

    .line 55
    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mIsCallbackRegistered:Z

    .line 56
    iput v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mPendingUpdateFlag:I

    .line 73
    sget-object v1, Lcom/android/systemui/R$styleable;->KeyguardFontSize:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 74
    sget v2, Lcom/android/systemui/R$styleable;->KeyguardFontSize_isFixedFontSize:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mIsFixedFontSize:Z

    .line 75
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    sget-object v0, Lcom/android/systemui/R$styleable;->SysuiWidgetRes:[I

    .line 78
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/widget/SystemUITextView;->initAttributeSet(Landroid/content/res/TypedArray;)V

    .line 80
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static getFontScaleInKeyguardBoundary(Landroid/content/Context;F)F
    .locals 0

    const p0, 0x3f99999a    # 1.2f

    .line 94
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private initAttributeSet(Landroid/content/res/TypedArray;)V
    .locals 3

    .line 376
    new-instance v0, Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-direct {v0}, Lcom/android/systemui/widget/SystemUITextView$ResData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    if-eqz p1, :cond_12

    .line 378
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mAttrCount:I

    const/4 v0, 0x0

    .line 379
    :goto_0
    iget v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mAttrCount:I

    if-ge v0, v1, :cond_11

    .line 380
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 381
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_wallpaperArea:I

    if-ne v1, v2, :cond_0

    .line 382
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$002(Lcom/android/systemui/widget/SystemUITextView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 383
    :cond_0
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_adaptiveColorMain:I

    if-ne v1, v2, :cond_1

    .line 384
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/systemui/widget/SystemUITextView$ResData;->mAdaptiveColorMain:Ljava/lang/String;

    goto/16 :goto_1

    .line 385
    :cond_1
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_originColor:I

    if-ne v1, v2, :cond_2

    .line 386
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1502(Lcom/android/systemui/widget/SystemUITextView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 387
    :cond_2
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_whitebgColor:I

    if-ne v1, v2, :cond_3

    .line 388
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1302(Lcom/android/systemui/widget/SystemUITextView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 389
    :cond_3
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeColor:I

    if-ne v1, v2, :cond_4

    .line 390
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1602(Lcom/android/systemui/widget/SystemUITextView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 391
    :cond_4
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeBlackColor:I

    if-ne v1, v2, :cond_5

    .line 392
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1702(Lcom/android/systemui/widget/SystemUITextView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 393
    :cond_5
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_originShadowColor:I

    if-ne v1, v2, :cond_6

    .line 394
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1802(Lcom/android/systemui/widget/SystemUITextView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 395
    :cond_6
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_whitebgShadowColor:I

    if-ne v1, v2, :cond_7

    .line 396
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgShadowColor:Ljava/lang/String;

    goto/16 :goto_1

    .line 397
    :cond_7
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeShadowColor:I

    if-ne v1, v2, :cond_8

    .line 398
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1902(Lcom/android/systemui/widget/SystemUITextView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 399
    :cond_8
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeBlackShadowColor:I

    if-ne v1, v2, :cond_9

    .line 400
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2002(Lcom/android/systemui/widget/SystemUITextView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 401
    :cond_9
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_originBackground:I

    if-ne v1, v2, :cond_a

    .line 402
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2102(Lcom/android/systemui/widget/SystemUITextView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 403
    :cond_a
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_whitebgBackground:I

    if-ne v1, v2, :cond_b

    .line 404
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2202(Lcom/android/systemui/widget/SystemUITextView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 405
    :cond_b
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeBackground:I

    if-ne v1, v2, :cond_c

    .line 406
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2302(Lcom/android/systemui/widget/SystemUITextView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 407
    :cond_c
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeBlackBackground:I

    if-ne v1, v2, :cond_d

    .line 408
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2402(Lcom/android/systemui/widget/SystemUITextView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 409
    :cond_d
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_compoundDrawable:I

    if-ne v1, v2, :cond_e

    .line 410
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2502(Lcom/android/systemui/widget/SystemUITextView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 411
    :cond_e
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_compoundScale:I

    if-ne v1, v2, :cond_f

    .line 412
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2602(Lcom/android/systemui/widget/SystemUITextView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 413
    :cond_f
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_compoundPadding:I

    if-ne v1, v2, :cond_10

    .line 414
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2702(Lcom/android/systemui/widget/SystemUITextView$ResData;Ljava/lang/String;)Ljava/lang/String;

    :cond_10
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 417
    :cond_11
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUITextView;->refreshResIds()V

    :cond_12
    return-void
.end method

.method private initTextView()V
    .locals 7

    .line 212
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$100(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v0

    .line 213
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mOriginShadowColorId:I

    .line 214
    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$200(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v1

    const/4 v3, 0x0

    if-lez v0, :cond_0

    .line 217
    iget-object v4, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    if-lez v2, :cond_1

    .line 220
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDx()F

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDy()F

    move-result v5

    iget-object v6, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    .line 221
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 220
    invoke-virtual {p0, v0, v4, v5, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_1
    if-lez v1, :cond_2

    .line 224
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 225
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method private isUpdatableState(I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 193
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    iput p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mPendingUpdateFlag:I

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private refreshResIds()V
    .locals 4

    .line 423
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getInstance(Landroid/content/Context;)Lcom/android/systemui/widget/SystemUIWidgetRes;

    move-result-object v0

    .line 425
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1500(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "color"

    if-eqz v1, :cond_0

    .line 426
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1500(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$102(Lcom/android/systemui/widget/SystemUITextView$ResData;I)I

    .line 428
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1300(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 429
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1300(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$302(Lcom/android/systemui/widget/SystemUITextView$ResData;I)I

    .line 431
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1600(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 432
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1600(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$802(Lcom/android/systemui/widget/SystemUITextView$ResData;I)I

    .line 434
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1700(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 435
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1700(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$502(Lcom/android/systemui/widget/SystemUITextView$ResData;I)I

    .line 437
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1800(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 438
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1800(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mOriginShadowColorId:I

    .line 440
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v3, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgShadowColor:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 441
    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgShadowColorId:I

    .line 443
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1900(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 444
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1900(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$902(Lcom/android/systemui/widget/SystemUITextView$ResData;I)I

    .line 446
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2000(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 447
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2000(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$602(Lcom/android/systemui/widget/SystemUITextView$ResData;I)I

    .line 449
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2100(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    if-eqz v1, :cond_8

    .line 450
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2100(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$202(Lcom/android/systemui/widget/SystemUITextView$ResData;I)I

    .line 452
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2200(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 453
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2200(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$402(Lcom/android/systemui/widget/SystemUITextView$ResData;I)I

    .line 455
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2300(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 456
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2300(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1002(Lcom/android/systemui/widget/SystemUITextView$ResData;I)I

    .line 458
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2400(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 459
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2400(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$702(Lcom/android/systemui/widget/SystemUITextView$ResData;I)I

    .line 461
    :cond_b
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2500(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 462
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2500(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1102(Lcom/android/systemui/widget/SystemUITextView$ResData;I)I

    .line 464
    :cond_c
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2600(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dimen"

    if-eqz v1, :cond_d

    .line 465
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2600(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1202(Lcom/android/systemui/widget/SystemUITextView$ResData;I)I

    .line 467
    :cond_d
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2700(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 468
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {p0}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2700(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1402(Lcom/android/systemui/widget/SystemUITextView$ResData;I)I

    :cond_e
    return-void
.end method

.method private updateCompoundDrawable(Z)V
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 306
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 307
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto/16 :goto_2

    .line 309
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {p1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1100(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result p1

    if-lez p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {p1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1200(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result p1

    if-gtz p1, :cond_1

    goto/16 :goto_2

    .line 314
    :cond_1
    iget-object p1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1100(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 315
    iget-object v1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v3}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1200(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 316
    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUITextView;->getKeyguardFontScale()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUITextView;->getKeyguardFontScale()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 318
    invoke-virtual {p1, v0, v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 324
    iget v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mUpdateFlag:I

    and-int/lit8 v3, v1, 0x1

    const-string v4, "SystemUITextView"

    if-eqz v3, :cond_3

    .line 325
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$000(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "#%08X"

    const-string v5, "filter: "

    const/4 v6, 0x1

    if-eqz v1, :cond_2

    .line 326
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$500(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v1

    if-lez v1, :cond_6

    .line 327
    iget-object v1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v7, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v7}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$500(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v7

    invoke-virtual {v1, v7, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 328
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_1

    .line 332
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$800(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v1

    if-lez v1, :cond_6

    .line 333
    iget-object v1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v7, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v7}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$800(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v7

    invoke-virtual {v1, v7, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 334
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :cond_3
    and-int/lit8 v0, v1, 0x2

    if-eqz v0, :cond_5

    .line 339
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v0, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mAdaptiveColorMain:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v0, "apply style: adaptive color"

    .line 340
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getAdaptiveColorResult()Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 343
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v1, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mAdaptiveColorMain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->getColorByName(Ljava/lang/String;)I

    move-result v0

    .line 344
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_4
    move-object v1, v2

    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 348
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 349
    invoke-static {v0}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$000(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 350
    invoke-static {v0}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1300(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v1, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgShadowColor:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 352
    invoke-static {v0}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$300(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v0

    if-lez v0, :cond_6

    .line 353
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$300(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 354
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_6
    move-object v0, v2

    .line 360
    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 364
    :try_start_0
    invoke-virtual {p0, p1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 365
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {p1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1400(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result p1

    if-lez p1, :cond_7

    .line 367
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1400(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 366
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p0, "Exception adding mCompoundDrawable!"

    .line 370
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method public getKeyguardFontScale()F
    .locals 0

    .line 147
    iget p0, p0, Lcom/android/systemui/widget/SystemUITextView;->mFontScale:F

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 152
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAttachedToWindow mAttrCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mAttrCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUITextView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mAttrCount:I

    if-lez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$000(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/widget/Util;->convertFlag(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;I)V

    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mIsCallbackRegistered:Z

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 114
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/systemui/widget/SystemUITextView;->updateFontSizeInKeyguardBoundary(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 162
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 163
    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mIsCallbackRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 164
    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mIsCallbackRegistered:Z

    .line 165
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 99
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 101
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    .line 102
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 106
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mOriginalFontSizeDp:F

    .line 108
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUITextView;->updateFontSizeInKeyguardBoundary(Landroid/content/res/Configuration;)V

    .line 109
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUITextView;->initTextView()V

    return-void
.end method

.method public setMaxFontScale(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const v0, 0x3f99999a    # 1.2f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    iget p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mMaxFontScale:F

    :goto_0
    iput p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mMaxFontScale:F

    .line 143
    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUITextView;->updateFontSizeInKeyguardBoundary()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 203
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 205
    iget p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mPendingUpdateFlag:I

    if-eqz p1, :cond_0

    .line 206
    invoke-virtual {p0, p1}, Lcom/android/systemui/widget/SystemUITextView;->updateStyle(I)V

    const/4 p1, 0x0

    .line 207
    iput p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mPendingUpdateFlag:I

    :cond_0
    return-void
.end method

.method public updateCompoundVisible(Z)V
    .locals 0

    .line 473
    iput-boolean p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mCompoundVisible:Z

    .line 474
    invoke-direct {p0, p1}, Lcom/android/systemui/widget/SystemUITextView;->updateCompoundDrawable(Z)V

    return-void
.end method

.method public updateFontSizeInKeyguardBoundary()V
    .locals 1

    .line 119
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUITextView;->updateFontSizeInKeyguardBoundary(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public updateFontSizeInKeyguardBoundary(Landroid/content/res/Configuration;)V
    .locals 4

    .line 123
    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mIsFixedFontSize:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    iget v3, p0, Lcom/android/systemui/widget/SystemUITextView;->mMaxFontScale:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v0, v2}, Lcom/android/systemui/widget/SystemUITextView;->getFontScaleInKeyguardBoundary(Landroid/content/Context;F)F

    move-result v0

    .line 126
    :goto_0
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mDensityDpi:I

    const/4 v3, 0x0

    if-eq p1, v2, :cond_1

    .line 127
    iput p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mDensityDpi:I

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v3

    .line 130
    :goto_1
    iget v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mFontScale:F

    invoke-static {v2, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_2

    .line 131
    iput v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mFontScale:F

    move p1, v1

    :cond_2
    if-eqz p1, :cond_3

    .line 135
    iget p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mOriginalFontSizeDp:F

    iget v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mFontScale:F

    mul-float/2addr p1, v0

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    .line 136
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    .line 135
    invoke-virtual {p0, v3, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 137
    iget-boolean p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mCompoundVisible:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/widget/SystemUITextView;->updateCompoundDrawable(Z)V

    :cond_3
    return-void
.end method

.method public updateStyle(I)V
    .locals 1

    const/4 v0, 0x0

    .line 171
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/widget/SystemUITextView;->updateStyle(ILandroid/app/SemWallpaperColors;)V

    return-void
.end method

.method public updateStyle(ILandroid/app/SemWallpaperColors;)V
    .locals 1

    .line 176
    invoke-direct {p0, p1}, Lcom/android/systemui/widget/SystemUITextView;->isUpdatableState(I)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 180
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateStyle() flag="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mUpdateFlag:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/TextView;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SystemUITextView"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iput p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mUpdateFlag:I

    .line 183
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUITextView;->refreshResIds()V

    .line 184
    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUITextView;->updateTextView()V

    .line 185
    iget-boolean p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mCompoundVisible:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/widget/SystemUITextView;->updateCompoundDrawable(Z)V

    return-void
.end method

.method protected updateTextView()V
    .locals 9

    .line 230
    invoke-virtual {p0}, Landroid/widget/TextView;->semClearAllTextEffect()V

    .line 231
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$000(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    .line 232
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$300(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$100(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v1

    .line 233
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    if-eqz v0, :cond_1

    iget v2, v2, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgShadowColorId:I

    goto :goto_1

    :cond_1
    iget v2, v2, Lcom/android/systemui/widget/SystemUITextView$ResData;->mOriginShadowColorId:I

    .line 234
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    if-eqz v0, :cond_2

    invoke-static {v3}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$400(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v3

    goto :goto_2

    :cond_2
    invoke-static {v3}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$200(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v3

    :goto_2
    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 242
    iget v6, p0, Lcom/android/systemui/widget/SystemUITextView;->mUpdateFlag:I

    and-int/lit8 v7, v6, 0x1

    const-string v8, "SystemUITextView"

    if-eqz v7, :cond_8

    if-eqz v0, :cond_5

    const-string v0, "apply style: theme : white"

    .line 244
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$500(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v0

    if-lez v0, :cond_3

    .line 246
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$500(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v1

    .line 249
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$600(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v0

    if-lez v0, :cond_4

    .line 250
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$600(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v2

    .line 254
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$700(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v0

    if-lez v0, :cond_9

    .line 255
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$700(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v3

    goto :goto_3

    :cond_5
    const-string v0, "apply style: theme : black"

    .line 258
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$800(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v0

    if-lez v0, :cond_6

    .line 260
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$800(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v1

    .line 263
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$900(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v0

    if-lez v0, :cond_7

    .line 264
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$900(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v2

    .line 268
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1000(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v0

    if-lez v0, :cond_9

    .line 269
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1000(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v3

    goto :goto_3

    :cond_8
    and-int/lit8 v0, v6, 0x2

    if-eqz v0, :cond_9

    .line 273
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v0, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mAdaptiveColorMain:Ljava/lang/String;

    if-eqz v0, :cond_9

    const-string v0, "apply style: adaptive color"

    .line 274
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getAdaptiveColorResult()Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 278
    iget-object v4, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v4, v4, Lcom/android/systemui/widget/SystemUITextView$ResData;->mAdaptiveColorMain:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->getColorByName(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    :cond_9
    :goto_3
    const/4 v0, 0x0

    if-eqz v5, :cond_a

    .line 286
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    :cond_a
    if-lez v1, :cond_b

    .line 289
    iget-object v4, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_b
    :goto_4
    if-lez v2, :cond_c

    .line 293
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDx()F

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDy()F

    move-result v5

    iget-object v6, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    .line 294
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 293
    invoke-virtual {p0, v1, v4, v5, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_c
    if-lez v3, :cond_d

    const-string v0, "set Background Drawable!!"

    .line 298
    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 300
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_d
    return-void
.end method
