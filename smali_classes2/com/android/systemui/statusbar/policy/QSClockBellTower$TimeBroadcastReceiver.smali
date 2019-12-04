.class final Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "QSClockBellTower.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/QSClockBellTower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TimeBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/QSClockBellTower;Lcom/android/systemui/statusbar/policy/QSClockBellTower$1;)V
    .locals 0

    .line 154
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;-><init>(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)V

    return-void
.end method

.method private resetClockFormatLocale()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$400(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 201
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$900(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$902(Lcom/android/systemui/statusbar/policy/QSClockBellTower;Ljava/util/Locale;)Ljava/util/Locale;

    .line 203
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$1002(Lcom/android/systemui/statusbar/policy/QSClockBellTower;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$702(Lcom/android/systemui/statusbar/policy/QSClockBellTower;Ljava/lang/String;)Ljava/lang/String;

    .line 205
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$802(Lcom/android/systemui/statusbar/policy/QSClockBellTower;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private updateTimeZone(Ljava/lang/String;)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$202(Lcom/android/systemui/statusbar/policy/QSClockBellTower;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 188
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$200(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$500(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$500(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$600(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$600(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 195
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$702(Lcom/android/systemui/statusbar/policy/QSClockBellTower;Ljava/lang/String;)Ljava/lang/String;

    .line 196
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$802(Lcom/android/systemui/statusbar/policy/QSClockBellTower;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onReceive$0$QSClockBellTower$TimeBroadcastReceiver(Ljava/lang/String;)V
    .locals 0

    .line 162
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->updateTimeZone(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onReceive$1$QSClockBellTower$TimeBroadcastReceiver()V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->resetClockFormatLocale()V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 158
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$000(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Landroid/os/Handler;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 159
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    .line 160
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "time-zone"

    .line 161
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 162
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$000(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/statusbar/policy/-$$Lambda$QSClockBellTower$TimeBroadcastReceiver$1Nq3srMBvueYlIs_kULX900uaoI;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/-$$Lambda$QSClockBellTower$TimeBroadcastReceiver$1Nq3srMBvueYlIs_kULX900uaoI;-><init>(Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    const-string p2, "android.intent.action.CONFIGURATION_CHANGED"

    .line 163
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "android.intent.action.LOCALE_CHANGED"

    .line 164
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 165
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$000(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/policy/-$$Lambda$QSClockBellTower$TimeBroadcastReceiver$pLAZnj-rW9_ELSjBnlPJcC0fMGA;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$QSClockBellTower$TimeBroadcastReceiver$pLAZnj-rW9_ELSjBnlPJcC0fMGA;-><init>(Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 169
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$000(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$100(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public register()V
    .locals 6

    .line 174
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.TIME_TICK"

    .line 175
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIME_SET"

    .line 176
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    .line 177
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    .line 178
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.LOCALE_CHANGED"

    .line 179
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_SWITCHED"

    .line 180
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$400(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->access$400(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    sget-object v1, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/os/Handler;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    return-void
.end method
