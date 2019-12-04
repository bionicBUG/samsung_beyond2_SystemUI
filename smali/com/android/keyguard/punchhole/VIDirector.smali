.class public abstract Lcom/android/keyguard/punchhole/VIDirector;
.super Ljava/lang/Object;
.source "VIDirector.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDisplay:Landroid/view/Display;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_VIDirector"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/punchhole/VIDirector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 40
    const-class p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/punchhole/VIDirector;->mDisplay:Landroid/view/Display;

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract getCameraAffordanceVIFileName()Ljava/lang/String;
.end method

.method protected abstract getCameraAffordanceVISizeRatio()Landroid/graphics/PointF;
.end method

.method protected abstract getCameraLocationRatio()Landroid/graphics/PointF;
.end method

.method public abstract getFaceRecognitionVIFileName()Ljava/lang/String;
.end method

.method protected abstract getFaceRecognitionVISizeRatio()Landroid/graphics/PointF;
.end method

.method public getScreenRotation()I
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/keyguard/punchhole/VIDirector;->mDisplay:Landroid/view/Display;

    if-eqz p0, :cond_0

    .line 46
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getScreenSize()Landroid/graphics/Point;
    .locals 0

    .line 53
    const-class p0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getRealSize()Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public getVIViewLocation(IZ)Landroid/graphics/Rect;
    .locals 9

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 63
    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/VIDirector;->getCameraLocationRatio()Landroid/graphics/PointF;

    move-result-object v1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/VIDirector;->getFaceRecognitionVISizeRatio()Landroid/graphics/PointF;

    move-result-object v3

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/VIDirector;->getCameraAffordanceVISizeRatio()Landroid/graphics/PointF;

    move-result-object v3

    :goto_0
    if-nez v3, :cond_2

    .line 77
    sget-object p0, Lcom/android/keyguard/punchhole/VIDirector;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVIViewLocation() - return; vi size is not supported, animation = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 81
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/VIDirector;->getScreenSize()Landroid/graphics/Point;

    move-result-object p1

    .line 83
    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/VIDirector;->getScreenRotation()I

    move-result p0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    if-eq p0, v2, :cond_4

    const/4 v2, 0x3

    if-eq p0, v2, :cond_3

    .line 98
    iget p0, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, p0

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v6, v3, Landroid/graphics/PointF;->x:F

    mul-float v7, v6, v5

    sub-float/2addr v4, v7

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 99
    iget v2, p1, Landroid/graphics/Point;->y:I

    int-to-float v4, v2

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v3

    sub-float/2addr v1, v5

    mul-float/2addr v4, v1

    float-to-int v1, v4

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 100
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    int-to-float p0, p0

    mul-float/2addr p0, v6

    add-float/2addr v1, p0

    float-to-int p0, v1

    iput p0, v0, Landroid/graphics/Rect;->right:I

    .line 101
    iget p0, v0, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    int-to-float v1, v2

    mul-float/2addr v1, v3

    add-float/2addr p0, v1

    float-to-int p0, p0

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 91
    :cond_3
    iget p0, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, p0

    iget v6, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v6

    mul-float/2addr v2, v4

    iget v4, p1, Landroid/graphics/Point;->y:I

    int-to-float v6, v4

    iget v7, v3, Landroid/graphics/PointF;->x:F

    mul-float/2addr v6, v7

    mul-float/2addr v6, v5

    sub-float/2addr v2, v6

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v4

    .line 92
    iget v1, v1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v1

    int-to-float v1, p0

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v3

    mul-float/2addr v1, v5

    sub-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 93
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    int-to-float v2, v4

    mul-float/2addr v2, v7

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 94
    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    int-to-float p0, p0

    mul-float/2addr p0, v3

    add-float/2addr v1, p0

    float-to-int p0, v1

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 85
    :cond_4
    iget p0, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, p0

    iget v6, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v6

    iget v6, p1, Landroid/graphics/Point;->y:I

    int-to-float v7, v6

    iget v8, v3, Landroid/graphics/PointF;->x:F

    mul-float/2addr v7, v8

    mul-float/2addr v7, v5

    sub-float/2addr v2, v7

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v6

    .line 86
    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v1

    mul-float/2addr v2, v4

    int-to-float v1, p0

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v3

    mul-float/2addr v1, v5

    sub-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 87
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    int-to-float v2, v6

    mul-float/2addr v2, v8

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 88
    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    int-to-float p0, p0

    mul-float/2addr p0, v3

    add-float/2addr v1, p0

    float-to-int p0, v1

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    :goto_1
    if-eqz p2, :cond_5

    .line 106
    iget p0, v0, Landroid/graphics/Rect;->left:I

    .line 107
    iget p2, v0, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr p2, p1

    iput p2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, p1

    .line 108
    iput p0, v0, Landroid/graphics/Rect;->right:I

    :cond_5
    return-object v0
.end method

.method public getVIViewRotation()I
    .locals 1

    .line 115
    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/VIDirector;->getScreenRotation()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x5a

    return p0

    :cond_1
    const/16 p0, 0x10e

    return p0
.end method
