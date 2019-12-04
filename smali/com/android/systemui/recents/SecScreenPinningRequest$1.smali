.class Lcom/android/systemui/recents/SecScreenPinningRequest$1;
.super Landroid/content/BroadcastReceiver;
.source "SecScreenPinningRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/SecScreenPinningRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/SecScreenPinningRequest;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/SecScreenPinningRequest;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/android/systemui/recents/SecScreenPinningRequest$1;->this$0:Lcom/android/systemui/recents/SecScreenPinningRequest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "displayId"

    const/4 v0, -0x1

    .line 243
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 246
    iget-object p1, p0, Lcom/android/systemui/recents/SecScreenPinningRequest$1;->this$0:Lcom/android/systemui/recents/SecScreenPinningRequest;

    invoke-static {p1}, Lcom/android/systemui/recents/SecScreenPinningRequest;->access$000(Lcom/android/systemui/recents/SecScreenPinningRequest;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/recents/SecScreenPinningRequest$1;->this$0:Lcom/android/systemui/recents/SecScreenPinningRequest;

    .line 247
    invoke-static {p1}, Lcom/android/systemui/recents/SecScreenPinningRequest;->access$000(Lcom/android/systemui/recents/SecScreenPinningRequest;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 249
    iget-object p0, p0, Lcom/android/systemui/recents/SecScreenPinningRequest$1;->this$0:Lcom/android/systemui/recents/SecScreenPinningRequest;

    invoke-virtual {p0}, Lcom/android/systemui/recents/SecScreenPinningRequest;->clearPrompt()V

    :cond_0
    return-void
.end method
