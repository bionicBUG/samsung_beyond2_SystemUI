.class public Lcom/android/systemui/statusbar/phone/interactor/ColorSettingImpl;
.super Ljava/lang/Object;
.source "ColorSettingImpl.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;


# instance fields
.field private mCallback:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/interactor/ColorSettingImpl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addColorCallback(Ljava/lang/Runnable;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/interactor/ColorSettingImpl;->mCallback:Ljava/lang/Runnable;

    .line 22
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/interactor/ColorSettingImpl;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$color;->light_navbar_default_opaque_color:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    .line 23
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1, p0}, Lcom/android/systemui/util/SettingsHelper;->setNavigationBarColor(I)V

    .line 24
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1, p0}, Lcom/android/systemui/util/SettingsHelper;->setNavigationBarCurrentColor(I)V

    return-void
.end method

.method public getNavigationBarColor()I
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/interactor/ColorSettingImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/util/LightNavigationBarUtil;->getBackgroundOpaqueColor(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public setNavigationBarColor(I)V
    .locals 0

    return-void
.end method
