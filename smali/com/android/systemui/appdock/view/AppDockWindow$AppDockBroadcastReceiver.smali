.class public Lcom/android/systemui/appdock/view/AppDockWindow$AppDockBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppDockWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/appdock/view/AppDockWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppDockBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/appdock/view/AppDockWindow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/appdock/view/AppDockWindow;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockWindow$AppDockBroadcastReceiver;->this$0:Lcom/android/systemui/appdock/view/AppDockWindow;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 351
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 352
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 353
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "com.samsung.systemui.statusbar.ANIMATING"

    .line 354
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "dismiss appdock : action=%s"

    .line 355
    invoke-static {p1, p2}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 356
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockWindow$AppDockBroadcastReceiver;->this$0:Lcom/android/systemui/appdock/view/AppDockWindow;

    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockWindow;->startExitAnimation()V

    :cond_1
    return-void
.end method
