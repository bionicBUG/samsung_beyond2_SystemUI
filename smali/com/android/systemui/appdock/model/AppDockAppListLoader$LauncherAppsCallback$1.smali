.class Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback$1;
.super Ljava/lang/Object;
.source "AppDockAppListLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;->onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;Ljava/lang/String;I)V
    .locals 0

    .line 561
    iput-object p1, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback$1;->this$1:Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;

    iput-object p2, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback$1;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback$1;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 564
    iget-object v0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback$1;->this$1:Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;

    iget-object v1, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback$1;->val$packageName:Ljava/lang/String;

    iget p0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback$1;->val$userId:I

    invoke-static {v0, v1, p0}, Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;->access$600(Lcom/android/systemui/appdock/model/AppDockAppListLoader$LauncherAppsCallback;Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 565
    invoke-static {}, Lcom/android/systemui/appdock/event/EventBus;->getDefault()Lcom/android/systemui/appdock/event/EventBus;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/appdock/event/AppDataReloadedEvent;

    invoke-direct {v0}, Lcom/android/systemui/appdock/event/AppDataReloadedEvent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/systemui/appdock/event/EventBus;->sendOntoMainThread(Lcom/android/systemui/appdock/event/EventBus$Event;)V

    :cond_0
    return-void
.end method
