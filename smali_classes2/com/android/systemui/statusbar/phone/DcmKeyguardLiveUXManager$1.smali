.class Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager$1;
.super Landroid/os/Handler;
.source "DcmKeyguardLiveUXManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 48
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x16b3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->access$000(Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;Z)V

    :goto_0
    return-void
.end method
