.class Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;
.super Ljava/lang/Object;
.source "BubbleContainerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static volatile sBubbleContainerManager:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;


# instance fields
.field private mConfiguration:Landroid/content/res/Configuration;

.field private final mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mDateChangeReceiver:Landroid/content/BroadcastReceiver;

.field mH:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;

.field private final mPowerSaveModeReceiver:Landroid/content/BroadcastReceiver;

.field private mRotation:I

.field private final mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

.field private mThread:Landroid/os/HandlerThread;

.field private final mUserSwitchReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$1;-><init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

    .line 70
    new-instance v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$2;-><init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    .line 78
    new-instance v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$3;-><init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->mPowerSaveModeReceiver:Landroid/content/BroadcastReceiver;

    .line 86
    new-instance v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$4;-><init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->mDateChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 94
    new-instance v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$5;-><init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->mContext:Landroid/content/Context;

    .line 128
    new-instance p1, Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->mConfiguration:Landroid/content/res/Configuration;

    .line 130
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "BubbleContainerHandlerThread"

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->mThread:Landroid/os/HandlerThread;

    .line 131
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 132
    new-instance p1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;-><init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;Landroid/os/Looper;Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$1;)V

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;)Landroid/content/Context;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;)Landroid/content/res/Configuration;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->mConfiguration:Landroid/content/res/Configuration;

    return-object p0
.end method

.method static synthetic access$102(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->mConfiguration:Landroid/content/res/Configuration;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->mRotation:I

    return p0
.end method

.method static synthetic access$302(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->mRotation:I

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;)Landroid/view/IRotationWatcher$Stub;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->mPowerSaveModeReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->mDateChangeReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic access$800(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;
    .locals 2

    .line 115
    sget-object v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->sBubbleContainerManager:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;

    if-nez v0, :cond_1

    .line 116
    const-class v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;

    monitor-enter v0

    .line 117
    :try_start_0
    sget-object v1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->sBubbleContainerManager:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;

    if-nez v1, :cond_0

    .line 118
    new-instance v1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->sBubbleContainerManager:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;

    .line 120
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 123
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->sBubbleContainerManager:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;

    return-object p0
.end method


# virtual methods
.method public finalize()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->mThread:Landroid/os/HandlerThread;

    .line 139
    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;

    return-void
.end method
