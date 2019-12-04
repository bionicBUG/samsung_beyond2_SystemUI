.class public Lcom/sec/enterprise/knox/ucm/plugin/keystore/KeyStoreParameter;
.super Ljava/lang/Object;
.source "KeyStoreParameter.java"

# interfaces
.implements Ljava/security/KeyStore$ProtectionParameter;


# instance fields
.field private final mOptions:Landroid/os/Bundle;

.field private final mOwnerUid:I

.field private final mResourceId:I


# direct methods
.method public constructor <init>(IILandroid/os/Bundle;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p2, p0, Lcom/sec/enterprise/knox/ucm/plugin/keystore/KeyStoreParameter;->mResourceId:I

    .line 28
    iput p1, p0, Lcom/sec/enterprise/knox/ucm/plugin/keystore/KeyStoreParameter;->mOwnerUid:I

    .line 29
    iput-object p3, p0, Lcom/sec/enterprise/knox/ucm/plugin/keystore/KeyStoreParameter;->mOptions:Landroid/os/Bundle;

    return-void
.end method
