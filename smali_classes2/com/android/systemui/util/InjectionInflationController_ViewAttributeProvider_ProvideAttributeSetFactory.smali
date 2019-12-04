.class public final Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;
.super Ljava/lang/Object;
.source "InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/util/AttributeSet;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;


# direct methods
.method public static provideInstance(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;
    .locals 0

    .line 24
    invoke-static {p0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;->provideAttributeSet()Landroid/util/AttributeSet;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 35
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Landroid/util/AttributeSet;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/util/AttributeSet;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->module:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    invoke-static {p0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->provideInstance(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->get()Landroid/util/AttributeSet;

    move-result-object p0

    return-object p0
.end method
