.class public final Lcom/android/systemui/qs/QuickQSPanel_Factory;
.super Ljava/lang/Object;
.source "QuickQSPanel_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/qs/QuickQSPanel;",
        ">;"
    }
.end annotation


# instance fields
.field private final attrsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/util/AttributeSet;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final dumpControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/DumpController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/QuickQSPanel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/util/AttributeSet;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/DumpController;",
            ">;)",
            "Lcom/android/systemui/qs/QuickQSPanel;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/android/systemui/qs/QuickQSPanel;

    .line 36
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/AttributeSet;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/DumpController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/qs/QuickQSPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/DumpController;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/qs/QuickQSPanel;
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSPanel_Factory;->contextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickQSPanel_Factory;->attrsProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/qs/QuickQSPanel_Factory;->dumpControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/qs/QuickQSPanel_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/QuickQSPanel;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSPanel_Factory;->get()Lcom/android/systemui/qs/QuickQSPanel;

    move-result-object p0

    return-object p0
.end method
