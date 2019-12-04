.class public Lcom/android/systemui/widget/SystemUIEditText;
.super Landroid/widget/EditText;
.source "SystemUIEditText.java"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/widget/SystemUIEditText$ResData;
    }
.end annotation


# instance fields
.field private mAttrCount:I

.field protected final mDrawPaint:Landroid/graphics/Paint;

.field private mIsCallbackRegistered:Z

.field private mPendingUpdateFlag:I

.field private mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

.field private mUpdateFlag:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/widget/SystemUIEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006e

    .line 51
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/widget/SystemUIEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/widget/SystemUIEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mDrawPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mUpdateFlag:I

    .line 41
    new-instance v1, Lcom/android/systemui/widget/SystemUIEditText$ResData;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/widget/SystemUIEditText$ResData;-><init>(Lcom/android/systemui/widget/SystemUIEditText$1;)V

    iput-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    .line 42
    iput v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mAttrCount:I

    .line 43
    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mIsCallbackRegistered:Z

    .line 44
    iput v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mPendingUpdateFlag:I

    .line 61
    sget-object v0, Lcom/android/systemui/R$styleable;->SysuiWidgetRes:[I

    .line 62
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/widget/SystemUIEditText;->initAttributeSet(Landroid/content/res/TypedArray;)V

    .line 64
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initAttributeSet(Landroid/content/res/TypedArray;)V
    .locals 3

    if-eqz p1, :cond_b

    .line 214
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mAttrCount:I

    const/4 v0, 0x0

    .line 215
    :goto_0
    iget v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mAttrCount:I

    if-ge v0, v1, :cond_a

    .line 216
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 217
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_wallpaperArea:I

    if-ne v1, v2, :cond_0

    .line 218
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$102(Lcom/android/systemui/widget/SystemUIEditText$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 219
    :cond_0
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_adaptiveColorMain:I

    if-ne v1, v2, :cond_1

    .line 220
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1002(Lcom/android/systemui/widget/SystemUIEditText$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 221
    :cond_1
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_originColor:I

    if-ne v1, v2, :cond_2

    .line 222
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1102(Lcom/android/systemui/widget/SystemUIEditText$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 223
    :cond_2
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_whitebgColor:I

    if-ne v1, v2, :cond_3

    .line 224
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1202(Lcom/android/systemui/widget/SystemUIEditText$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 225
    :cond_3
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeColor:I

    if-ne v1, v2, :cond_4

    .line 226
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1302(Lcom/android/systemui/widget/SystemUIEditText$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 227
    :cond_4
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeBlackColor:I

    if-ne v1, v2, :cond_5

    .line 228
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1402(Lcom/android/systemui/widget/SystemUIEditText$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 229
    :cond_5
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_originShadowColor:I

    if-ne v1, v2, :cond_6

    .line 230
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1502(Lcom/android/systemui/widget/SystemUIEditText$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 231
    :cond_6
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_whitebgShadowColor:I

    if-ne v1, v2, :cond_7

    .line 232
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1602(Lcom/android/systemui/widget/SystemUIEditText$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 233
    :cond_7
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeShadowColor:I

    if-ne v1, v2, :cond_8

    .line 234
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1702(Lcom/android/systemui/widget/SystemUIEditText$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 235
    :cond_8
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeBlackShadowColor:I

    if-ne v1, v2, :cond_9

    .line 236
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1802(Lcom/android/systemui/widget/SystemUIEditText$ResData;Ljava/lang/String;)Ljava/lang/String;

    :cond_9
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 239
    :cond_a
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIEditText;->refreshResIds()V

    :cond_b
    return-void
.end method

.method private initEditText()V
    .locals 4

    .line 133
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$200(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I

    move-result v0

    .line 134
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$300(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I

    move-result v1

    if-lez v0, :cond_1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    iget-object v2, p0, Landroid/widget/EditText;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 140
    iget-object v2, p0, Landroid/widget/EditText;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 141
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 143
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 144
    invoke-virtual {p0}, Landroid/widget/EditText;->getShadowRadius()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getShadowDx()F

    move-result v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getShadowDy()F

    move-result v3

    invoke-virtual {p0, v0, v2, v3, v1}, Landroid/widget/EditText;->setShadowLayer(FFFI)V

    :cond_1
    :goto_0
    return-void
.end method

.method private isUpdatableState(I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 114
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    iput p1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mPendingUpdateFlag:I

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private refreshResIds()V
    .locals 4

    .line 244
    iget-object v0, p0, Landroid/widget/EditText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getInstance(Landroid/content/Context;)Lcom/android/systemui/widget/SystemUIWidgetRes;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1100(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "color"

    if-eqz v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1100(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$202(Lcom/android/systemui/widget/SystemUIEditText$ResData;I)I

    .line 249
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1200(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 250
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1200(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$402(Lcom/android/systemui/widget/SystemUIEditText$ResData;I)I

    .line 252
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1300(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 253
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1300(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$802(Lcom/android/systemui/widget/SystemUIEditText$ResData;I)I

    .line 255
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1400(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 256
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1400(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$602(Lcom/android/systemui/widget/SystemUIEditText$ResData;I)I

    .line 258
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1500(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 259
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1500(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$302(Lcom/android/systemui/widget/SystemUIEditText$ResData;I)I

    .line 261
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1600(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 262
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1600(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$502(Lcom/android/systemui/widget/SystemUIEditText$ResData;I)I

    .line 264
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1700(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 265
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1700(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$902(Lcom/android/systemui/widget/SystemUIEditText$ResData;I)I

    .line 267
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1800(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 268
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {p0}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1800(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$702(Lcom/android/systemui/widget/SystemUIEditText$ResData;I)I

    :cond_7
    return-void
.end method

.method private updateEditText()V
    .locals 9

    .line 148
    invoke-virtual {p0}, Landroid/widget/EditText;->semClearAllTextEffect()V

    .line 149
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$100(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    .line 150
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$400(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$200(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I

    move-result v1

    .line 151
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    if-eqz v0, :cond_1

    invoke-static {v2}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$500(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$300(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I

    move-result v2

    :goto_1
    const/4 v3, -0x1

    .line 158
    iget v4, p0, Lcom/android/systemui/widget/SystemUIEditText;->mUpdateFlag:I

    and-int/lit8 v5, v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v8, "SystemUIEditText"

    if-eqz v5, :cond_5

    if-eqz v0, :cond_3

    const-string v0, "apply style: theme : white"

    .line 160
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$600(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I

    move-result v0

    if-lez v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$600(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I

    move-result v1

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$700(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I

    move-result v0

    if-lez v0, :cond_6

    .line 165
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$700(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I

    move-result v2

    goto :goto_2

    :cond_3
    const-string v0, "apply style: theme : black"

    .line 168
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$800(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I

    move-result v0

    if-lez v0, :cond_4

    .line 170
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$800(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I

    move-result v1

    .line 172
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$900(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I

    move-result v0

    if-lez v0, :cond_6

    .line 173
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$900(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I

    move-result v2

    goto :goto_2

    :cond_5
    and-int/lit8 v0, v4, 0x2

    if-eqz v0, :cond_6

    .line 177
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1000(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v0, "apply style: adaptive color"

    .line 178
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Landroid/widget/EditText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getAdaptiveColorResult()Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 182
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v3}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1000(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->getColorByName(Ljava/lang/String;)I

    move-result v3

    move v0, v7

    goto :goto_3

    :cond_6
    :goto_2
    move v0, v6

    .line 189
    :goto_3
    invoke-virtual {p0}, Landroid/widget/EditText;->getShadowColor()I

    move-result v4

    const/4 v5, 0x0

    if-eqz v0, :cond_7

    .line 192
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$300(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I

    move-result v0

    if-lez v0, :cond_9

    .line 193
    iget-object v0, p0, Landroid/widget/EditText;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$300(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I

    move-result v1

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    goto :goto_4

    :cond_7
    if-lez v1, :cond_a

    if-gtz v2, :cond_8

    goto :goto_5

    .line 200
    :cond_8
    iget-object v0, p0, Landroid/widget/EditText;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    .line 201
    iget-object v0, p0, Landroid/widget/EditText;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    .line 203
    :cond_9
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "textColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "#%08X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shadowColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v7, [Ljava/lang/Object;

    .line 204
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v6

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 207
    invoke-virtual {p0, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 208
    invoke-virtual {p0, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 209
    invoke-virtual {p0}, Landroid/widget/EditText;->getShadowRadius()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getShadowDx()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getShadowDy()F

    move-result v2

    invoke-virtual {p0, v0, v1, v2, v4}, Landroid/widget/EditText;->setShadowLayer(FFFI)V

    return-void

    .line 197
    :cond_a
    :goto_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid res = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 75
    invoke-super {p0}, Landroid/widget/EditText;->onAttachedToWindow()V

    .line 76
    iget v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mAttrCount:I

    if-lez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$100(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/widget/Util;->convertFlag(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;I)V

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mIsCallbackRegistered:Z

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 84
    invoke-super {p0}, Landroid/widget/EditText;->onDetachedFromWindow()V

    .line 85
    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mIsCallbackRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mIsCallbackRegistered:Z

    .line 87
    iget-object v0, p0, Landroid/widget/EditText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 69
    invoke-super {p0}, Landroid/widget/EditText;->onFinishInflate()V

    .line 70
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIEditText;->initEditText()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 124
    invoke-super {p0, p1}, Landroid/widget/EditText;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 126
    iget p1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mPendingUpdateFlag:I

    if-eqz p1, :cond_0

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/systemui/widget/SystemUIEditText;->updateStyle(I)V

    const/4 p1, 0x0

    .line 128
    iput p1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mPendingUpdateFlag:I

    :cond_0
    return-void
.end method

.method public updateStyle(I)V
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/widget/SystemUIEditText;->updateStyle(ILandroid/app/SemWallpaperColors;)V

    return-void
.end method

.method public updateStyle(ILandroid/app/SemWallpaperColors;)V
    .locals 1

    .line 98
    invoke-direct {p0, p1}, Lcom/android/systemui/widget/SystemUIEditText;->isUpdatableState(I)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 102
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateStyle() flag="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mUpdateFlag:I

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

    invoke-virtual {p0}, Landroid/widget/EditText;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SystemUIEditText"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iput p1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mUpdateFlag:I

    .line 105
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIEditText;->refreshResIds()V

    .line 106
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIEditText;->updateEditText()V

    return-void
.end method
