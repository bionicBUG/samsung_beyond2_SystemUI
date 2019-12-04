.class public Lcom/sec/enterprise/knox/EnterpriseContainerCallbackProxy;
.super Lcom/samsung/android/knox/IEnterpriseContainerCallback$Stub;
.source "EnterpriseContainerCallbackProxy.java"


# instance fields
.field private mOldCallback:Lcom/sec/enterprise/knox/EnterpriseContainerCallback;


# virtual methods
.method public updateStatus(ILandroid/os/Bundle;)V
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/sec/enterprise/knox/EnterpriseContainerCallbackProxy;->mOldCallback:Lcom/sec/enterprise/knox/EnterpriseContainerCallback;

    if-eqz p0, :cond_0

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/sec/enterprise/knox/EnterpriseContainerCallback;->updateStatus(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method
