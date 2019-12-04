.class Lcom/android/systemui/qs/bar/DataUsageBar$1;
.super Landroid/content/BroadcastReceiver;
.source "DataUsageBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/bar/DataUsageBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/bar/DataUsageBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/bar/DataUsageBar;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/android/systemui/qs/bar/DataUsageBar$1;->this$0:Lcom/android/systemui/qs/bar/DataUsageBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-static {}, Lcom/android/systemui/qs/bar/DataUsageBar;->access$000()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DataUsageBar"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string p2, "android.intent.action.SIM_STATE_CHANGED"

    .line 70
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 71
    iget-object p0, p0, Lcom/android/systemui/qs/bar/DataUsageBar$1;->this$0:Lcom/android/systemui/qs/bar/DataUsageBar;

    invoke-static {p0}, Lcom/android/systemui/qs/bar/DataUsageBar;->access$100(Lcom/android/systemui/qs/bar/DataUsageBar;)V

    goto :goto_0

    :cond_1
    const-string p2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 72
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 73
    iget-object p1, p0, Lcom/android/systemui/qs/bar/DataUsageBar$1;->this$0:Lcom/android/systemui/qs/bar/DataUsageBar;

    invoke-static {p1}, Lcom/android/systemui/qs/bar/DataUsageBar;->access$200(Lcom/android/systemui/qs/bar/DataUsageBar;)Lcom/android/systemui/qs/DataUsageView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/qs/DataUsageView;->updateCurrentDataSubId()V

    .line 74
    iget-object p1, p0, Lcom/android/systemui/qs/bar/DataUsageBar$1;->this$0:Lcom/android/systemui/qs/bar/DataUsageBar;

    iget-object p1, p1, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 75
    iget-object p0, p0, Lcom/android/systemui/qs/bar/DataUsageBar$1;->this$0:Lcom/android/systemui/qs/bar/DataUsageBar;

    invoke-static {p0}, Lcom/android/systemui/qs/bar/DataUsageBar;->access$200(Lcom/android/systemui/qs/bar/DataUsageBar;)Lcom/android/systemui/qs/DataUsageView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/qs/DataUsageView;->updateUsageInfo()V

    goto :goto_0

    :cond_2
    const-string p2, "com.samsung.systemui.statusbar.ANIMATING"

    .line 77
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 78
    iget-object p1, p0, Lcom/android/systemui/qs/bar/DataUsageBar$1;->this$0:Lcom/android/systemui/qs/bar/DataUsageBar;

    iget-object p1, p1, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 79
    iget-object p0, p0, Lcom/android/systemui/qs/bar/DataUsageBar$1;->this$0:Lcom/android/systemui/qs/bar/DataUsageBar;

    invoke-static {p0}, Lcom/android/systemui/qs/bar/DataUsageBar;->access$200(Lcom/android/systemui/qs/bar/DataUsageBar;)Lcom/android/systemui/qs/DataUsageView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/qs/DataUsageView;->updateUsageInfo()V

    :cond_3
    :goto_0
    return-void
.end method
