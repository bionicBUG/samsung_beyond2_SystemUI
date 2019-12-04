.class Lcom/samsung/systemui/splugins/SPluginManagerImpl$1;
.super Ljava/lang/Object;
.source "SPluginManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/systemui/splugins/SPluginManagerImpl;-><init>(Landroid/content/Context;Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginInstanceManagerFactory;ZLjava/lang/Thread$UncaughtExceptionHandler;Lcom/samsung/systemui/splugins/SPluginInitializer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/systemui/splugins/SPluginManagerImpl;

.field final synthetic val$initializer:Lcom/samsung/systemui/splugins/SPluginInitializer;


# direct methods
.method constructor <init>(Lcom/samsung/systemui/splugins/SPluginManagerImpl;Lcom/samsung/systemui/splugins/SPluginInitializer;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl$1;->this$0:Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    iput-object p2, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl$1;->val$initializer:Lcom/samsung/systemui/splugins/SPluginInitializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl$1;->val$initializer:Lcom/samsung/systemui/splugins/SPluginInitializer;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/SPluginInitializer;->onPluginManagerInit()V

    return-void
.end method
