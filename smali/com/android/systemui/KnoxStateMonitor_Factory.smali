.class public final Lcom/android/systemui/KnoxStateMonitor_Factory;
.super Ljava/lang/Object;
.source "KnoxStateMonitor_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/KnoxStateMonitor;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static provideInstance(Ljavax/inject/Provider;)Lcom/android/systemui/KnoxStateMonitor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/android/systemui/KnoxStateMonitor;"
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/systemui/KnoxStateMonitor;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/KnoxStateMonitor;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/android/systemui/KnoxStateMonitor_Factory;->provideInstance(Ljavax/inject/Provider;)Lcom/android/systemui/KnoxStateMonitor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor_Factory;->get()Lcom/android/systemui/KnoxStateMonitor;

    move-result-object p0

    return-object p0
.end method
