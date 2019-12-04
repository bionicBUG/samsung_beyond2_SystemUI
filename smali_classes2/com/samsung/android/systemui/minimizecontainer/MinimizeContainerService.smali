.class public Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;
.super Landroid/app/Service;
.source "MinimizeContainerService.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private final mMultiWindowCallback:Lcom/samsung/android/multiwindow/IMultiWindowCallback$Stub;

.field private final mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 43
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 44
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->mBinder:Landroid/os/IBinder;

    .line 46
    new-instance v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService$1;-><init>(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->mMultiWindowCallback:Lcom/samsung/android/multiwindow/IMultiWindowCallback$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 110
    sget-boolean p1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "BubbleContainerManager"

    const-string v0, "[MinimizeContainerService] onBind()"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->mBinder:Landroid/os/IBinder;

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    .line 116
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BubbleContainerManager"

    const-string v1, "[MinimizeContainerService] onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 120
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->mMultiWindowCallback:Lcom/samsung/android/multiwindow/IMultiWindowCallback$Stub;

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->registerMultiWindowServiceCallback(Lcom/samsung/android/multiwindow/IMultiWindowCallback;)V

    .line 122
    invoke-static {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;

    move-result-object p0

    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->sendMessage(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 127
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BubbleContainerManager"

    const-string v1, "[MinimizeContainerService] onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerService;->mMultiWindowCallback:Lcom/samsung/android/multiwindow/IMultiWindowCallback$Stub;

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->unregisterMultiWindowServiceCallback(Lcom/samsung/android/multiwindow/IMultiWindowCallback;)V

    .line 133
    invoke-static {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;

    move-result-object p0

    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->sendMessage(I)V

    return-void
.end method
