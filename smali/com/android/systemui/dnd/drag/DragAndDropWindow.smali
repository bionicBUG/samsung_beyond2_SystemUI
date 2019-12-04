.class public Lcom/android/systemui/dnd/drag/DragAndDropWindow;
.super Landroid/app/Dialog;
.source "DragAndDropWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/dnd/drag/DragAndDropWindow$DnDBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field mAppContext:Landroid/content/Context;

.field mReceiver:Lcom/android/systemui/dnd/drag/DragAndDropWindow$DnDBroadcastReceiver;

.field mService:Lcom/android/systemui/dnd/drag/IDragService;

.field mView:Lcom/android/systemui/dnd/drag/DragAndDropView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MW_DND_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/systemui/dnd/drag/DragAndDropWindow;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/dnd/drag/DragAndDropWindow;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/dnd/drag/DragAndDropServerService;)V
    .locals 1

    .line 32
    sget v0, Lcom/android/systemui/R$style;->TransparentFullscreenWindowTheme:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 33
    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropWindow;->mAppContext:Landroid/content/Context;

    .line 34
    iput-object p1, p0, Lcom/android/systemui/dnd/drag/DragAndDropWindow;->mService:Lcom/android/systemui/dnd/drag/IDragService;

    return-void
.end method

.method private init()V
    .locals 2

    .line 46
    sget v0, Lcom/android/systemui/R$id;->dragarea_view:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/dnd/drag/DragAndDropView;

    iput-object v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropWindow;->mView:Lcom/android/systemui/dnd/drag/DragAndDropView;

    .line 47
    iget-object v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropWindow;->mView:Lcom/android/systemui/dnd/drag/DragAndDropView;

    iget-object v1, p0, Lcom/android/systemui/dnd/drag/DragAndDropWindow;->mService:Lcom/android/systemui/dnd/drag/IDragService;

    invoke-virtual {v0, v1}, Lcom/android/systemui/dnd/drag/DragAndDropView;->setParent(Lcom/android/systemui/dnd/drag/IDragService;)V

    .line 48
    invoke-direct {p0}, Lcom/android/systemui/dnd/drag/DragAndDropWindow;->setLayoutParams()V

    .line 50
    new-instance v0, Lcom/android/systemui/dnd/drag/DragAndDropWindow$DnDBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/systemui/dnd/drag/DragAndDropWindow$DnDBroadcastReceiver;-><init>(Lcom/android/systemui/dnd/drag/DragAndDropWindow;)V

    iput-object v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropWindow;->mReceiver:Lcom/android/systemui/dnd/drag/DragAndDropWindow$DnDBroadcastReceiver;

    return-void
.end method

.method private registerReceiver()V
    .locals 2

    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 94
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/dnd/drag/DragAndDropWindow;->mReceiver:Lcom/android/systemui/dnd/drag/DragAndDropWindow$DnDBroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setLayoutParams()V
    .locals 7

    .line 62
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7e0

    const/16 v4, 0x400

    const/4 v5, -0x2

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 69
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 70
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/4 v0, 0x1

    .line 71
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const-string v0, "MW : DragAndDropWindow"

    .line 73
    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private updateSystemUiVisibility()V
    .locals 1

    .line 81
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x700

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method


# virtual methods
.method public bind(Landroid/graphics/Bitmap;III)V
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/android/systemui/dnd/drag/DragAndDropWindow;->mView:Lcom/android/systemui/dnd/drag/DragAndDropView;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/dnd/drag/DragAndDropView;->bind(Landroid/graphics/Bitmap;III)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 40
    sget p1, Lcom/android/systemui/R$layout;->dnd_window_view:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 42
    invoke-direct {p0}, Lcom/android/systemui/dnd/drag/DragAndDropWindow;->init()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 86
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 87
    sget-object v0, Lcom/android/systemui/dnd/drag/DragAndDropWindow;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-direct {p0}, Lcom/android/systemui/dnd/drag/DragAndDropWindow;->registerReceiver()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 100
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 101
    sget-object v0, Lcom/android/systemui/dnd/drag/DragAndDropWindow;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/android/systemui/dnd/drag/DragAndDropWindow;->mView:Lcom/android/systemui/dnd/drag/DragAndDropView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/dnd/drag/DragAndDropView;->performDragEnd(I)V

    .line 104
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/dnd/drag/DragAndDropWindow;->mReceiver:Lcom/android/systemui/dnd/drag/DragAndDropWindow$DnDBroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .line 55
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    .line 57
    sget-object v0, Lcom/android/systemui/dnd/drag/DragAndDropWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged : hasFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-direct {p0}, Lcom/android/systemui/dnd/drag/DragAndDropWindow;->updateSystemUiVisibility()V

    return-void
.end method
