.class Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService$1;
.super Landroid/content/BroadcastReceiver;
.source "SmartPopupViewService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;->registerPackageRemoveReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService$1;->this$0:Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 154
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "android.intent.extra.REPLACING"

    .line 155
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 157
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-nez v1, :cond_3

    .line 158
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 159
    array-length p2, p1

    :goto_0
    const-string v1, "BubbleContainerManager"

    if-ge v0, p2, :cond_1

    aget-object v2, p1, v0

    .line 160
    sget-boolean v3, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;->DEBUG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SmartPopupViewService] mPackageRemovedReceiver intentInfo : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    .line 162
    aget-object v0, p1, p2

    if-eqz v0, :cond_3

    .line 163
    aget-object p1, p1, p2

    .line 164
    iget-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService$1;->this$0:Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;

    invoke-static {p2, p1}, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;->access$000(Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 165
    sget-boolean p2, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;->DEBUG:Z

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[SmartPopupViewService] mPackageRemovedReceiver remove : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService$1;->this$0:Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;

    invoke-static {p2}, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;->access$100(Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 167
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService$1;->this$0:Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;

    invoke-static {p1}, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;->access$200(Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService$1;->this$0:Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;

    invoke-static {p0}, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;->access$100(Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewDB;->putPackageStrListToDB(Landroid/content/Context;Ljava/util/ArrayList;)V

    :cond_3
    return-void
.end method
