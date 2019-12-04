.class Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$3;
.super Landroid/content/BroadcastReceiver;
.source "DcmKeyguardMascotUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->registerReceiver()V
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

    .line 172
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$3;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 176
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.nttdocomo.android.mascot.widget.LockScreenMascotWidget.ACTION_SCREEN_UNLOCK"

    .line 178
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    const-string v0, "eventType"

    .line 179
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 180
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationPanelView.onReceive(): ACTION_SCREEN_UNLOCK, eventType = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "SecKeyguardStatusUtils"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_0
    const-string p2, "ACTION_UNLOCK"

    goto :goto_0

    :cond_1
    const-string p2, "LOCK_CLICK_POPUP"

    goto :goto_0

    :cond_2
    const-string p2, "LOCK_CLICK_MASCOT"

    :goto_0
    if-eqz p2, :cond_3

    .line 197
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "com.nttdocomo.android.mascot"

    const-string v3, "com.nttdocomo.android.mascot.application.MascotApplicationProxy"

    .line 198
    invoke-virtual {v2, p2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.category.LAUNCHER"

    .line 201
    invoke-virtual {v2, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x10200000

    .line 203
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 205
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$3;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    iput-boolean v1, p1, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->mMascotClicked:Z

    .line 206
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->access$400(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->userActivity()V

    .line 207
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils$3;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;->access$400(Lcom/android/systemui/statusbar/phone/DcmKeyguardMascotUtils;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivity(Landroid/content/Intent;Z)V

    :cond_3
    return-void
.end method
