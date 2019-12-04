.class public final Lcom/android/systemui/util/DebugLogStore_Factory;
.super Ljava/lang/Object;
.source "DebugLogStore_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/util/DebugLogStore;",
        ">;"
    }
.end annotation


# instance fields
.field private final bgLooperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static provideInstance(Ljavax/inject/Provider;)Lcom/android/systemui/util/DebugLogStore;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;)",
            "Lcom/android/systemui/util/DebugLogStore;"
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/android/systemui/util/DebugLogStore;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Looper;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/DebugLogStore;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/util/DebugLogStore;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/android/systemui/util/DebugLogStore_Factory;->bgLooperProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/android/systemui/util/DebugLogStore_Factory;->provideInstance(Ljavax/inject/Provider;)Lcom/android/systemui/util/DebugLogStore;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/util/DebugLogStore_Factory;->get()Lcom/android/systemui/util/DebugLogStore;

    move-result-object p0

    return-object p0
.end method
