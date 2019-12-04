.class public Lcom/android/systemui/keyguard/DisplayLifecycle;
.super Lcom/android/systemui/keyguard/Lifecycle;
.source "DisplayLifecycle.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/keyguard/Lifecycle<",
        "Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;",
        ">;",
        "Lcom/android/systemui/Dumpable;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "DisplayLifecycle"


# instance fields
.field private mDisplayHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/view/Display;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayMetricsHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/DisplayMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayRealSizeHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplaySizeHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFolderOpened:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 66
    invoke-direct {p0}, Lcom/android/systemui/keyguard/Lifecycle;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayHash:Ljava/util/HashMap;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplaySizeHash:Ljava/util/HashMap;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayRealSizeHash:Ljava/util/HashMap;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayMetricsHash:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 48
    new-instance v0, Lcom/android/systemui/keyguard/DisplayLifecycle$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/DisplayLifecycle$1;-><init>(Lcom/android/systemui/keyguard/DisplayLifecycle;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const-string v0, "display"

    .line 67
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 68
    iget-object p1, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/keyguard/DisplayLifecycle;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->dispatchDisplayAdded(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/keyguard/DisplayLifecycle;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->dispatchDisplayRemoved(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/keyguard/DisplayLifecycle;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->dispatchDisplayChanged(I)V

    return-void
.end method

.method private addDisplay(I)V
    .locals 3

    .line 211
    sget-object v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addDisplay id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    if-eq v1, p1, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->updateCacheVariables(I)V

    return-void

    .line 215
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->TAG:Ljava/lang/String;

    const-string p1, "addDisplay return - display is null or id is invalid"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private dispatchDisplayAdded(I)V
    .locals 1

    .line 72
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->addDisplay(I)V

    .line 73
    new-instance v0, Lcom/android/systemui/keyguard/-$$Lambda$DisplayLifecycle$JDzg2f_V3TcmuDcQHStUWidJuN0;

    invoke-direct {v0, p1}, Lcom/android/systemui/keyguard/-$$Lambda$DisplayLifecycle$JDzg2f_V3TcmuDcQHStUWidJuN0;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/Lifecycle;->dispatch(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private dispatchDisplayChanged(I)V
    .locals 1

    .line 77
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->updateDisplay(I)V

    .line 78
    new-instance v0, Lcom/android/systemui/keyguard/-$$Lambda$DisplayLifecycle$YI2YkSdft3g6BGmJyV8S9jQ188E;

    invoke-direct {v0, p1}, Lcom/android/systemui/keyguard/-$$Lambda$DisplayLifecycle$YI2YkSdft3g6BGmJyV8S9jQ188E;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/Lifecycle;->dispatch(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private dispatchDisplayRemoved(I)V
    .locals 1

    .line 82
    new-instance v0, Lcom/android/systemui/keyguard/-$$Lambda$DisplayLifecycle$pHBATUygzshxG3LZ2EGkbjaJxSI;

    invoke-direct {v0, p1}, Lcom/android/systemui/keyguard/-$$Lambda$DisplayLifecycle$pHBATUygzshxG3LZ2EGkbjaJxSI;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/Lifecycle;->dispatch(Ljava/util/function/Consumer;)V

    .line 83
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->removeDisplay(I)V

    return-void
.end method

.method private dispatchFolderStateChanged(Z)V
    .locals 3

    .line 87
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 91
    :cond_0
    sget-object v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchFolderStateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->updateCacheVariables(I)V

    .line 94
    new-instance v0, Lcom/android/systemui/keyguard/-$$Lambda$DisplayLifecycle$F5X1nrllIKa1hKRWGSfWgHTCbtg;

    invoke-direct {v0, p1}, Lcom/android/systemui/keyguard/-$$Lambda$DisplayLifecycle$F5X1nrllIKa1hKRWGSfWgHTCbtg;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/Lifecycle;->dispatch(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic lambda$dispatchDisplayAdded$0(ILcom/android/systemui/keyguard/DisplayLifecycle$Observer;)V
    .locals 0

    .line 73
    invoke-interface {p1, p0}, Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;->onDisplayAdded(I)V

    return-void
.end method

.method static synthetic lambda$dispatchDisplayChanged$1(ILcom/android/systemui/keyguard/DisplayLifecycle$Observer;)V
    .locals 0

    .line 78
    invoke-interface {p1, p0}, Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;->onDisplayChanged(I)V

    return-void
.end method

.method static synthetic lambda$dispatchDisplayRemoved$2(ILcom/android/systemui/keyguard/DisplayLifecycle$Observer;)V
    .locals 0

    .line 82
    invoke-interface {p1, p0}, Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;->onDisplayRemoved(I)V

    return-void
.end method

.method static synthetic lambda$dispatchFolderStateChanged$3(ZLcom/android/systemui/keyguard/DisplayLifecycle$Observer;)V
    .locals 0

    .line 94
    invoke-interface {p1, p0}, Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;->onFolderStateChanged(Z)V

    return-void
.end method

.method static synthetic lambda$dump$4(Ljava/io/PrintWriter;Landroid/view/Display;)V
    .locals 2

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/Display;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private removeDisplay(I)V
    .locals 3

    .line 272
    sget-object v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeDisplay id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplaySizeHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    iget-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayRealSizeHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayMetricsHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private updateCacheVariables(I)V
    .locals 6

    .line 225
    iget-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Display;

    if-nez v0, :cond_0

    return-void

    .line 230
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplaySizeHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    if-nez v1, :cond_1

    .line 232
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 234
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 236
    iget-object v2, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayRealSizeHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    if-nez v2, :cond_2

    .line 238
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 240
    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 242
    iget-object v3, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayMetricsHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/DisplayMetrics;

    if-nez v3, :cond_3

    .line 244
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 246
    :cond_3
    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 248
    iget-object v4, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplaySizeHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v4, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayRealSizeHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayMetricsHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCacheVariables id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", display = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", size = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", realSize = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateDisplay(I)V
    .locals 3

    .line 256
    sget-object v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDisplay id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    .line 259
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->addDisplay(I)V

    .line 261
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    .line 263
    sget-object p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "updateDisplay return - display is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 268
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->updateCacheVariables(I)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "DisplayLifecycle:"

    .line 285
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    iget-object p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayHash:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    .line 287
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/keyguard/-$$Lambda$hOu5EpideKFxvp13MOGmN5nhzUA;->INSTANCE:Lcom/android/systemui/keyguard/-$$Lambda$hOu5EpideKFxvp13MOGmN5nhzUA;

    .line 288
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/keyguard/-$$Lambda$DisplayLifecycle$1vUhABt7fEV_i358Gr7cxgqgNYk;

    invoke-direct {p1, p2}, Lcom/android/systemui/keyguard/-$$Lambda$DisplayLifecycle$1vUhABt7fEV_i358Gr7cxgqgNYk;-><init>(Ljava/io/PrintWriter;)V

    .line 289
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getDefaultDisplay()Landroid/view/Display;
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public getDisplay(I)Landroid/view/Display;
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Display;

    if-nez v0, :cond_0

    .line 104
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->addDisplay(I)V

    .line 105
    iget-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Display;

    if-nez v0, :cond_0

    .line 108
    sget-object v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->TAG:Ljava/lang/String;

    const-string v1, "getDisplay() is null, get directly from DisplayManager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    const/4 v0, 0x0

    .line 185
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDisplayMetrics(I)Landroid/util/DisplayMetrics;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayMetrics(I)Landroid/util/DisplayMetrics;
    .locals 2

    .line 189
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    .line 190
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->addDisplay(I)V

    .line 193
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayMetricsHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/DisplayMetrics;

    if-nez p0, :cond_1

    .line 195
    sget-object p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDisplayMetrics("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is null, return empty DisplayMetrics"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance p0, Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Landroid/util/DisplayMetrics;-><init>()V

    :cond_1
    return-object p0
.end method

.method public getRealSize()Landroid/graphics/Point;
    .locals 1

    const/4 v0, 0x0

    .line 122
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getRealSize(I)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public getRealSize(I)Landroid/graphics/Point;
    .locals 2

    .line 132
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    .line 133
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->addDisplay(I)V

    .line 136
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayRealSizeHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Point;

    if-nez p0, :cond_1

    .line 138
    sget-object p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRealSize("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is null, return empty Point"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0}, Landroid/graphics/Point;-><init>()V

    :cond_1
    return-object p0
.end method

.method public getSize()Landroid/graphics/Point;
    .locals 1

    const/4 v0, 0x0

    .line 156
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getSize(I)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public getSize(I)Landroid/graphics/Point;
    .locals 2

    .line 171
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    .line 172
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->addDisplay(I)V

    .line 175
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplaySizeHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Point;

    if-nez p0, :cond_1

    .line 177
    sget-object p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSize("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is null, return empty Point"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0}, Landroid/graphics/Point;-><init>()V

    :cond_1
    return-object p0
.end method

.method public isFolderOpened()Z
    .locals 0

    .line 207
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    return p0
.end method

.method public setFolderState(Z)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->dispatchFolderStateChanged(Z)V

    return-void
.end method
