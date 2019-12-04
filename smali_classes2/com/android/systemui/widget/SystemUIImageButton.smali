.class public Lcom/android/systemui/widget/SystemUIImageButton;
.super Landroid/widget/ImageButton;
.source "SystemUIImageButton.java"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/widget/SystemUIImageButton$ResData;
    }
.end annotation


# instance fields
.field private mAttrCount:I

.field private mIsCallbackRegistered:Z

.field private mPendingUpdateFlag:I

.field private mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

.field private mUpdateFlag:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/widget/SystemUIImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/widget/SystemUIImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/widget/SystemUIImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mUpdateFlag:I

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    .line 27
    iput p1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mAttrCount:I

    .line 28
    iput-boolean p1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mIsCallbackRegistered:Z

    .line 29
    iput p1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mPendingUpdateFlag:I

    .line 45
    iget-object p1, p0, Landroid/widget/ImageButton;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/systemui/R$styleable;->SysuiWidgetRes:[I

    .line 46
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 47
    invoke-direct {p0, p1}, Lcom/android/systemui/widget/SystemUIImageButton;->initAttributeSet(Landroid/content/res/TypedArray;)V

    .line 48
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initAttributeSet(Landroid/content/res/TypedArray;)V
    .locals 3

    .line 211
    new-instance v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;-><init>(Lcom/android/systemui/widget/SystemUIImageButton$1;)V

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    if-eqz p1, :cond_10

    .line 213
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mAttrCount:I

    const/4 v0, 0x0

    .line 214
    :goto_0
    iget v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mAttrCount:I

    if-ge v0, v1, :cond_f

    .line 215
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 216
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_wallpaperArea:I

    if-ne v1, v2, :cond_0

    .line 217
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$002(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 218
    :cond_0
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_adaptiveColorMain:I

    if-ne v1, v2, :cond_1

    .line 219
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1102(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 220
    :cond_1
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_originColor:I

    if-ne v1, v2, :cond_2

    .line 221
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1602(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 222
    :cond_2
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_whitebgColor:I

    if-ne v1, v2, :cond_3

    .line 223
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1302(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 224
    :cond_3
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeColor:I

    if-ne v1, v2, :cond_4

    .line 225
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1702(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 226
    :cond_4
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeBlackColor:I

    if-ne v1, v2, :cond_5

    .line 227
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1802(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 228
    :cond_5
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_originImage:I

    if-ne v1, v2, :cond_6

    .line 229
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1902(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 230
    :cond_6
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeImage:I

    if-ne v1, v2, :cond_7

    .line 231
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$2002(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 232
    :cond_7
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeBlackImage:I

    if-ne v1, v2, :cond_8

    .line 233
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$2102(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 234
    :cond_8
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_whitebgImage:I

    if-ne v1, v2, :cond_9

    .line 235
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1202(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 236
    :cond_9
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_whitebgTintColor:I

    if-ne v1, v2, :cond_a

    .line 237
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$2202(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 238
    :cond_a
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_originBackground:I

    if-ne v1, v2, :cond_b

    .line 239
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$2302(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 240
    :cond_b
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_whitebgBackground:I

    if-ne v1, v2, :cond_c

    .line 241
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$2402(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 242
    :cond_c
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeBackground:I

    if-ne v1, v2, :cond_d

    .line 243
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$2502(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 244
    :cond_d
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeBlackBackground:I

    if-ne v1, v2, :cond_e

    .line 245
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$2602(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    :cond_e
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 248
    :cond_f
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIImageButton;->refreshResIds()V

    :cond_10
    return-void
.end method

.method private initButtonImage()V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$100(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v0

    .line 118
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$200(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v1

    if-lez v0, :cond_0

    .line 121
    iget-object v2, p0, Landroid/widget/ImageButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-lez v1, :cond_1

    .line 127
    iget-object v0, p0, Landroid/widget/ImageButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private isUpdatableState(I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 98
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    iput p1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mPendingUpdateFlag:I

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private refreshResIds()V
    .locals 5

    .line 253
    iget-object v0, p0, Landroid/widget/ImageButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getInstance(Landroid/content/Context;)Lcom/android/systemui/widget/SystemUIWidgetRes;

    move-result-object v0

    .line 255
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1600(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "color"

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1600(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$2702(Lcom/android/systemui/widget/SystemUIImageButton$ResData;I)I

    .line 258
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1300(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 259
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1300(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1402(Lcom/android/systemui/widget/SystemUIImageButton$ResData;I)I

    .line 261
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1700(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 262
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1700(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$902(Lcom/android/systemui/widget/SystemUIImageButton$ResData;I)I

    .line 264
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1800(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 265
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1800(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$602(Lcom/android/systemui/widget/SystemUIImageButton$ResData;I)I

    .line 267
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1900(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "drawable"

    if-eqz v1, :cond_4

    .line 268
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1900(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$102(Lcom/android/systemui/widget/SystemUIImageButton$ResData;I)I

    .line 270
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1200(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 271
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1200(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$302(Lcom/android/systemui/widget/SystemUIImageButton$ResData;I)I

    .line 273
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$2000(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 274
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$2000(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$802(Lcom/android/systemui/widget/SystemUIImageButton$ResData;I)I

    .line 276
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$2100(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 277
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$2100(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$502(Lcom/android/systemui/widget/SystemUIImageButton$ResData;I)I

    .line 279
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$2200(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 280
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$2200(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$2802(Lcom/android/systemui/widget/SystemUIImageButton$ResData;I)I

    .line 282
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$2300(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 283
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$2300(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$202(Lcom/android/systemui/widget/SystemUIImageButton$ResData;I)I

    .line 285
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$2400(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 286
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$2400(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$402(Lcom/android/systemui/widget/SystemUIImageButton$ResData;I)I

    .line 288
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$2500(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 289
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$2500(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1002(Lcom/android/systemui/widget/SystemUIImageButton$ResData;I)I

    .line 291
    :cond_b
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$2600(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 292
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {p0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$2600(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$702(Lcom/android/systemui/widget/SystemUIImageButton$ResData;I)I

    :cond_c
    return-void
.end method

.method private updateButtonImage()V
    .locals 9

    .line 132
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$000(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    .line 133
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$300(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$100(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v1

    .line 134
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    if-eqz v0, :cond_1

    invoke-static {v2}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$400(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$200(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v2

    .line 138
    :goto_1
    iget v3, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mUpdateFlag:I

    and-int/lit8 v4, v3, 0x1

    const/4 v5, 0x0

    const-string v6, "SystemUIImageButton"

    if-eqz v4, :cond_7

    if-eqz v0, :cond_4

    const-string v0, "apply style: theme : white"

    .line 140
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$500(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v0

    if-gtz v0, :cond_3

    .line 144
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$600(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v0

    if-lez v0, :cond_2

    .line 145
    iget-object v0, p0, Landroid/widget/ImageButton;->mContext:Landroid/content/Context;

    .line 146
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$600(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v1

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 145
    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$300(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v0

    :cond_3
    move v1, v0

    .line 152
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$700(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v2

    goto/16 :goto_3

    :cond_4
    const-string v0, "apply style: theme : black"

    .line 154
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$800(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v0

    if-gtz v0, :cond_6

    .line 158
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$900(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v0

    if-lez v0, :cond_5

    .line 159
    iget-object v0, p0, Landroid/widget/ImageButton;->mContext:Landroid/content/Context;

    .line 160
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$900(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v1

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 159
    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 162
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$100(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v0

    :cond_6
    move v1, v0

    .line 166
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1000(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v2

    goto/16 :goto_3

    :cond_7
    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_8

    .line 169
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v3}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1100(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    const-string v0, "apply style: adaptive color"

    .line 170
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_8
    if-eqz v0, :cond_b

    .line 172
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    .line 173
    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1200(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1300(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    :cond_9
    const-string v0, "apply style: white-bg"

    .line 174
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$300(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v1

    if-gtz v1, :cond_b

    .line 178
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1400(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v0

    if-lez v0, :cond_a

    .line 179
    iget-object v0, p0, Landroid/widget/ImageButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1400(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v1

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 180
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    const-string v0, "#%08X"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_a
    move-object v1, v5

    .line 183
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$100(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v0

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    goto :goto_4

    :cond_b
    :goto_3
    move-object v0, v5

    :goto_4
    if-lez v1, :cond_d

    .line 194
    iget-object v3, p0, Landroid/widget/ImageButton;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_d

    if-eqz v0, :cond_c

    const-string v3, "filter is not null!!"

    .line 197
    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 200
    :cond_c
    invoke-virtual {p0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_d
    if-lez v2, :cond_e

    const-string v0, "resBgId is not null!!"

    .line 205
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Landroid/widget/ImageButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_e
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 59
    invoke-super {p0}, Landroid/widget/ImageButton;->onAttachedToWindow()V

    .line 60
    iget v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mAttrCount:I

    if-lez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$000(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/widget/Util;->convertFlag(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;I)V

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mIsCallbackRegistered:Z

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 68
    invoke-super {p0}, Landroid/widget/ImageButton;->onDetachedFromWindow()V

    .line 69
    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mIsCallbackRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mIsCallbackRegistered:Z

    .line 71
    iget-object v0, p0, Landroid/widget/ImageButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 53
    invoke-super {p0}, Landroid/widget/ImageButton;->onFinishInflate()V

    .line 54
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIImageButton;->initButtonImage()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 108
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 110
    iget p1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mPendingUpdateFlag:I

    if-eqz p1, :cond_0

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/systemui/widget/SystemUIImageButton;->updateStyle(I)V

    const/4 p1, 0x0

    .line 112
    iput p1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mPendingUpdateFlag:I

    :cond_0
    return-void
.end method

.method public updateStyle(I)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/widget/SystemUIImageButton;->updateStyle(ILandroid/app/SemWallpaperColors;)V

    return-void
.end method

.method public updateStyle(ILandroid/app/SemWallpaperColors;)V
    .locals 1

    .line 82
    invoke-direct {p0, p1}, Lcom/android/systemui/widget/SystemUIImageButton;->isUpdatableState(I)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 86
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateStyle() flag="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mUpdateFlag:I

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

    invoke-virtual {p0}, Landroid/widget/ImageButton;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SystemUIImageButton"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iput p1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mUpdateFlag:I

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIImageButton;->refreshResIds()V

    .line 90
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIImageButton;->updateButtonImage()V

    return-void
.end method
