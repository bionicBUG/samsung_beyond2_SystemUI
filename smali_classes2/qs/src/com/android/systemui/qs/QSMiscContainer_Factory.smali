.class public final Lqs/src/com/android/systemui/qs/QSMiscContainer_Factory;
.super Ljava/lang/Object;
.source "QSMiscContainer_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lqs/src/com/android/systemui/qs/QSMiscContainer;",
        ">;"
    }
.end annotation


# instance fields
.field private final activityStarterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;"
        }
    .end annotation
.end field

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

.field private final deviceProvisionedControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            ">;"
        }
    .end annotation
.end field

.field private final userInfoControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/UserInfoController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lqs/src/com/android/systemui/qs/QSMiscContainer;
    .locals 7
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
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/UserInfoController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            ">;)",
            "Lqs/src/com/android/systemui/qs/QSMiscContainer;"
        }
    .end annotation

    .line 52
    new-instance v6, Lqs/src/com/android/systemui/qs/QSMiscContainer;

    .line 53
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    .line 54
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Landroid/util/AttributeSet;

    .line 55
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/android/systemui/plugins/ActivityStarter;

    .line 56
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/android/systemui/statusbar/policy/UserInfoController;

    .line 57
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lqs/src/com/android/systemui/qs/QSMiscContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/UserInfoController;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V

    return-object v6
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0}, Lqs/src/com/android/systemui/qs/QSMiscContainer_Factory;->get()Lqs/src/com/android/systemui/qs/QSMiscContainer;

    move-result-object p0

    return-object p0
.end method

.method public get()Lqs/src/com/android/systemui/qs/QSMiscContainer;
    .locals 4

    .line 38
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer_Factory;->contextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer_Factory;->attrsProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer_Factory;->userInfoControllerProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer_Factory;->deviceProvisionedControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3, p0}, Lqs/src/com/android/systemui/qs/QSMiscContainer_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lqs/src/com/android/systemui/qs/QSMiscContainer;

    move-result-object p0

    return-object p0
.end method
