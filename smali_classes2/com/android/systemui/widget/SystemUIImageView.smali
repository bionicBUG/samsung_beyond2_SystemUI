.class public Lcom/android/systemui/widget/SystemUIImageView;
.super Landroid/widget/ImageView;
.source "SystemUIImageView.java"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/widget/SystemUIImageView$ResData;
    }
.end annotation


# instance fields
.field private mHasAttr:Z

.field private mIsCallbackRegistered:Z

.field private mPendingUpdateFlag:I

.field private final mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

.field private mUpdateFlag:I

.field private final mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/widget/SystemUIImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/widget/SystemUIImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/widget/SystemUIImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mUpdateFlag:I

    .line 31
    new-instance v1, Lcom/android/systemui/widget/SystemUIImageView$ResData;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/widget/SystemUIImageView$ResData;-><init>(Lcom/android/systemui/widget/SystemUIImageView$1;)V

    iput-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 32
    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    .line 34
    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mIsCallbackRegistered:Z

    .line 35
    iput v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mPendingUpdateFlag:I

    .line 51
    invoke-static {p1}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getInstance(Landroid/content/Context;)Lcom/android/systemui/widget/SystemUIWidgetRes;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    .line 52
    iget-object p1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/systemui/R$styleable;->SysuiWidgetRes:[I

    .line 53
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/widget/SystemUIImageView;->initAttributeSet(Landroid/content/res/TypedArray;)V

    .line 55
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initAttributeSet(Landroid/content/res/TypedArray;)V
    .locals 4

    if-eqz p1, :cond_11

    .line 259
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    .line 261
    iput-boolean v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_10

    .line 264
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 265
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_wallpaperArea:I

    if-ne v2, v3, :cond_1

    .line 266
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$102(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 267
    :cond_1
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_adaptiveColorMain:I

    if-ne v2, v3, :cond_2

    .line 268
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1202(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 269
    :cond_2
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_originColor:I

    if-ne v2, v3, :cond_3

    .line 270
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1602(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 271
    :cond_3
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_whitebgColor:I

    if-ne v2, v3, :cond_4

    .line 272
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1402(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 273
    :cond_4
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeColor:I

    if-ne v2, v3, :cond_5

    .line 274
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1702(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 275
    :cond_5
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeBlackColor:I

    if-ne v2, v3, :cond_6

    .line 276
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1802(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 277
    :cond_6
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_originImage:I

    if-ne v2, v3, :cond_7

    .line 278
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1902(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 279
    :cond_7
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeImage:I

    if-ne v2, v3, :cond_8

    .line 280
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2002(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 281
    :cond_8
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeBlackImage:I

    if-ne v2, v3, :cond_9

    .line 282
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2102(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 283
    :cond_9
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_whitebgImage:I

    if-ne v2, v3, :cond_a

    .line 284
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1302(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 285
    :cond_a
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_whitebgTintColor:I

    if-ne v2, v3, :cond_b

    .line 286
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2202(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 287
    :cond_b
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_originBackground:I

    if-ne v2, v3, :cond_c

    .line 288
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2302(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 289
    :cond_c
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_whitebgBackground:I

    if-ne v2, v3, :cond_d

    .line 290
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2402(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 291
    :cond_d
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeBackground:I

    if-ne v2, v3, :cond_e

    .line 292
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2502(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 293
    :cond_e
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeBlackBackground:I

    if-ne v2, v3, :cond_f

    .line 294
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2602(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    :cond_f
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 297
    :cond_10
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIImageView;->refreshResIds()V

    :cond_11
    return-void
.end method

.method private initImage()V
    .locals 4

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 140
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$200(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v0

    .line 141
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$300(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v1

    const-string v2, "SystemUIImageView"

    if-lez v0, :cond_0

    const-string v3, "set Image Drawable!!"

    .line 144
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v3, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 146
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-lez v1, :cond_1

    const-string v0, "set Background Drawable!!"

    .line 149
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 151
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private isUpdatableState(I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 120
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    iput p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mPendingUpdateFlag:I

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private refreshResIds()V
    .locals 5

    .line 302
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1600(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "color"

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1600(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2702(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1400(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1400(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1502(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1700(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 309
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1700(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1002(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1800(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 312
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1800(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$702(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    .line 314
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1900(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "drawable"

    if-eqz v0, :cond_4

    .line 315
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1900(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$202(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    .line 317
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1300(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 318
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1300(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$402(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    .line 320
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2000(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 321
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2000(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$902(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    .line 323
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2100(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 324
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2100(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$602(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    .line 326
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2200(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 327
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2200(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2802(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    .line 329
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2300(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 330
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2300(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$302(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    .line 332
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2400(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 333
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2400(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$502(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    .line 335
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2500(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 336
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2500(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1102(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    .line 338
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2600(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 339
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2600(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$802(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    :cond_c
    return-void
.end method

.method private updateImage()V
    .locals 9

    const/4 v0, 0x0

    .line 156
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 157
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$100(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v1

    .line 158
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    if-eqz v1, :cond_0

    invoke-static {v2}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$400(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$200(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v2

    .line 159
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    if-eqz v1, :cond_1

    invoke-static {v3}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$500(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v3

    goto :goto_1

    :cond_1
    invoke-static {v3}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$300(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v3

    .line 164
    :goto_1
    iget v4, p0, Lcom/android/systemui/widget/SystemUIImageView;->mUpdateFlag:I

    and-int/lit8 v5, v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v8, "SystemUIImageView"

    if-eqz v5, :cond_7

    if-eqz v1, :cond_4

    const-string v1, "apply style: theme : white"

    .line 166
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$600(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v1

    if-gtz v1, :cond_3

    .line 171
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$700(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v1

    if-lez v1, :cond_2

    .line 172
    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    .line 173
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v2}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$700(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 172
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 175
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$400(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v1

    move v2, v1

    move v6, v7

    goto :goto_2

    :cond_3
    move v2, v1

    .line 178
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$800(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v3

    if-lez v3, :cond_e

    .line 179
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$700(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v1

    if-lez v1, :cond_e

    .line 180
    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v4}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$700(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v4

    invoke-virtual {v1, v4, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 181
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v0, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_4

    :cond_4
    const-string v1, "apply style: theme : black"

    .line 184
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$900(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v1

    if-gtz v1, :cond_6

    .line 189
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1000(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v1

    if-lez v1, :cond_5

    .line 190
    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    .line 191
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v2}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1000(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 190
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 193
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$200(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v1

    move v2, v1

    move v6, v7

    goto :goto_3

    :cond_6
    move v2, v1

    .line 196
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1100(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v3

    if-lez v3, :cond_e

    .line 197
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1000(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v1

    if-lez v1, :cond_e

    .line 198
    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v4}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1000(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v4

    invoke-virtual {v1, v4, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 199
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v0, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_4
    move-object v0, v1

    goto/16 :goto_6

    :cond_7
    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_9

    .line 203
    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v4}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1200(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    const-string v1, "apply style: adaptive color"

    .line 204
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getAdaptiveColorResult()Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 207
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1200(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->getColorByName(Ljava/lang/String;)I

    move-result v0

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    const-string v4, "#%08X"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object v0, v1

    .line 211
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$200(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v2

    goto/16 :goto_6

    :cond_9
    if-eqz v1, :cond_d

    .line 212
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 213
    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1300(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1400(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    :cond_a
    const-string v1, "apply style: white-bg"

    .line 214
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$400(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v1

    if-gtz v1, :cond_c

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "white-bg res invalid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1500(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v1

    if-lez v1, :cond_b

    .line 221
    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    .line 222
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v2}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1500(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 221
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 224
    :cond_b
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$200(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v1

    move v2, v1

    move v6, v7

    goto :goto_5

    :cond_c
    move v2, v1

    .line 227
    :goto_5
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$500(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v3

    if-lez v3, :cond_e

    .line 228
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1500(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v1

    if-lez v1, :cond_e

    .line 229
    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v4}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1500(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v4

    invoke-virtual {v1, v4, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 230
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v0, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_4

    :cond_d
    const-string v1, "apply style: default"

    .line 233
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_6
    if-lez v2, :cond_10

    const-string v1, "set Image Drawable!!"

    .line 239
    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v6, :cond_f

    .line 243
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 245
    :cond_f
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 246
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_10
    if-lez v3, :cond_11

    const-string v1, "set Background Drawable!!"

    .line 250
    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 252
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 253
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_11
    return-void
.end method


# virtual methods
.method public invalidateImage()V
    .locals 0

    .line 344
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIImageView;->updateImage()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 66
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 67
    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$100(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/widget/Util;->convertFlag(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;I)V

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mIsCallbackRegistered:Z

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 75
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 76
    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mIsCallbackRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mIsCallbackRegistered:Z

    .line 78
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 60
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    .line 61
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIImageView;->initImage()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 84
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 85
    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 94
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public setAdaptiveColor(Ljava/lang/String;)V
    .locals 1

    .line 598
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0, p1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1202(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    .line 599
    iget-boolean p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 600
    iput-boolean p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    .line 601
    iget-object p1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    .line 603
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setAdaptiveColor() this = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ImageView;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SystemUIImageView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setOriginBackground(Ljava/lang/String;)V
    .locals 3

    .line 520
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2300(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0, p1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2302(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    .line 524
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {p1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2300(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 525
    iget-boolean p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 526
    iput-boolean p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    .line 527
    iget-object p1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    .line 529
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    invoke-static {p1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2300(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$302(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    .line 530
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setOriginBackground() this = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ImageView;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SystemUIImageView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public setOriginImage(Ljava/lang/String;)V
    .locals 3

    .line 436
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1900(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0, p1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1902(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    .line 440
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {p1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1900(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 441
    iget-boolean p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 442
    iput-boolean p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    .line 443
    iget-object p1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    .line 445
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    invoke-static {p1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1900(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$202(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    .line 446
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setOriginImage() this = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ImageView;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SystemUIImageView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public setThemeBackground(Ljava/lang/String;)V
    .locals 3

    .line 562
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2500(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0, p1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2502(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    .line 566
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {p1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2500(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 567
    iget-boolean p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 568
    iput-boolean p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    .line 569
    iget-object p1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    .line 571
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    invoke-static {p1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2500(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1102(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    .line 572
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setThemeBackground() this = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ImageView;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SystemUIImageView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 130
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 132
    iget p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mPendingUpdateFlag:I

    if-eqz p1, :cond_0

    .line 133
    invoke-virtual {p0, p1}, Lcom/android/systemui/widget/SystemUIImageView;->updateStyle(I)V

    const/4 p1, 0x0

    .line 134
    iput p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mPendingUpdateFlag:I

    :cond_0
    return-void
.end method

.method public setWhiteBgBackground(Ljava/lang/String;)V
    .locals 3

    .line 541
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2400(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0, p1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2402(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    .line 545
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {p1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2400(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 546
    iget-boolean p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 547
    iput-boolean p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    .line 548
    iget-object p1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    .line 550
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    invoke-static {p1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2400(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$502(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    .line 551
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setWhitebgBackground() this = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ImageView;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SystemUIImageView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public setWhiteBgColor(Ljava/lang/String;)V
    .locals 3

    .line 374
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1400(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0, p1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1402(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    .line 377
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {p1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1400(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 378
    iget-boolean p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 379
    iput-boolean p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    .line 380
    iget-object p1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    .line 382
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    invoke-static {p1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1400(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "color"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1502(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    .line 383
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setWhiteBgColor() this = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ImageView;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SystemUIImageView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public setWhiteBgImage(Ljava/lang/String;)V
    .locals 3

    .line 457
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1300(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0, p1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1302(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    .line 461
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {p1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1300(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 462
    iget-boolean p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 463
    iput-boolean p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    .line 464
    iget-object p1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    .line 466
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    invoke-static {p1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1300(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$402(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    .line 467
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setWhiteBgImage() this = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ImageView;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SystemUIImageView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public updateStyle(I)V
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/widget/SystemUIImageView;->updateStyle(ILandroid/app/SemWallpaperColors;)V

    return-void
.end method

.method public updateStyle(ILandroid/app/SemWallpaperColors;)V
    .locals 1

    .line 104
    invoke-direct {p0, p1}, Lcom/android/systemui/widget/SystemUIImageView;->isUpdatableState(I)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 108
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateStyle() flag="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mUpdateFlag:I

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

    invoke-virtual {p0}, Landroid/widget/ImageView;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SystemUIImageView"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iput p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mUpdateFlag:I

    .line 111
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIImageView;->refreshResIds()V

    .line 112
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIImageView;->updateImage()V

    return-void
.end method
