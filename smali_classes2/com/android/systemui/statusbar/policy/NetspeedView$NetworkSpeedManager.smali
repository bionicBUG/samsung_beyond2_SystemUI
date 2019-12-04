.class Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;
.super Ljava/util/Observable;
.source "NetspeedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetspeedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkSpeedManager"
.end annotation


# static fields
.field private static volatile mInstance:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;


# instance fields
.field private final UPDATE_DATA1:I

.field private final UPDATE_DATA2:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 308
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    const/4 v0, 0x1

    .line 288
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->UPDATE_DATA1:I

    const/4 v0, 0x2

    .line 289
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->UPDATE_DATA2:I

    .line 324
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->mHandler:Landroid/os/Handler;

    .line 309
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;)V
    .locals 0

    .line 284
    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;
    .locals 3

    .line 313
    sget-object v0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->mInstance:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    if-nez v0, :cond_1

    .line 314
    const-class v0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    monitor-enter v0

    .line 315
    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->mInstance:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    if-nez v1, :cond_0

    const-string v1, "NetworkSpeedManager"

    const-string v2, "getInstance == null"

    .line 316
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    new-instance v1, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->mInstance:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    .line 319
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 321
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->mInstance:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    return-object p0
.end method


# virtual methods
.method public addObserver(Ljava/util/Observer;)V
    .locals 2

    .line 293
    invoke-virtual {p0}, Ljava/util/Observable;->countObservers()I

    move-result v0

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 296
    :cond_0
    invoke-super {p0, p1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    return-void
.end method

.method public deleteObserver(Ljava/util/Observer;)V
    .locals 0

    .line 301
    invoke-super {p0, p1}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    .line 303
    invoke-virtual {p0}, Ljava/util/Observable;->countObservers()I

    move-result p1

    if-nez p1, :cond_0

    .line 304
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
