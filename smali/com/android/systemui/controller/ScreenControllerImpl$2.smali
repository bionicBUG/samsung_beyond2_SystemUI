.class Lcom/android/systemui/controller/ScreenControllerImpl$2;
.super Ljava/lang/Object;
.source "ScreenControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controller/ScreenControllerImpl;->setBrightness(ZLjava/lang/String;Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controller/ScreenControllerImpl;

.field final synthetic val$mBarService:Lcom/android/internal/statusbar/IStatusBarService;


# direct methods
.method constructor <init>(Lcom/android/systemui/controller/ScreenControllerImpl;Lcom/android/internal/statusbar/IStatusBarService;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/android/systemui/controller/ScreenControllerImpl$2;->this$0:Lcom/android/systemui/controller/ScreenControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/controller/ScreenControllerImpl$2;->val$mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl$2;->val$mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v0, :cond_0

    .line 154
    iget-object p0, p0, Lcom/android/systemui/controller/ScreenControllerImpl$2;->val$mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ScreenControllerImpl"

    const-string v1, "expand panel RemoteException "

    .line 156
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
