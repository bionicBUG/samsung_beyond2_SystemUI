.class public Lcom/android/systemui/facewidget/FaceWidgetAttribute;
.super Ljava/lang/Object;
.source "FaceWidgetAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/facewidget/FaceWidgetAttribute$Attribute;
    }
.end annotation


# instance fields
.field private final mAttributes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/facewidget/FaceWidgetAttribute$Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDefault:Lcom/android/systemui/facewidget/FaceWidgetAttribute$Attribute;

.field private mDensity:F

.field private mMetrics:Landroid/util/DisplayMetrics;

.field private mRes:Landroid/content/res/Resources;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetAttribute;->mAttributes:Landroid/util/SparseArray;

    .line 44
    iput-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetAttribute;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    .line 45
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetAttribute;->mWindowManager:Landroid/view/WindowManager;

    .line 46
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetAttribute;->mMetrics:Landroid/util/DisplayMetrics;

    .line 47
    iget-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetAttribute;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetAttribute;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, p0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method public static getScaleMode(ZZZIZLandroid/content/Context;)I
    .locals 8

    .line 53
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result p5

    const/4 v0, 0x1

    xor-int/2addr p5, v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    .line 55
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 56
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v1, v5

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v6, 0x4

    aput-object v2, v1, v6

    const-string v2, "FaceWidgetAttribute"

    const-string v7, "hasNoti=%s(%d), ownerInfo=%s, bioUnlock=%s, portrait=%s"

    .line 55
    invoke-static {v2, v7, v1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p5, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    .line 60
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isLockScreenRotationAllowed()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p4, :cond_1

    return v6

    :cond_1
    :goto_0
    if-eqz p0, :cond_6

    if-eqz p5, :cond_3

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    move p0, v6

    goto :goto_1

    :cond_2
    move p0, v5

    :goto_1
    move v3, p0

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    move v0, v4

    :cond_4
    move v3, v0

    :goto_2
    if-eqz p5, :cond_6

    if-eqz p4, :cond_6

    if-gt p3, v4, :cond_6

    if-eq v3, v6, :cond_5

    if-ne v3, v5, :cond_6

    :cond_5
    move v3, v4

    :cond_6
    return v3
.end method

.method private getToPixel(Ljava/lang/String;)I
    .locals 2

    .line 125
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "dp"

    .line 127
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-float p1, p1

    iget p0, p0, Lcom/android/systemui/facewidget/FaceWidgetAttribute;->mDensity:F

    mul-float/2addr p1, p0

    float-to-int p0, p1

    goto :goto_0

    :cond_0
    const-string p0, "px"

    .line 129
    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 130
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    .line 132
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0
.end method


# virtual methods
.method public getMinTopMargin(IZZ)I
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetAttribute;->mAttributes:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/systemui/facewidget/FaceWidgetAttribute;->mDefault:Lcom/android/systemui/facewidget/FaceWidgetAttribute$Attribute;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/facewidget/FaceWidgetAttribute$Attribute;

    const/4 v1, 0x0

    const-string v2, "FaceWidgetAttribute"

    if-nez v0, :cond_0

    const-string p0, "getMinTopMargin no default"

    .line 140
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 144
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetAttribute;->mDefault:Lcom/android/systemui/facewidget/FaceWidgetAttribute$Attribute;

    if-ne v0, p0, :cond_1

    .line 145
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMinTopMargin not defined clockType="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p3, :cond_2

    .line 154
    iget-object p0, v0, Lcom/android/systemui/facewidget/FaceWidgetAttribute$Attribute;->mMinTopMargin:[I

    xor-int/lit8 p1, p2, 0x1

    aget p0, p0, p1

    goto :goto_1

    .line 156
    :cond_2
    iget-object p0, v0, Lcom/android/systemui/facewidget/FaceWidgetAttribute$Attribute;->mMinTopMargin:[I

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    .line 157
    :goto_0
    aget p0, p0, v1

    :goto_1
    return p0
.end method

.method public getTabletMinTopMargin(I)I
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetAttribute;->mMetrics:Landroid/util/DisplayMetrics;

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/systemui/facewidget/FaceWidgetAttribute;->getTabletMinTopMargin(IIZ)I

    move-result p0

    return p0
.end method

.method public getTabletMinTopMargin(IIZ)I
    .locals 1

    const/4 p0, 0x7

    const/4 v0, 0x0

    if-eq p1, p0, :cond_0

    const p0, 0xc35a

    if-eq p1, p0, :cond_0

    const p0, 0xc35d

    if-eq p1, p0, :cond_0

    int-to-float p0, v0

    int-to-float p1, p2

    const p2, 0x3de147ae    # 0.11f

    :goto_0
    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    float-to-int p0, p0

    goto :goto_1

    :cond_0
    int-to-float p0, v0

    int-to-float p1, p2

    if-eqz p3, :cond_1

    const p2, 0x3df5c28f    # 0.12f

    goto :goto_0

    :cond_1
    const p2, 0x3e0a3d71    # 0.135f

    goto :goto_0

    :goto_1
    return p0
.end method

.method public loadDimens(Landroid/content/res/Resources;)V
    .locals 13

    const-string v0, "FaceWidgetAttribute"

    const-string v1, "loadDimens"

    .line 85
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iput-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetAttribute;->mRes:Landroid/content/res/Resources;

    .line 87
    iget-object v1, p0, Lcom/android/systemui/facewidget/FaceWidgetAttribute;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    const/4 v1, 0x0

    .line 88
    iput-object v1, p0, Lcom/android/systemui/facewidget/FaceWidgetAttribute;->mDefault:Lcom/android/systemui/facewidget/FaceWidgetAttribute$Attribute;

    .line 89
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/android/systemui/facewidget/FaceWidgetAttribute;->mDensity:F

    .line 90
    iget-object v2, p0, Lcom/android/systemui/facewidget/FaceWidgetAttribute;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/facewidget/FaceWidgetAttribute;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 92
    sget v2, Lcom/android/systemui/R$array;->clock_attribute:I

    .line 93
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    move v3, v2

    .line 94
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_3

    .line 95
    new-instance v4, Lcom/android/systemui/facewidget/FaceWidgetAttribute$Attribute;

    invoke-direct {v4, v1}, Lcom/android/systemui/facewidget/FaceWidgetAttribute$Attribute;-><init>(Lcom/android/systemui/facewidget/FaceWidgetAttribute$1;)V

    add-int/lit8 v5, v3, 0x1

    .line 98
    aget-object v3, p1, v3

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v7, v5, 0x1

    .line 101
    aget-object v5, p1, v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 102
    array-length v6, v5

    const/4 v8, 0x3

    if-ne v6, v8, :cond_0

    .line 104
    array-length v6, v5

    move v8, v2

    move v9, v8

    :goto_1
    if-ge v8, v6, :cond_0

    aget-object v10, v5, v8

    .line 105
    iget-object v11, v4, Lcom/android/systemui/facewidget/FaceWidgetAttribute$Attribute;->mMinTopMargin:[I

    add-int/lit8 v12, v9, 0x1

    invoke-direct {p0, v10}, Lcom/android/systemui/facewidget/FaceWidgetAttribute;->getToPixel(Ljava/lang/String;)I

    move-result v10

    aput v10, v11, v9

    add-int/lit8 v8, v8, 0x1

    move v9, v12

    goto :goto_1

    .line 109
    :cond_0
    array-length v5, v3

    move v6, v2

    :goto_2
    if-ge v6, v5, :cond_2

    aget-object v8, v3, v6

    .line 110
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_1

    .line 112
    iget-object v9, p0, Lcom/android/systemui/facewidget/FaceWidgetAttribute;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v9, v8, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 114
    :cond_1
    iput-object v4, p0, Lcom/android/systemui/facewidget/FaceWidgetAttribute;->mDefault:Lcom/android/systemui/facewidget/FaceWidgetAttribute$Attribute;

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    move v3, v7

    goto :goto_0

    .line 119
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetAttribute;->mDefault:Lcom/android/systemui/facewidget/FaceWidgetAttribute$Attribute;

    if-nez p0, :cond_4

    const-string p0, "loadDimens no default"

    .line 120
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method
