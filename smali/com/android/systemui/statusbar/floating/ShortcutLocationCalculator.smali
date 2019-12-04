.class public abstract Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;
.super Ljava/lang/Object;
.source "ShortcutLocationCalculator.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;->mContext:Landroid/content/Context;

    .line 38
    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 39
    const-class p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;->mDisplay:Landroid/view/Display;

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;->loadDimens()V

    return-void
.end method


# virtual methods
.method public getAppShortcutIconLocation()Landroid/graphics/Point;
    .locals 4

    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;->getScreenRotation()I

    move-result v0

    .line 49
    const-class v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getRealSize()Landroid/graphics/Point;

    move-result-object v1

    .line 51
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;->getIconBottomMargin()I

    move-result p0

    iput p0, v2, Landroid/graphics/Point;->x:I

    .line 64
    iget p0, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 p0, p0, 0x2

    iput p0, v2, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 59
    :cond_1
    iget v0, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;->getIconBottomMargin()I

    move-result p0

    sub-int/2addr v0, p0

    iput v0, v2, Landroid/graphics/Point;->x:I

    .line 60
    iget p0, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 p0, p0, 0x2

    iput p0, v2, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 55
    :cond_2
    iget v0, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v0, v0, 0x2

    iput v0, v2, Landroid/graphics/Point;->x:I

    .line 56
    iget v0, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;->getIconBottomMargin()I

    move-result p0

    sub-int/2addr v0, p0

    iput v0, v2, Landroid/graphics/Point;->y:I

    :goto_0
    return-object v2
.end method

.method protected abstract getIconBottomMargin()I
.end method

.method public getScreenRotation()I
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;->mDisplay:Landroid/view/Display;

    if-eqz p0, :cond_0

    .line 74
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract getShortcutLocation(IIII)Landroid/graphics/Point;
.end method

.method protected abstract loadDimens()V
.end method
