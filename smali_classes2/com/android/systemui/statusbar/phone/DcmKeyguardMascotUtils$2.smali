.class Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$2;
.super Landroid/content/BroadcastReceiver;
.source "DcmKeyguardMascotUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->registerMascotReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$2;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.nttdocomo.android.mascot.KEYGUARD_UPDATE"

    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "SecKeyguardStatusUtils"

    if-eqz v0, :cond_1

    .line 92
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$2;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    const-string v0, "RemoteViews"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/widget/RemoteViews;

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->access$102(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 93
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$2;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->access$100(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)Landroid/widget/RemoteViews;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "StatusBarKeyguardManager.BroadcastReceiver.onReceive(): mascot is null"

    .line 94
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "StatusBarKeyguardManager.BroadcastReceiver.onReceive(): mascot is exist"

    .line 97
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$2;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->access$100(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)Landroid/widget/RemoteViews;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->setMascotRemoteViews(Landroid/widget/RemoteViews;)V

    goto :goto_2

    :cond_1
    const-string p2, "jp.co.nttdocomo.carriermail.APP_LINK_RECEIVED_MESSAGE"

    .line 101
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "com.android.internal.policy.impl.CARRIERMAIL_COUNT_UPDATE"

    const/4 v2, 0x1

    if-nez p2, :cond_3

    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const-string p2, "android.intent.action.BOOT_COMPLETED"

    .line 115
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 119
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$2;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    invoke-static {p1, v2}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->access$202(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;Z)Z

    .line 121
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$2;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->access$300(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 122
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$2;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->access$100(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)Landroid/widget/RemoteViews;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->setMascotRemoteViews(Landroid/widget/RemoteViews;)V

    .line 123
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$2;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->access$302(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;Z)Z

    goto :goto_2

    .line 106
    :cond_3
    :goto_1
    new-instance p2, Landroid/content/Intent;

    const-class v3, Lcom/nttdocomo/android/screenlockservice/IScreenLockService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.nttdocomo.android.screenlockservice"

    .line 107
    invoke-virtual {p2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$2;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->access$000(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$2;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, p2, v4, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "StatusBarKeyguardManager.BroadcastReceiver.onReceive(): can\'t connect IScreenLockService"

    .line 109
    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 113
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$2;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->access$100(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)Landroid/widget/RemoteViews;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->setMascotRemoteViews(Landroid/widget/RemoteViews;)V

    :cond_5
    :goto_2
    return-void
.end method
