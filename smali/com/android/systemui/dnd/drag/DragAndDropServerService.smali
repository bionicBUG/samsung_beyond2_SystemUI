.class public Lcom/android/systemui/dnd/drag/DragAndDropServerService;
.super Landroid/app/Service;
.source "DragAndDropServerService.java"

# interfaces
.implements Lcom/android/systemui/dnd/drag/IDragService;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field mClientProxy:Lcom/samsung/android/multiwindow/IDragAndDropClient;

.field mFirstFrameDrawn:Z

.field private final mHandler:Landroid/os/Handler;

.field mStub:Lcom/samsung/android/multiwindow/IDragAndDropServer;

.field mWindow:Lcom/android/systemui/dnd/drag/DragAndDropWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MW_DND_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/systemui/dnd/drag/DragAndDropServerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/dnd/drag/DragAndDropServerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropServerService;->mHandler:Landroid/os/Handler;

    .line 29
    new-instance v0, Lcom/android/systemui/dnd/drag/DragAndDropServerService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/dnd/drag/DragAndDropServerService$1;-><init>(Lcom/android/systemui/dnd/drag/DragAndDropServerService;)V

    iput-object v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropServerService;->mStub:Lcom/samsung/android/multiwindow/IDragAndDropServer;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/dnd/drag/DragAndDropServerService;)Landroid/os/Handler;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/android/systemui/dnd/drag/DragAndDropServerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/dnd/drag/DragAndDropServerService;->mWindow:Lcom/android/systemui/dnd/drag/DragAndDropWindow;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public getClient()Lcom/samsung/android/multiwindow/IDragAndDropClient;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/dnd/drag/DragAndDropServerService;->mClientProxy:Lcom/samsung/android/multiwindow/IDragAndDropClient;

    return-object p0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 77
    iget-object p0, p0, Lcom/android/systemui/dnd/drag/DragAndDropServerService;->mStub:Lcom/samsung/android/multiwindow/IDragAndDropServer;

    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate()V
    .locals 3

    .line 82
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 83
    sget-object v0, Lcom/android/systemui/dnd/drag/DragAndDropServerService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v0, Lcom/android/systemui/dnd/drag/DragAndDropWindow;

    invoke-direct {v0, p0}, Lcom/android/systemui/dnd/drag/DragAndDropWindow;-><init>(Lcom/android/systemui/dnd/drag/DragAndDropServerService;)V

    iput-object v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropServerService;->mWindow:Lcom/android/systemui/dnd/drag/DragAndDropWindow;

    .line 87
    iget-object v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropServerService;->mWindow:Lcom/android/systemui/dnd/drag/DragAndDropWindow;

    invoke-virtual {v0}, Landroid/app/Dialog;->create()V

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropServerService;->mFirstFrameDrawn:Z

    .line 91
    iget-object v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropServerService;->mWindow:Lcom/android/systemui/dnd/drag/DragAndDropWindow;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/dnd/drag/DragAndDropServerService$2;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/dnd/drag/DragAndDropServerService$2;-><init>(Lcom/android/systemui/dnd/drag/DragAndDropServerService;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 115
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 116
    sget-object p0, Lcom/android/systemui/dnd/drag/DragAndDropServerService;->TAG:Ljava/lang/String;

    const-string v0, "onDestroy"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
