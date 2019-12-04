.class public final Lcom/android/systemui/indexsearch/SystemUIIndexMediator_Factory;
.super Ljava/lang/Object;
.source "SystemUIIndexMediator_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/indexsearch/SystemUIIndexMediator;",
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

.field private final qsTileHostProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSTileHost;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/indexsearch/SystemUIIndexMediator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSTileHost;",
            ">;)",
            "Lcom/android/systemui/indexsearch/SystemUIIndexMediator;"
        }
    .end annotation

    .line 27
    new-instance v0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSTileHost;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/indexsearch/SystemUIIndexMediator;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator_Factory;->contextProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator_Factory;->qsTileHostProvider:Ljavax/inject/Provider;

    invoke-static {v0, p0}, Lcom/android/systemui/indexsearch/SystemUIIndexMediator_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/indexsearch/SystemUIIndexMediator_Factory;->get()Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    move-result-object p0

    return-object p0
.end method
