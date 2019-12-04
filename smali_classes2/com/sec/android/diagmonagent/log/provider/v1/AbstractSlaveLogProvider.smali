.class public abstract Lcom/sec/android/diagmonagent/log/provider/v1/AbstractSlaveLogProvider;
.super Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;
.source "AbstractSlaveLogProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()Z
    .locals 2

    .line 12
    invoke-super {p0}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->onCreate()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->data:Landroid/os/Bundle;

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const-string v1, "authorityList"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p0, 0x1

    return p0
.end method
