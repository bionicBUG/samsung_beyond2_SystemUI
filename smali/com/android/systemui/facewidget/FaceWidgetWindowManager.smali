.class public Lcom/android/systemui/facewidget/FaceWidgetWindowManager;
.super Ljava/lang/Object;
.source "FaceWidgetWindowManager.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static mDimAmount:F = 0.15f

.field private static volatile sInstance:Lcom/android/systemui/facewidget/FaceWidgetWindowManager;


# instance fields
.field private final mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mContext:Landroid/content/Context;

.field private final mFloatViewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHasFocus:Z

.field private final mWLPListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/WindowManager$LayoutParams;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mWLPStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/view/WindowManager$LayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowLayoutParamsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/WindowManager$LayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mWm:Landroid/view/WindowManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mFloatViewMap:Ljava/util/Map;

    .line 62
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mWindowLayoutParamsMap:Ljava/util/Map;

    .line 63
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mWLPStack:Ljava/util/Stack;

    .line 64
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mWLPListenerMap:Ljava/util/Map;

    .line 66
    new-instance v0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/facewidget/FaceWidgetWindowManager$1;-><init>(Lcom/android/systemui/facewidget/FaceWidgetWindowManager;)V

    iput-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 115
    iput-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mContext:Landroid/content/Context;

    .line 116
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mWm:Landroid/view/WindowManager;

    .line 117
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 118
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 119
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->facewidget_big_view_dim_amount:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 120
    invoke-virtual {p1}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    sput p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mDimAmount:F

    return-void
.end method

