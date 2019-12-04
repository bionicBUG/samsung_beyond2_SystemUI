.class public interface abstract Lcom/samsung/android/knox/hdm/IHdmManager;
.super Ljava/lang/Object;
.source "IHdmManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/hdm/IHdmManager$Stub;,
        Lcom/samsung/android/knox/hdm/IHdmManager$Default;
    }
.end annotation


# virtual methods
.method public abstract setHdmPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
