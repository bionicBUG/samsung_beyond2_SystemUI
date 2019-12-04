.class Lcom/android/systemui/appdock/model/AppDockAppListLoader$4;
.super Landroid/content/BroadcastReceiver;
.source "AppDockAppListLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/appdock/model/AppDockAppListLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;


# direct methods
.method constructor <init>(Lcom/android/systemui/appdock/model/AppDockAppListLoader;)V
    .locals 0

    .line 676
    iput-object p1, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$4;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 679
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 680
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.DATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 681
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 682
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 684
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 686
    iget-object p0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$4;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    invoke-static {p0}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->access$1000(Lcom/android/systemui/appdock/model/AppDockAppListLoader;)V

    goto :goto_1

    .line 687
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 688
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 689
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 690
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 691
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$4;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    invoke-static {p0}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->access$1100(Lcom/android/systemui/appdock/model/AppDockAppListLoader;)V

    goto :goto_1

    .line 683
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$4;->this$0:Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    invoke-static {p0}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->access$1000(Lcom/android/systemui/appdock/model/AppDockAppListLoader;)V

    :cond_4
    :goto_1
    return-void
.end method
