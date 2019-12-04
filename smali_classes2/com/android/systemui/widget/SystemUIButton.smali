.class public Lcom/android/systemui/widget/SystemUIButton;
.super Landroid/widget/Button;
.source "SystemUIButton.java"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/widget/SystemUIButton$ResData;
    }
.end annotation


# instance fields
.field private mAttrCount:I

.field protected mDensityDpi:I

.field private mFontScale:F

.field private mIsCallbackRegistered:Z

.field protected mOriginalFontSizeDp:F

.field private mPendingUpdateFlag:I

.field private final mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

.field private mUpdateFlag:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/widget/SystemUIButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/widget/SystemUIButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/widget/SystemUIButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    new-instance v0, Lcom/android/systemui/widget/SystemUIButton$ResData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;-><init>(Lcom/android/systemui/widget/SystemUIButton$1;)V

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mDensityDpi:I

    const/4 v1, 0x0

    .line 42
    iput v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mOriginalFontSizeDp:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 43
    iput v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mFontScale:F

    .line 44
    iput v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mUpdateFlag:I

    .line 45
    iput v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mAttrCount:I

    .line 46
    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mIsCallbackRegistered:Z

    .line 47
    iput v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mPendingUpdateFlag:I

    .line 63
    sget-object v0, Lcom/android/systemui/R$styleable;->SysuiWidgetRes:[I

    .line 64
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 65
    invoke-direct {p0, p1}, Lcom/android/systemui/widget/SystemUIButton;->initAttributeSet(Landroid/content/res/TypedArray;)V

    .line 66
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initAttributeSet(Landroid/content/res/TypedArray;)V
    .locals 3

    if-eqz p1, :cond_f

    .line 295
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mAttrCount:I

    const/4 v0, 0x0

    .line 296
    :goto_0
    iget v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mAttrCount:I

    if-ge v0, v1, :cond_e

    .line 297
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 298
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_wallpaperArea:I

    if-ne v1, v2, :cond_0

    .line 299
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$102(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 300
    :cond_0
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_adaptiveColorMain:I

    if-ne v1, v2, :cond_1

    .line 301
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1402(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 302
    :cond_1
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_originColor:I

    if-ne v1, v2, :cond_2

    .line 303
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1502(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 304
    :cond_2
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_whitebgColor:I

    if-ne v1, v2, :cond_3

    .line 305
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1602(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 306
    :cond_3
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeColor:I

    if-ne v1, v2, :cond_4

    .line 307
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1702(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 308
    :cond_4
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeBlackColor:I

    if-ne v1, v2, :cond_5

    .line 309
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1802(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 310
    :cond_5
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_originShadowColor:I

    if-ne v1, v2, :cond_6

    .line 311
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1902(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 312
    :cond_6
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_whitebgShadowColor:I

    if-ne v1, v2, :cond_7

    .line 313
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2002(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 314
    :cond_7
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeShadowColor:I

    if-ne v1, v2, :cond_8

    .line 315
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2102(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 316
    :cond_8
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeBlackShadowColor:I

    if-ne v1, v2, :cond_9

    .line 317
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2202(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 318
    :cond_9
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_originBackground:I

    if-ne v1, v2, :cond_a

    .line 319
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2302(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 320
    :cond_a
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_whitebgBackground:I

    if-ne v1, v2, :cond_b

    .line 321
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2402(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 322
    :cond_b
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeBackground:I

    if-ne v1, v2, :cond_c

    .line 323
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2502(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 324
    :cond_c
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeBlackBackground:I

    if-ne v1, v2, :cond_d

    .line 325
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2602(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    :cond_d
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 328
    :cond_e
    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIButton;->refreshResIds()V

    :cond_f
    return-void
.end method

.method private initButtonColor()V
    .locals 11

    .line 168
    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingTop()I

    move-result v0

    .line 169
    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v1

    .line 170
    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingLeft()I

    move-result v2

    .line 171
    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingRight()I

    move-result v3

    .line 173
    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v4}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$200(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v4

    .line 174
    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v5}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$300(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v5

    .line 175
    iget-object v6, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v6}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$400(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v6

    const/4 v7, 0x0

    if-lez v4, :cond_0

    .line 178
    iget-object v8, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v4, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/Button;->setTextColor(I)V

    :cond_0
    if-lez v5, :cond_1

    .line 181
    invoke-virtual {p0}, Landroid/widget/Button;->getShadowRadius()F

    move-result v4

    invoke-virtual {p0}, Landroid/widget/Button;->getShadowDx()F

    move-result v8

    invoke-virtual {p0}, Landroid/widget/Button;->getShadowDy()F

    move-result v9

    iget-object v10, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    .line 182
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v5, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    .line 181
    invoke-virtual {p0, v4, v8, v9, v5}, Landroid/widget/Button;->setShadowLayer(FFFI)V

    :cond_1
    if-lez v6, :cond_2

    .line 185
    iget-object v4, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 187
    :cond_2
    invoke-virtual {p0, v2, v0, v3, v1}, Landroid/widget/Button;->setPadding(IIII)V

    return-void
.end method

.method private isUpdatableState(I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 149
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    iput p1, p0, Lcom/android/systemui/widget/SystemUIButton;->mPendingUpdateFlag:I

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private updateButtonColor()V
    .locals 11

    .line 191
    invoke-virtual {p0}, Landroid/widget/Button;->semClearAllTextEffect()V

    .line 192
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$100(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    .line 193
    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingTop()I

    move-result v1

    .line 194
    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v2

    .line 195
    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingLeft()I

    move-result v3

    .line 196
    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingRight()I

    move-result v4

    .line 198
    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    if-eqz v0, :cond_0

    invoke-static {v5}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$500(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v5

    goto :goto_0

    :cond_0
    invoke-static {v5}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$200(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v5

    .line 199
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    if-eqz v0, :cond_1

    invoke-static {v6}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$600(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v6

    goto :goto_1

    :cond_1
    invoke-static {v6}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$300(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v6

    .line 200
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    if-eqz v0, :cond_2

    invoke-static {v7}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$700(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v7

    goto :goto_2

    :cond_2
    invoke-static {v7}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$400(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v7

    .line 206
    :goto_2
    iget v8, p0, Lcom/android/systemui/widget/SystemUIButton;->mUpdateFlag:I

    and-int/lit8 v9, v8, 0x1

    const-string v10, "SystemUIButton"

    if-eqz v9, :cond_8

    if-eqz v0, :cond_5

    const-string v0, "apply style: theme : white"

    .line 208
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$800(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v0

    if-lez v0, :cond_3

    .line 210
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$800(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v5

    .line 212
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$900(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v0

    if-lez v0, :cond_4

    .line 213
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$900(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v6

    .line 215
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1000(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v0

    if-lez v0, :cond_9

    .line 216
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1000(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v7

    goto :goto_3

    :cond_5
    const-string v0, "apply style: theme : black"

    .line 219
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1100(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v0

    if-lez v0, :cond_6

    .line 221
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1100(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v5

    .line 223
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1200(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v0

    if-lez v0, :cond_7

    .line 224
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1200(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v6

    .line 226
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1300(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v0

    if-lez v0, :cond_9

    .line 227
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1300(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v7

    goto :goto_3

    :cond_8
    and-int/lit8 v0, v8, 0x2

    if-eqz v0, :cond_9

    .line 231
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1400(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v0, "apply style: adaptive color"

    .line 232
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_3
    const/4 v0, 0x0

    if-lez v5, :cond_a

    .line 239
    iget-object v8, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v5, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/Button;->setTextColor(I)V

    :cond_a
    if-lez v6, :cond_b

    .line 242
    invoke-virtual {p0}, Landroid/widget/Button;->getShadowRadius()F

    move-result v5

    invoke-virtual {p0}, Landroid/widget/Button;->getShadowDx()F

    move-result v8

    invoke-virtual {p0}, Landroid/widget/Button;->getShadowDy()F

    move-result v9

    iget-object v10, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    .line 243
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v6, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    .line 242
    invoke-virtual {p0, v5, v8, v9, v6}, Landroid/widget/Button;->setShadowLayer(FFFI)V

    :cond_b
    if-lez v7, :cond_c

    .line 247
    iget-object v5, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 249
    :cond_c
    invoke-virtual {p0, v3, v1, v4, v2}, Landroid/widget/Button;->setPadding(IIII)V

    return-void
.end method

.method private updateFontSizeInKeyguardBoundary(Landroid/content/res/Configuration;)V
    .locals 4

    .line 93
    iget-object v0, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->getFontScaleInKeyguardBoundary(Landroid/content/Context;F)F

    move-result v0

    .line 95
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mDensityDpi:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v1, :cond_0

    .line 96
    iput p1, p0, Lcom/android/systemui/widget/SystemUIButton;->mDensityDpi:I

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    .line 99
    :goto_0
    iget v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mFontScale:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    iput v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mFontScale:F

    move p1, v2

    :cond_1
    if-eqz p1, :cond_2

    .line 104
    iget p1, p0, Lcom/android/systemui/widget/SystemUIButton;->mOriginalFontSizeDp:F

    iget v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mFontScale:F

    mul-float/2addr p1, v0

    iget-object v0, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    .line 105
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    .line 104
    invoke-virtual {p0, v3, p1}, Landroid/widget/Button;->setTextSize(IF)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 111
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    .line 112
    iget v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mAttrCount:I

    if-lez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$100(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/widget/Util;->convertFlag(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;I)V

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mIsCallbackRegistered:Z

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 88
    invoke-super {p0, p1}, Landroid/widget/Button;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 89
    invoke-direct {p0, p1}, Lcom/android/systemui/widget/SystemUIButton;->updateFontSizeInKeyguardBoundary(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 120
    invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V

    .line 121
    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mIsCallbackRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mIsCallbackRegistered:Z

    .line 123
    iget-object v0, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 71
    invoke-super {p0}, Landroid/widget/Button;->onFinishInflate()V

    .line 72
    invoke-virtual {p0}, Landroid/widget/Button;->getTextSize()F

    move-result v0

    .line 73
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 76
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    mul-float v3, v1, v2

    div-float/2addr v0, v3

    .line 77
    iput v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mOriginalFontSizeDp:F

    const/4 v0, 0x0

    .line 78
    iget v3, p0, Lcom/android/systemui/widget/SystemUIButton;->mOriginalFontSizeDp:F

    iget-object v4, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    .line 79
    invoke-static {v4, v2}, Lcom/android/systemui/widget/SystemUITextView;->getFontScaleInKeyguardBoundary(Landroid/content/Context;F)F

    move-result v2

    mul-float/2addr v3, v2

    mul-float/2addr v3, v1

    .line 78
    invoke-virtual {p0, v0, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 82
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/widget/SystemUIButton;->updateFontSizeInKeyguardBoundary(Landroid/content/res/Configuration;)V

    .line 83
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIButton;->initButtonColor()V

    return-void
.end method

.method refreshResIds()V
    .locals 4

    .line 253
    iget-object v0, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getInstance(Landroid/content/Context;)Lcom/android/systemui/widget/SystemUIWidgetRes;

    move-result-object v0

    .line 255
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1500(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "color"

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1500(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$202(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I

    .line 258
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1600(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 259
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1600(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$502(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I

    .line 261
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1700(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 262
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1700(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1102(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I

    .line 264
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1800(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 265
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1800(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$802(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I

    .line 267
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1900(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 268
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1900(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$302(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I

    .line 270
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2000(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 271
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2000(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$602(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I

    .line 273
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2100(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 274
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2100(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1202(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I

    .line 276
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2200(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 277
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2200(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$902(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I

    .line 279
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2300(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    if-eqz v1, :cond_8

    .line 280
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2300(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$402(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I

    .line 282
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2400(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 283
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2400(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$702(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I

    .line 285
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2500(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 286
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2500(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1302(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I

    .line 288
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2600(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 289
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {p0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2600(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1002(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I

    :cond_b
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 159
    invoke-super {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 161
    iget p1, p0, Lcom/android/systemui/widget/SystemUIButton;->mPendingUpdateFlag:I

    if-eqz p1, :cond_0

    .line 162
    invoke-virtual {p0, p1}, Lcom/android/systemui/widget/SystemUIButton;->updateStyle(I)V

    const/4 p1, 0x0

    .line 163
    iput p1, p0, Lcom/android/systemui/widget/SystemUIButton;->mPendingUpdateFlag:I

    :cond_0
    return-void
.end method

.method public updateStyle(I)V
    .locals 1

    const/4 v0, 0x0

    .line 129
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/widget/SystemUIButton;->updateStyle(ILandroid/app/SemWallpaperColors;)V

    return-void
.end method

.method public updateStyle(ILandroid/app/SemWallpaperColors;)V
    .locals 1

    .line 134
    invoke-direct {p0, p1}, Lcom/android/systemui/widget/SystemUIButton;->isUpdatableState(I)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 137
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateStyle() flag="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mUpdateFlag:I

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

    invoke-virtual {p0}, Landroid/widget/Button;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SystemUIButton"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iput p1, p0, Lcom/android/systemui/widget/SystemUIButton;->mUpdateFlag:I

    .line 140
    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIButton;->refreshResIds()V

    .line 141
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIButton;->updateButtonColor()V

    return-void
.end method
