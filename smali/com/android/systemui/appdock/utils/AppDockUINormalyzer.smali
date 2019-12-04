.class public Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;
.super Ljava/lang/Object;
.source "AppDockUINormalyzer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;
    }
.end annotation


# static fields
.field private static PREFIX:Ljava/lang/String;

.field private static sDisplaySize:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->sDisplaySize:Landroid/graphics/Point;

    .line 27
    invoke-static {}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->getPrefix()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static baseOnLongSide(Landroid/content/Context;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;)Z
    .locals 2

    .line 62
    invoke-static {p0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 63
    :goto_0
    sget-object v1, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$1;->$SwitchMap$com$android$systemui$appdock$utils$AppDockUINormalyzer$Attr:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    xor-int/2addr p0, v0

    :cond_1
    return p0
.end method

.method private static getAppRes(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 0

    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public static getCutoutRect(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 3

    .line 178
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 180
    iget-object p0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz p0, :cond_0

    .line 181
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 182
    iget v2, p0, Landroid/graphics/Rect;->top:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "CutOut Rect : top : %d, bottom : %d"

    invoke-static {v1, v0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method private static getDpiRatio(Landroid/content/Context;)F
    .locals 2

    .line 133
    invoke-static {p0}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->getAppRes(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    sget v1, Lcom/android/systemui/R$integer;->appdock_base_dpi:I

    invoke-static {p0, v1}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->getRealInteger(Landroid/content/Context;I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method private static getPixelSizeFromBase(Landroid/content/Context;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)I
    .locals 2

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->sDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 52
    invoke-static {p0, p1}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->baseOnLongSide(Landroid/content/Context;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 53
    sget-object p1, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->sDisplaySize:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    int-to-float p2, p2

    sget v0, Lcom/android/systemui/R$integer;->appdock_base_height:I

    .line 54
    invoke-static {p0, v0}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->getRealInteger(Landroid/content/Context;I)I

    move-result p0

    :goto_0
    int-to-float p0, p0

    div-float/2addr p2, p0

    mul-float/2addr p1, p2

    float-to-int p0, p1

    return p0

    .line 56
    :cond_0
    sget-object p1, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->sDisplaySize:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    int-to-float p2, p2

    sget v0, Lcom/android/systemui/R$integer;->appdock_base_width:I

    .line 57
    invoke-static {p0, v0}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->getRealInteger(Landroid/content/Context;I)I

    move-result p0

    goto :goto_0
.end method

.method private static getPrefix()Ljava/lang/String;
    .locals 1

    .line 31
    sget-boolean v0, Lcom/android/systemui/Rune;->APPDOCK_SUPPORT_WINNER:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "winner_"

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static getRealDimen(Landroid/content/Context;I)I
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 146
    invoke-static {p0}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->getAppRes(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->getResName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dimen"

    .line 146
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    .line 152
    :goto_0
    invoke-static {p0}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->getAppRes(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getRealInteger(Landroid/content/Context;I)I
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/IntegerRes;
        .end annotation
    .end param

    .line 160
    invoke-static {p0}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->getAppRes(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->getResName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "integer"

    .line 160
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    .line 166
    :goto_0
    invoke-static {p0}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->getAppRes(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method private static getResName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->getAppRes(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSize(Landroid/content/Context;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)I
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 46
    invoke-static {p0, p2}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->getRealDimen(Landroid/content/Context;I)I

    move-result p2

    int-to-float p2, p2

    .line 47
    invoke-static {p0}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->getDpiRatio(Landroid/content/Context;)F

    move-result v0

    div-float/2addr p2, v0

    float-to-int p2, p2

    invoke-static {p0, p1, p2}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->getPixelSizeFromBase(Landroid/content/Context;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)I

    move-result p0

    return p0
.end method

.method public static setDimenSize(Landroid/view/View;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)V
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->getSize(Landroid/content/Context;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setPixelSize(Landroid/view/View;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)V

    return-void
.end method

.method public static setPixelSize(Landroid/view/View;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)V
    .locals 1

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 87
    instance-of v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$1;->$SwitchMap$com$android$systemui$appdock$utils$AppDockUINormalyzer$Attr:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 109
    :pswitch_0
    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    .line 101
    :pswitch_1
    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    .line 93
    :pswitch_2
    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_0

    .line 113
    :pswitch_3
    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 105
    :pswitch_4
    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    .line 97
    :pswitch_5
    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :goto_0
    return-void

    .line 88
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "param type is must be ViewGroup.MarginLayoutParamsViewGroup.MarginLayoutParams. "

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setTextDimenSize(Landroid/widget/TextView;I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 122
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->getAppRes(Landroid/content/Context;)Landroid/content/res/Resources;

    .line 124
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->sDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 125
    sget-object v0, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->sDisplaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    .line 126
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$integer;->appdock_base_height:I

    invoke-static {v1, v2}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->getRealInteger(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 128
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->getRealDimen(Landroid/content/Context;I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v0, p1

    .line 129
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->getDpiRatio(Landroid/content/Context;)F

    move-result p1

    div-float/2addr v0, p1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method
