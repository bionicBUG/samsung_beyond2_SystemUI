.class public Lcom/android/systemui/appdock/view/AppDockWindowController;
.super Ljava/lang/Object;
.source "AppDockWindowController.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/android/systemui/appdock/view/AppDockWindowController;


# instance fields
.field mContext:Landroid/content/Context;

.field mWindow:Lcom/android/systemui/appdock/view/AppDockWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "APPDOCK_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/systemui/appdock/view/AppDockWindowController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/appdock/view/AppDockWindowController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockWindowController;->mContext:Landroid/content/Context;

    .line 28
    new-instance v0, Lcom/android/systemui/appdock/view/AppDockWindow;

    invoke-direct {v0, p1}, Lcom/android/systemui/appdock/view/AppDockWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/appdock/view/AppDockWindowController;->mWindow:Lcom/android/systemui/appdock/view/AppDockWindow;

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/systemui/appdock/view/AppDockWindowController;
    .locals 1

    .line 20
    sget-object v0, Lcom/android/systemui/appdock/view/AppDockWindowController;->sInstance:Lcom/android/systemui/appdock/view/AppDockWindowController;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/android/systemui/appdock/view/AppDockWindowController;

    invoke-direct {v0, p0}, Lcom/android/systemui/appdock/view/AppDockWindowController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/appdock/view/AppDockWindowController;->sInstance:Lcom/android/systemui/appdock/view/AppDockWindowController;

    .line 23
    :cond_0
    sget-object p0, Lcom/android/systemui/appdock/view/AppDockWindowController;->sInstance:Lcom/android/systemui/appdock/view/AppDockWindowController;

    return-object p0
.end method


# virtual methods
.method public show()V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockWindowController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->get(Landroid/content/Context;)Lcom/android/systemui/appdock/utils/AppDockSystemProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->isScreenPinningActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    sget-object p0, Lcom/android/systemui/appdock/view/AppDockWindowController;->TAG:Ljava/lang/String;

    const-string v0, "Prevent to show AppDock when screen pinning is active."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockWindowController;->mWindow:Lcom/android/systemui/appdock/view/AppDockWindow;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    sget-object p0, Lcom/android/systemui/appdock/view/AppDockWindowController;->TAG:Ljava/lang/String;

    const-string v0, "Prevent to show AppDock when lockscreen is showing."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 42
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockWindowController;->mWindow:Lcom/android/systemui/appdock/view/AppDockWindow;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
