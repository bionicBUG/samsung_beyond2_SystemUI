.class Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback$4;
.super Ljava/lang/Object;
.source "AppDockAppListLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;->onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;

.field final synthetic val$packageNames:[Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;[Ljava/lang/String;I)V
    .locals 0

    .line 615
    iput-object p1, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback$4;->this$1:Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;

    iput-object p2, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback$4;->val$packageNames:[Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback$4;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 619
    iget-object v0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback$4;->val$packageNames:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 620
    iget-object v5, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback$4;->this$1:Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;

    iget v6, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback$4;->val$userId:I

    invoke-static {v5, v4, v6}, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;->access$600(Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;Ljava/lang/String;I)Z

    move-result v4

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    .line 623
    invoke-static {}, Lcom/android/systemui/appdock/event/EventBus;->getDefault()Lcom/android/systemui/appdock/event/EventBus;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/appdock/event/AppDataReloadedEvent;

    invoke-direct {v0}, Lcom/android/systemui/appdock/event/AppDataReloadedEvent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/systemui/appdock/event/EventBus;->sendOntoMainThread(Lcom/android/systemui/appdock/event/EventBus$Event;)V

    :cond_1
    return-void
.end method
