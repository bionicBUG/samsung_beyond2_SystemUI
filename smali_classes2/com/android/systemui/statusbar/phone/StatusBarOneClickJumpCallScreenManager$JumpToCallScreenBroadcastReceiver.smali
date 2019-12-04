.class Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StatusBarOneClickJumpCallScreenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JumpToCallScreenBroadcastReceiver"
.end annotation


# instance fields
.field mIsRegistered:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    .line 222
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;->mIsRegistered:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$1;)V
    .locals 0

    .line 220
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 225
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    const-string v1, "StatusBarOneClickJumpCallScreenManager_NotificationPanelView"

    if-eqz p1, :cond_0

    .line 226
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onReceive(PowerManager.ACTION_SCREEN_OFF_BY_PROXIMITY) flag:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", but it will be true."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->access$102(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;Z)Z

    goto/16 :goto_1

    .line 228
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v2, ")"

    const-string v3, "), SEC("

    const-string v4, "state"

    const-string v5, "->"

    if-eqz p1, :cond_3

    .line 229
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->access$200(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;)Z

    move-result p1

    .line 230
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->access$300(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;)Z

    move-result v6

    .line 231
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->access$300(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;)Z

    move-result v8

    if-nez v8, :cond_2

    sget-object v8, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    invoke-static {v7, v0}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->access$202(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;Z)Z

    .line 232
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive(ACTION_PHONE_STATE_CHANGED) GED("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->access$200(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->access$300(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;)Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 233
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v6, "samsung.intent.action.PHONE_STATE"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 234
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->access$200(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;)Z

    move-result p1

    .line 235
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->access$300(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;)Z

    move-result v6

    .line 236
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;

    sget-object v8, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v0

    invoke-static {v7, p2}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->access$302(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;Z)Z

    .line 237
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->access$300(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;)Z

    move-result v0

    invoke-static {p2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->access$202(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;Z)Z

    .line 238
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive(samsung.intent.action.PHONE_STATE) GED("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->access$200(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->access$300(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;)Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method

.method public registerReceiver()V
    .locals 3

    .line 243
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;->mIsRegistered:Z

    if-eqz v0, :cond_0

    return-void

    .line 244
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    .line 245
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PHONE_STATE"

    .line 246
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "samsung.intent.action.PHONE_STATE"

    .line 247
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->access$500(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->access$400(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;)Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 249
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;->mIsRegistered:Z

    return-void
.end method

.method public unregisterReceiver()V
    .locals 2

    .line 253
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;->mIsRegistered:Z

    if-nez v0, :cond_0

    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->access$500(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->access$400(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;)Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 255
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;->mIsRegistered:Z

    .line 256
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->access$102(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;Z)Z

    return-void
.end method
