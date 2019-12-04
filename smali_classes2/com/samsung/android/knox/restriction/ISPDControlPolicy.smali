.class public interface abstract Lcom/samsung/android/knox/restriction/ISPDControlPolicy;
.super Ljava/lang/Object;
.source "ISPDControlPolicy.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/restriction/ISPDControlPolicy$Stub;,
        Lcom/samsung/android/knox/restriction/ISPDControlPolicy$Default;
    }
.end annotation


# virtual methods
.method public abstract getAutoSecurityPolicyUpdateMode()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setAutoSecurityPolicyUpdateMode(Lcom/samsung/android/knox/ContextInfo;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
