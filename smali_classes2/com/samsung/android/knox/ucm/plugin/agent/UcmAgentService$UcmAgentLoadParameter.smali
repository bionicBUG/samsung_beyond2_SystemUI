.class public Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;
.super Ljava/lang/Object;
.source "UcmAgentService.java"

# interfaces
.implements Ljava/security/KeyStore$LoadStoreParameter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "UcmAgentLoadParameter"
.end annotation


# instance fields
.field param:Lcom/samsung/android/knox/ucm/plugin/keystore/KeyStoreParameter;


# direct methods
.method protected constructor <init>(IILandroid/os/Bundle;)V
    .locals 1

    .line 1173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1174
    new-instance v0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyStoreParameter;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyStoreParameter;-><init>(IILandroid/os/Bundle;)V

    iput-object v0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;->param:Lcom/samsung/android/knox/ucm/plugin/keystore/KeyStoreParameter;

    return-void
.end method


# virtual methods
.method public getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;
    .locals 0

    .line 1179
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentLoadParameter;->param:Lcom/samsung/android/knox/ucm/plugin/keystore/KeyStoreParameter;

    return-object p0
.end method
