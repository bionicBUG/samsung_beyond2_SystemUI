.class Lcom/android/systemui/appdock/view/AppDockWindow$EventBusObject;
.super Ljava/lang/Object;
.source "AppDockWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/appdock/view/AppDockWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventBusObject"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/appdock/view/AppDockWindow;


# direct methods
.method constructor <init>(Lcom/android/systemui/appdock/view/AppDockWindow;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockWindow$EventBusObject;->this$0:Lcom/android/systemui/appdock/view/AppDockWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBusEvent(Lcom/android/systemui/appdock/event/AppDataReloadedEvent;)V
    .locals 1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "AppDataReloadedEvent"

    .line 232
    invoke-static {v0, p1}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    iget-object p1, p0, Lcom/android/systemui/appdock/view/AppDockWindow$EventBusObject;->this$0:Lcom/android/systemui/appdock/view/AppDockWindow;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->get(Landroid/content/Context;)Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockWindow$EventBusObject;->this$0:Lcom/android/systemui/appdock/view/AppDockWindow;

    invoke-virtual {p1, p0}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->preload(Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTaskCallbacks;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/appdock/event/AppDockMinimizeEvent;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 242
    iget-boolean v2, p1, Lcom/android/systemui/appdock/event/AppDockMinimizeEvent;->minimize:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "AppDockMinimizeEvent : minimize=%b"

    invoke-static {v2, v1}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    iget-object v1, p0, Lcom/android/systemui/appdock/view/AppDockWindow$EventBusObject;->this$0:Lcom/android/systemui/appdock/view/AppDockWindow;

    iget-boolean v2, p1, Lcom/android/systemui/appdock/event/AppDockMinimizeEvent;->minimize:Z

    xor-int/2addr v0, v2

    invoke-static {v1, v0}, Lcom/android/systemui/appdock/view/AppDockWindow;->access$000(Lcom/android/systemui/appdock/view/AppDockWindow;Z)V

    .line 244
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockWindow$EventBusObject;->this$0:Lcom/android/systemui/appdock/view/AppDockWindow;

    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockWindow;->mSideView:Lcom/android/systemui/appdock/view/AppDockSideView;

    iget-boolean p1, p1, Lcom/android/systemui/appdock/event/AppDockMinimizeEvent;->minimize:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/appdock/view/AppDockSideView;->animateMinimize(Z)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/appdock/event/LaunchAppEvent;)V
    .locals 2

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LaunchAppEvent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/systemui/appdock/event/LaunchAppEvent;->key:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockWindow$EventBusObject;->this$0:Lcom/android/systemui/appdock/view/AppDockWindow;

    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockWindow;->startExitAnimation()V

    return-void
.end method
