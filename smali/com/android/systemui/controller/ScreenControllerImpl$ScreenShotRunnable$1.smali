.class Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable$1;
.super Ljava/lang/Object;
.source "ScreenControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable$1;->this$1:Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable$1;->this$1:Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;

    invoke-static {v0}, Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;->access$400(Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable$1;->this$1:Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;

    invoke-static {p0}, Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;->access$300(Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;)Landroid/content/Intent;

    move-result-object p0

    const-string v1, "com.samsung.permission.CAPTURE"

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method
