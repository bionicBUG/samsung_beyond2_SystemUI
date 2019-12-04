.class public Lcom/android/systemui/statusbar/phone/interactor/FloatingGameToolsEnableInteractor;
.super Ljava/lang/Object;
.source "FloatingGameToolsEnableInteractor.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/interactor/Interactor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 0

    .line 14
    const-class p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isGametoolsEnabled()Z

    move-result p0

    return p0
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 9
    const-class p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper;->setGametoolsEnabled(Z)V

    return-void
.end method
