.class Lcom/samsung/android/knox/kiosk/KioskMode$2;
.super Ljava/lang/Object;
.source "KioskMode.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic val$throwableReference:Ljava/util/concurrent/atomic/AtomicReference;


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .line 1556
    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode$2;->val$throwableReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