.method private addWLP(Landroid/view/WindowManager$LayoutParams;Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowManager$LayoutParams;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addWLP size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mWLPStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wlp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetWindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mWLPStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mWLPStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x0

    .line 324
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 325
    iget-object v2, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mWLPListenerMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 326
    iget-object v2, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mWLPListenerMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mWLPStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    sget v0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mDimAmount:F

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    if-eqz p2, :cond_1

    .line 333
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mWLPListenerMap:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private adjustBackground(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "background"

    .line 212
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWhiteKeyguardWallpaper is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FaceWidgetWindowManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 216
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$color;->facewidget_big_view_bg_color_white:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 222
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$color;->facewidget_big_view_bg_color_dark:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method private adjustNavigationBar(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p0, "navibar"

    .line 189
    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result p0

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "White bg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetWindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_1

    .line 192
    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    or-int/lit8 p0, p0, 0x10

    invoke-virtual {p1, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 194
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    and-int/lit8 p0, p0, -0x11

    invoke-virtual {p1, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method

.method private createLayoutParams(Ljava/lang/String;I)Landroid/view/WindowManager$LayoutParams;
    .locals 2

    .line 131
    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 132
    invoke-virtual {p0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 p1, 0x11

    .line 133
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 p1, -0x1

    .line 134
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 135
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 p1, 0x96f

    .line 136
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 p1, -0x2

    .line 137
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/high16 p1, 0x4080000

    .line 138
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 140
    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 p1, 0x10

    .line 141
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 142
    sget p1, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mDimAmount:F

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const-wide/16 v0, 0x2710

    .line 143
    iput-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 144
    iput p2, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const/4 p1, 0x1

    .line 145
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    return-object p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/FaceWidgetWindowManager;
    .locals 2

    const-class v0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;

    monitor-enter v0

    .line 124
    :try_start_0
    sget-object v1, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->sInstance:Lcom/android/systemui/facewidget/FaceWidgetWindowManager;

    if-nez v1, :cond_0

    .line 125
    new-instance v1, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;

    invoke-direct {v1, p0}, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->sInstance:Lcom/android/systemui/facewidget/FaceWidgetWindowManager;

    .line 127
    :cond_0
    sget-object p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->sInstance:Lcom/android/systemui/facewidget/FaceWidgetWindowManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private removeWLP(Landroid/view/WindowManager$LayoutParams;)V
    .locals 3

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeWLP size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mWLPStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wlp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetWindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mWLPStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 341
    iget-object v1, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mWLPStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 342
    iget-object v1, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mWLPListenerMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mWLPStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 346
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mWLPStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 350
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mWLPStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    .line 351
    sget v0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mDimAmount:F

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 352
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mWLPListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 353
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mWLPListenerMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/function/Consumer;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .locals 0

    .line 367
    iget-boolean p0, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mHasFocus:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->get()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getView(Ljava/lang/String;)Landroid/view/View;
    .locals 0

    .line 362
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mFloatViewMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public hasWindow(Ljava/lang/String;)Z
    .locals 0

    .line 358
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mFloatViewMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hideFloatingView(Ljava/lang/String;)V
    .locals 3

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideFloatingView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetWindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 273
    iput-boolean v0, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mHasFocus:Z

    .line 274
    iget-object v1, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mFloatViewMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mFloatViewMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 276
    iget-object v1, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mWm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mFloatViewMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 279
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mFloatViewMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object v1, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mWindowLayoutParamsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->removeWLP(Landroid/view/WindowManager$LayoutParams;)V

    .line 281
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/android/systemui/facewidget/utils/FaceWidgetBroadcastMessageUtil;->sendFullWindowStateChanged(Landroid/content/Context;Z)V

    return-void
.end method

.method public synthetic lambda$showFullScreen$0$FaceWidgetWindowManager(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Ljava/lang/Void;)V
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mWm:Landroid/view/WindowManager;

    invoke-interface {p0, p1, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public removeAllViews()V
    .locals 6

    const-string v0, "FaceWidgetWindowManager"

    const-string v1, "removeAllViews"

    .line 285
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v1, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mFloatViewMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 290
    :goto_0
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 291
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 292
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    const/16 v5, 0x8

    .line 293
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 294
    iget-object v5, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mWm:Landroid/view/WindowManager;

    invoke-interface {v5, v4}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    if-nez v2, :cond_0

    .line 296
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v4

    .line 298
    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 302
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeAllViews occur exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    if-eqz v2, :cond_2

    .line 307
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 308
    iget-object v2, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mWindowLayoutParamsMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 309
    invoke-direct {p0, v2}, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->removeWLP(Landroid/view/WindowManager$LayoutParams;)V

    .line 310
    iget-object v2, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mWindowLayoutParamsMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 314
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mHasFocus:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 315
    iput-boolean v0, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mHasFocus:Z

    .line 316
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/android/systemui/facewidget/utils/FaceWidgetBroadcastMessageUtil;->sendFullWindowStateChanged(Landroid/content/Context;Z)V

    :cond_3
    return-void
.end method

.method public setDuration(Ljava/lang/String;J)V
    .locals 2

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDuration k="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetWindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mFloatViewMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mWindowLayoutParamsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mWindowLayoutParamsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 267
    iput-wide p2, v0, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    .line 268
    iget-object p2, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mWm:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mFloatViewMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-interface {p2, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 261
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mFloatViewMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mWindowLayoutParamsMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setFlag(Ljava/lang/String;ZZ)V
    .locals 2

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFlag k="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetWindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mFloatViewMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mWindowLayoutParamsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_5

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mWindowLayoutParamsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-nez p2, :cond_2

    if-eqz p3, :cond_1

    goto :goto_0

    .line 241
    :cond_1
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1

    .line 239
    :cond_2
    :goto_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_1
    if-eqz p3, :cond_3

    .line 245
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    goto :goto_2

    .line 247
    :cond_3
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v1, v1, -0x41

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    :goto_2
    if-nez p2, :cond_5

    if-eqz p3, :cond_4

    goto :goto_3

    .line 253
    :cond_4
    iget-object p2, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mFloatViewMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    .line 251
    :cond_5
    :goto_3
    iget-object p2, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mFloatViewMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-direct {p0, p2}, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->adjustBackground(Landroid/view/View;)V

    .line 255
    :goto_4
    iget-object p2, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mWm:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mFloatViewMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-interface {p2, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 232
    :cond_6
    :goto_5
    iget-object p2, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mFloatViewMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mWindowLayoutParamsMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public showFullScreen(Ljava/lang/String;Landroid/view/View;ZZIJ)V
    .locals 2

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showFullScreen k="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", o="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetWindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mHasFocus:Z

    .line 155
    iget-object v1, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/systemui/facewidget/utils/FaceWidgetBroadcastMessageUtil;->sendFullWindowStateChanged(Landroid/content/Context;Z)V

    .line 157
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mFloatViewMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->hideFloatingView(Ljava/lang/String;)V

    .line 161
    :cond_0
    invoke-direct {p0, p1, p5}, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->createLayoutParams(Ljava/lang/String;I)Landroid/view/WindowManager$LayoutParams;

    move-result-object p5

    if-nez p3, :cond_2

    if-eqz p4, :cond_1

    goto :goto_0

    .line 165
    :cond_1
    iget p3, p5, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 p3, p3, -0x3

    iput p3, p5, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1

    .line 163
    :cond_2
    :goto_0
    iget p3, p5, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p3, p3, 0x2

    iput p3, p5, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_1
    if-eqz p4, :cond_3

    .line 169
    iget p3, p5, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 p3, p3, 0x40

    iput p3, p5, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    goto :goto_2

    .line 171
    :cond_3
    iget p3, p5, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 p3, p3, -0x41

    iput p3, p5, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 174
    :goto_2
    iput-wide p6, p5, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    .line 175
    invoke-direct {p0, p2}, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->adjustNavigationBar(Landroid/view/View;)V

    .line 176
    invoke-direct {p0, p2}, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->adjustBackground(Landroid/view/View;)V

    const/4 p3, 0x0

    .line 177
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 178
    iget-object p3, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mWm:Landroid/view/WindowManager;

    invoke-interface {p3, p2, p5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    iget-object p3, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mWindowLayoutParamsMap:Ljava/util/Map;

    invoke-interface {p3, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    new-instance p3, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetWindowManager$W6AyGT3xqjjKlKBV0ukKbu6eJ_k;

    invoke-direct {p3, p0, p2, p5}, Lcom/android/systemui/facewidget/-$$Lambda$FaceWidgetWindowManager$W6AyGT3xqjjKlKBV0ukKbu6eJ_k;-><init>(Lcom/android/systemui/facewidget/FaceWidgetWindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    invoke-direct {p0, p5, p3}, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->addWLP(Landroid/view/WindowManager$LayoutParams;Ljava/util/function/Consumer;)V

    .line 181
    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mFloatViewMap:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateFloatingView(Ljava/lang/String;)V
    .locals 2

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateContentsView k="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceWidgetWindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mFloatViewMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 201
    instance-of v1, v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;

    if-eqz v1, :cond_0

    .line 202
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;

    invoke-virtual {v1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->updateContentsView()V

    .line 203
    iget-object v1, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mWm:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->mWindowLayoutParamsMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$LayoutParams;

    invoke-interface {v1, v0, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
