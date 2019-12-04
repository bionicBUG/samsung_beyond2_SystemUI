.class public interface abstract Lcom/android/launcher3/icons/cache/CachingLogic;
.super Ljava/lang/Object;
.source "CachingLogic.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getComponent(Ljava/lang/Object;)Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation
.end method

.method public abstract getLabel(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation
.end method

.method public abstract getUser(Ljava/lang/Object;)Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/os/UserHandle;"
        }
    .end annotation
.end method

.method public abstract loadIcon(Landroid/content/Context;Ljava/lang/Object;Lcom/android/launcher3/icons/BitmapInfo;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;",
            "Lcom/android/launcher3/icons/BitmapInfo;",
            ")V"
        }
    .end annotation
.end method
