.class Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;
.super Ljava/lang/Object;
.source "DozeDockHandler.java"

# interfaces
.implements Lcom/android/systemui/dock/DockManager$DockEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeDockHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DockEventListener"
.end annotation


# instance fields
.field private mRegistered:Z

.field final synthetic this$0:Lcom/android/systemui/doze/DozeDockHandler;


# virtual methods
.method register()V
    .locals 1

    .line 143
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;->mRegistered:Z

    if-eqz v0, :cond_0

    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;->this$0:Lcom/android/systemui/doze/DozeDockHandler;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeDockHandler;->access$700(Lcom/android/systemui/doze/DozeDockHandler;)Lcom/android/systemui/dock/DockManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;->this$0:Lcom/android/systemui/doze/DozeDockHandler;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeDockHandler;->access$700(Lcom/android/systemui/doze/DozeDockHandler;)Lcom/android/systemui/dock/DockManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/systemui/dock/DockManager;->addListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V

    :cond_1
    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;->mRegistered:Z

    return-void
.end method

.method unregister()V
    .locals 1

    .line 153
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;->mRegistered:Z

    if-nez v0, :cond_0

    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;->this$0:Lcom/android/systemui/doze/DozeDockHandler;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeDockHandler;->access$700(Lcom/android/systemui/doze/DozeDockHandler;)Lcom/android/systemui/dock/DockManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;->this$0:Lcom/android/systemui/doze/DozeDockHandler;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeDockHandler;->access$700(Lcom/android/systemui/doze/DozeDockHandler;)Lcom/android/systemui/dock/DockManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/systemui/dock/DockManager;->removeListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V

    :cond_1
    const/4 v0, 0x0

    .line 159
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;->mRegistered:Z

    return-void
.end method
