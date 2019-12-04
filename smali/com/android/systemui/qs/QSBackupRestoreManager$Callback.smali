.class public interface abstract Lcom/android/systemui/qs/QSBackupRestoreManager$Callback;
.super Ljava/lang/Object;
.source "QSBackupRestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSBackupRestoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract isValidDB()Z
.end method

.method public abstract onBackup(Z)Ljava/lang/String;
.end method

.method public abstract onRestore(Ljava/lang/String;)V
.end method
