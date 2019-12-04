.class public abstract Lcom/android/systemui/shared/system/ResizeModeChangedFromBlackListEventListener;
.super Ljava/lang/Object;
.source "ResizeModeChangedFromBlackListEventListener.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mRealListener:Lcom/samsung/android/multiwindow/IResizeModeChangedFromBlackListEventListener;

.field private final mWhoIsCaller:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/shared/system/ResizeModeChangedFromBlackListEventListener;->mHandler:Landroid/os/Handler;

    .line 34
    new-instance v0, Lcom/android/systemui/shared/system/ResizeModeChangedFromBlackListEventListener$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/system/ResizeModeChangedFromBlackListEventListener$1;-><init>(Lcom/android/systemui/shared/system/ResizeModeChangedFromBlackListEventListener;)V

    iput-object v0, p0, Lcom/android/systemui/shared/system/ResizeModeChangedFromBlackListEventListener;->mRealListener:Lcom/samsung/android/multiwindow/IResizeModeChangedFromBlackListEventListener;

    .line 51
    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/system/ResizeModeChangedFromBlackListEventListener;->mWhoIsCaller:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/shared/system/ResizeModeChangedFromBlackListEventListener;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/systemui/shared/system/ResizeModeChangedFromBlackListEventListener;->mWhoIsCaller:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/shared/system/ResizeModeChangedFromBlackListEventListener;)Landroid/os/Handler;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/systemui/shared/system/ResizeModeChangedFromBlackListEventListener;->mHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public onResizeModeChangedFromBlackList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
