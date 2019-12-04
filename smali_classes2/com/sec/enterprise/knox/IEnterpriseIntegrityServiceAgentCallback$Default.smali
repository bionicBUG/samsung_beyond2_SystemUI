.class public Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentCallback$Default;
.super Ljava/lang/Object;
.source "IEnterpriseIntegrityServiceAgentCallback.java"

# interfaces
.implements Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
