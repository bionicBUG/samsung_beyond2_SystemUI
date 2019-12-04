.class Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService$SmartPopupViewPackageListObserver;
.super Landroid/database/ContentObserver;
.source "SmartPopupViewService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartPopupViewPackageListObserver"
.end annotation


# instance fields
.field private final mSmartPopupViewPackageListUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;)V
    .locals 3

    .line 188
    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService$SmartPopupViewPackageListObserver;->this$0:Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;

    const/4 v0, 0x0

    .line 189
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string v0, "floating_noti_package_list"

    .line 186
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService$SmartPopupViewPackageListObserver;->mSmartPopupViewPackageListUri:Landroid/net/Uri;

    .line 190
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService$SmartPopupViewPackageListObserver;->loadingEnabledListFromDB()V

    .line 191
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService$SmartPopupViewPackageListObserver;->mSmartPopupViewPackageListUri:Landroid/net/Uri;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private loadingEnabledListFromDB()V
    .locals 5

    .line 203
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BubbleContainerManager"

    const-string v1, "[SmartPopupViewService] loadingEnabledListFromDB"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService$SmartPopupViewPackageListObserver;->this$0:Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;->access$300(Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewDB;->getPackageStrListFromDB(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService$SmartPopupViewPackageListObserver;->this$0:Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;

    invoke-static {v1}, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;->access$100(Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 207
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 208
    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService$SmartPopupViewPackageListObserver;->this$0:Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;

    invoke-static {v3}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->mH:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;

    const/16 v4, 0x18

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 213
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService$SmartPopupViewPackageListObserver;->this$0:Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;

    invoke-static {v1}, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;->access$100(Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 214
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService$SmartPopupViewPackageListObserver;->this$0:Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;

    invoke-static {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;->access$102(Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 197
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService$SmartPopupViewPackageListObserver;->mSmartPopupViewPackageListUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewService$SmartPopupViewPackageListObserver;->loadingEnabledListFromDB()V

    :cond_0
    return-void
.end method
