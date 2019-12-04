.class public Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;
.super Landroid/widget/FrameLayout;
.source "LockscreenOverlayView.java"


# instance fields
.field private handler:Landroid/os/Handler;

.field private final lso:Lcom/samsung/android/knox/lockscreen/LSOInterface;

.field private final mContext:Landroid/content/Context;

.field private final mNotifier:Landroid/content/BroadcastReceiver;

.field private final mParentDimension:Landroid/graphics/Point;

.field private final mViewDimension:Landroid/graphics/Point;

.field private registered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 85
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView$1;-><init>(Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;)V

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->handler:Landroid/os/Handler;

    .line 65
    new-instance v0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView$2;-><init>(Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;)V

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mNotifier:Landroid/content/BroadcastReceiver;

    .line 86
    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mContext:Landroid/content/Context;

    .line 87
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mParentDimension:Landroid/graphics/Point;

    .line 89
    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->calculateDeviceDimension()V

    .line 90
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mParentDimension:Landroid/graphics/Point;

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mViewDimension:Landroid/graphics/Point;

    .line 92
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-static {v0, p1}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/lockscreen/LSOInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->lso:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    .line 94
    iget-object p1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->lso:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    if-nez p1, :cond_0

    const/16 p1, 0x8

    .line 95
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->setVisibility(I)V

    return-void

    :cond_0
    const/4 p1, 0x4

    .line 99
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->setVisibility(I)V

    .line 100
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 103
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 106
    iput-boolean p1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->registered:Z

    .line 108
    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->setLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;)Z
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->setLayout()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;)Landroid/os/Handler;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private allowToBeVisible()Z
    .locals 8

    .line 228
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mViewDimension:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-double v1, v1

    iget-object v3, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mParentDimension:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-double v4, v4

    const-wide v6, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v4, v6

    cmpl-double v1, v1, v4

    if-ltz v1, :cond_0

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-double v0, v0

    iget v2, v3, Landroid/graphics/Point;->y:I

    int-to-double v2, v2

    mul-double/2addr v2, v6

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 233
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Screen Size("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mParentDimension:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mParentDimension:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")  : View Size("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mViewDimension:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mViewDimension:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LSO_LockscreenOverlayView"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "LSOInterface View cannot be displayed as view size is not enough."

    .line 236
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private calculateDeviceDimension()V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mContext:Landroid/content/Context;

    const-string v1, "window"

    .line 259
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 260
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mParentDimension:Landroid/graphics/Point;

    invoke-virtual {v0, p0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    return-void
.end method

.method private declared-synchronized registerLSONotification()V
    .locals 3

    monitor-enter p0

    .line 183
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->registered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 184
    monitor-exit p0

    return-void

    .line 187
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->setLayout()Z

    .line 189
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    .line 190
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.knox.intent.action.LSO_CONFIG_CHANGED_INTERNAL"

    .line 191
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mNotifier:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 194
    iput-boolean v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->registered:Z

    const-string v0, "LSO_LockscreenOverlayView"

    const-string v1, "Registered for Intent: android.intent.action.MEDIA_MOUNTED , com.samsung.android.knox.intent.action.LSO_CONFIG_CHANGED_INTERNAL"

    .line 195
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setLayout(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Landroid/view/View;
    .locals 2

    .line 166
    :try_start_0
    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOContainerView;

    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/knox/lockscreen/LSOContainerView;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/lockscreen/LSOItemContainer;)V

    .line 168
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 171
    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 176
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setLayout() Error while creating views: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LSO_LockscreenOverlayView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private setLayout()Z
    .locals 6

    .line 121
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 124
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->lso:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    invoke-virtual {v0}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->getPreferences()Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "android:alpha"

    .line 126
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 128
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    const/4 v1, 0x1

    move v2, v1

    :goto_1
    const/4 v3, 0x3

    const/4 v4, 0x0

    if-gt v1, v3, :cond_4

    .line 136
    iget-object v5, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->lso:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    invoke-virtual {v5, v1}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->getData(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_2

    .line 142
    :cond_2
    invoke-direct {p0, v5}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->setLayout(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eq v1, v3, :cond_3

    .line 145
    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    move v2, v4

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    const-string p0, "LSO_LockscreenOverlayView"

    const-string v0, "No Lockscreen Overlay data found."

    .line 155
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v4
.end method

.method private declared-synchronized unregisterLSONotification()V
    .locals 2

    monitor-enter p0

    .line 201
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->registered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 202
    monitor-exit p0

    return-void

    .line 204
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mNotifier:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 205
    iput-boolean v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->registered:Z

    const-string v0, "LSO_LockscreenOverlayView"

    const-string v1, "Unregistered for Intent: android.intent.action.MEDIA_MOUNTED , com.samsung.android.knox.intent.action.LSO_CONFIG_CHANGED_INTERNAL"

    .line 206
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 81
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 264
    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->registerLSONotification()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 268
    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->unregisterLSONotification()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    .line 241
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 242
    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->calculateDeviceDimension()V

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Size Changed("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mParentDimension:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mParentDimension:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")  : From("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")  To("

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "LSO_LockscreenOverlayView"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object p3, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mViewDimension:Landroid/graphics/Point;

    iput p1, p3, Landroid/graphics/Point;->x:I

    .line 248
    iput p2, p3, Landroid/graphics/Point;->y:I

    .line 250
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->allowToBeVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 251
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->setVisibility(I)V

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->allowToBeVisible()Z

    move-result p1

    if-nez p1, :cond_1

    .line 253
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/16 v0, 0x8

    .line 115
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->setVisibility(I)V

    .line 116
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setVisibility(I)V
    .locals 3

    .line 212
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-nez p1, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->allowToBeVisible()Z

    move-result v2

    if-nez v2, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    .line 216
    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->allowToBeVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    :cond_1
    :goto_0
    if-ne v0, p1, :cond_2

    return-void

    .line 224
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
