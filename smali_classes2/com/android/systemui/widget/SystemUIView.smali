.class public Lcom/android/systemui/widget/SystemUIView;
.super Landroid/view/View;
.source "SystemUIView.java"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/widget/SystemUIView$ResData;
    }
.end annotation


# instance fields
.field private mAttrCount:I

.field private mIsCallbackRegistered:Z

.field private mPendingUpdateFlag:I

.field private final mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

.field private mUpdateFlag:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/widget/SystemUIView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/widget/SystemUIView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/widget/SystemUIView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/android/systemui/widget/SystemUIView;->mUpdateFlag:I

    .line 17
    new-instance v0, Lcom/android/systemui/widget/SystemUIView$ResData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/widget/SystemUIView$ResData;-><init>(Lcom/android/systemui/widget/SystemUIView$1;)V

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    .line 18
    iput p1, p0, Lcom/android/systemui/widget/SystemUIView;->mAttrCount:I

    .line 19
    iput-boolean p1, p0, Lcom/android/systemui/widget/SystemUIView;->mIsCallbackRegistered:Z

    .line 20
    iput p1, p0, Lcom/android/systemui/widget/SystemUIView;->mPendingUpdateFlag:I

    .line 36
    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/systemui/R$styleable;->SysuiWidgetRes:[I

    .line 37
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 38
    invoke-direct {p0, p1}, Lcom/android/systemui/widget/SystemUIView;->initAttributeSet(Landroid/content/res/TypedArray;)V

    .line 39
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initAttributeSet(Landroid/content/res/TypedArray;)V
    .locals 3

    if-eqz p1, :cond_b

    .line 151
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/widget/SystemUIView;->mAttrCount:I

    const/4 v0, 0x0

    .line 152
    :goto_0
    iget v1, p0, Lcom/android/systemui/widget/SystemUIView;->mAttrCount:I

    if-ge v0, v1, :cond_a

    .line 153
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 154
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_wallpaperArea:I

    if-ne v1, v2, :cond_0

    .line 155
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$102(Lcom/android/systemui/widget/SystemUIView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 156
    :cond_0
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_adaptiveColorMain:I

    if-ne v1, v2, :cond_1

    .line 157
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$602(Lcom/android/systemui/widget/SystemUIView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 158
    :cond_1
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_originColor:I

    if-ne v1, v2, :cond_2

    .line 159
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$902(Lcom/android/systemui/widget/SystemUIView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 160
    :cond_2
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_whitebgColor:I

    if-ne v1, v2, :cond_3

    .line 161
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$802(Lcom/android/systemui/widget/SystemUIView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 162
    :cond_3
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeColor:I

    if-ne v1, v2, :cond_4

    .line 163
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1002(Lcom/android/systemui/widget/SystemUIView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 164
    :cond_4
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeBlackColor:I

    if-ne v1, v2, :cond_5

    .line 165
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1102(Lcom/android/systemui/widget/SystemUIView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 166
    :cond_5
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_originImage:I

    if-ne v1, v2, :cond_6

    .line 167
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1202(Lcom/android/systemui/widget/SystemUIView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 168
    :cond_6
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeImage:I

    if-ne v1, v2, :cond_7

    .line 169
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1302(Lcom/android/systemui/widget/SystemUIView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 170
    :cond_7
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeBlackImage:I

    if-ne v1, v2, :cond_8

    .line 171
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1402(Lcom/android/systemui/widget/SystemUIView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 172
    :cond_8
    sget v2, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_whitebgImage:I

    if-ne v1, v2, :cond_9

    .line 173
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$702(Lcom/android/systemui/widget/SystemUIView$ResData;Ljava/lang/String;)Ljava/lang/String;

    :cond_9
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 176
    :cond_a
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIView;->refreshResIds()V

    :cond_b
    return-void
.end method

.method private initImage()V
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$200(Lcom/android/systemui/widget/SystemUIView$ResData;)I

    move-result v0

    .line 103
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$300(Lcom/android/systemui/widget/SystemUIView$ResData;)I

    move-result v1

    const-string v2, "SystemUIView"

    if-lez v0, :cond_0

    const-string v3, "setBackgroundResource!!"

    .line 106
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    if-lez v1, :cond_1

    const-string v0, "setBackgroundColor!!"

    .line 110
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 112
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method

.method private isUpdatableState(I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 83
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    iput p1, p0, Lcom/android/systemui/widget/SystemUIView;->mPendingUpdateFlag:I

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private refreshResIds()V
    .locals 4

    .line 181
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getInstance(Landroid/content/Context;)Lcom/android/systemui/widget/SystemUIWidgetRes;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$900(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "color"

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$900(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$302(Lcom/android/systemui/widget/SystemUIView$ResData;I)I

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$800(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 187
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$800(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$502(Lcom/android/systemui/widget/SystemUIView$ResData;I)I

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1000(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 190
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1000(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1502(Lcom/android/systemui/widget/SystemUIView$ResData;I)I

    .line 192
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1100(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 193
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1100(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1602(Lcom/android/systemui/widget/SystemUIView$ResData;I)I

    .line 195
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1200(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    if-eqz v1, :cond_4

    .line 196
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1200(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$202(Lcom/android/systemui/widget/SystemUIView$ResData;I)I

    .line 198
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$700(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 199
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$700(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$402(Lcom/android/systemui/widget/SystemUIView$ResData;I)I

    .line 201
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1300(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 202
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1300(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1702(Lcom/android/systemui/widget/SystemUIView$ResData;I)I

    .line 204
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1400(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 205
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {p0}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1400(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1802(Lcom/android/systemui/widget/SystemUIView$ResData;I)I

    :cond_7
    return-void
.end method

.method private updateImage()V
    .locals 6

    .line 117
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$100(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    .line 118
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$400(Lcom/android/systemui/widget/SystemUIView$ResData;)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$200(Lcom/android/systemui/widget/SystemUIView$ResData;)I

    move-result v1

    .line 119
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    if-eqz v0, :cond_1

    invoke-static {v2}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$500(Lcom/android/systemui/widget/SystemUIView$ResData;)I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$300(Lcom/android/systemui/widget/SystemUIView$ResData;)I

    move-result v2

    .line 121
    :goto_1
    iget v3, p0, Lcom/android/systemui/widget/SystemUIView;->mUpdateFlag:I

    and-int/lit8 v4, v3, 0x1

    const-string v5, "SystemUIView"

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    .line 124
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v3}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$600(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_6

    .line 126
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    .line 127
    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$700(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$800(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    :cond_4
    const-string v0, "apply style: white-bg"

    .line 128
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$700(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 130
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$400(Lcom/android/systemui/widget/SystemUIView$ResData;)I

    move-result v1

    .line 132
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$800(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 133
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$500(Lcom/android/systemui/widget/SystemUIView$ResData;)I

    move-result v2

    :cond_6
    :goto_2
    if-lez v1, :cond_7

    const-string v0, "setBackgroundResource!!"

    .line 139
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_7
    if-lez v2, :cond_8

    const-string v0, "setBackgroundColor!!"

    .line 143
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 145
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_8
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 50
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 51
    iget v0, p0, Lcom/android/systemui/widget/SystemUIView;->mAttrCount:I

    if-lez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$100(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/widget/Util;->convertFlag(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;I)V

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIView;->mIsCallbackRegistered:Z

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 59
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 60
    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIView;->mIsCallbackRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIView;->mIsCallbackRegistered:Z

    .line 62
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 44
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 45
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIView;->initImage()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 93
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 95
    iget p1, p0, Lcom/android/systemui/widget/SystemUIView;->mPendingUpdateFlag:I

    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/systemui/widget/SystemUIView;->updateStyle(I)V

    const/4 p1, 0x0

    .line 97
    iput p1, p0, Lcom/android/systemui/widget/SystemUIView;->mPendingUpdateFlag:I

    :cond_0
    return-void
.end method

.method public updateStyle(I)V
    .locals 2

    .line 68
    invoke-direct {p0, p1}, Lcom/android/systemui/widget/SystemUIView;->isUpdatableState(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateStyle() flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/widget/SystemUIView;->mUpdateFlag:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUIView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iput p1, p0, Lcom/android/systemui/widget/SystemUIView;->mUpdateFlag:I

    .line 74
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIView;->refreshResIds()V

    .line 75
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIView;->updateImage()V

    return-void
.end method
