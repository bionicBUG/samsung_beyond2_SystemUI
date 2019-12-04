.class public Landroidx/leanback/system/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/system/Settings$Customizations;
    }
.end annotation


# static fields
.field private static sInstance:Landroidx/leanback/system/Settings;


# instance fields
.field private mOutlineClippingDisabled:Z

.field private mPreferStaticShadows:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-direct {p0, p1}, Landroidx/leanback/system/Settings;->getCustomizations(Landroid/content/Context;)Landroidx/leanback/system/Settings$Customizations;

    move-result-object v0

    .line 71
    invoke-direct {p0, v0, p1}, Landroidx/leanback/system/Settings;->generateSetting(Landroidx/leanback/system/Settings$Customizations;Landroid/content/Context;)V

    return-void
.end method

.method private generateSetting(Landroidx/leanback/system/Settings$Customizations;Landroid/content/Context;)V
    .locals 3

    .line 119
    invoke-static {}, Landroidx/leanback/widget/ShadowOverlayContainer;->supportsDynamicShadow()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 120
    iput-boolean v0, p0, Landroidx/leanback/system/Settings;->mPreferStaticShadows:Z

    if-eqz p1, :cond_1

    .line 122
    iget-boolean v0, p0, Landroidx/leanback/system/Settings;->mPreferStaticShadows:Z

    const-string v2, "leanback_prefer_static_shadows"

    invoke-virtual {p1, v2, v0}, Landroidx/leanback/system/Settings$Customizations;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/leanback/system/Settings;->mPreferStaticShadows:Z

    goto :goto_0

    .line 126
    :cond_0
    iput-boolean v1, p0, Landroidx/leanback/system/Settings;->mPreferStaticShadows:Z

    .line 129
    :cond_1
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_2

    const-string v0, "activity"

    .line 131
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManager;

    .line 132
    invoke-virtual {p2}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result p2

    iput-boolean p2, p0, Landroidx/leanback/system/Settings;->mOutlineClippingDisabled:Z

    if-eqz p1, :cond_3

    .line 134
    iget-boolean p2, p0, Landroidx/leanback/system/Settings;->mOutlineClippingDisabled:Z

    const-string v0, "leanback_outline_clipping_disabled"

    invoke-virtual {p1, v0, p2}, Landroidx/leanback/system/Settings$Customizations;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/leanback/system/Settings;->mOutlineClippingDisabled:Z

    goto :goto_1

    .line 138
    :cond_2
    iput-boolean v1, p0, Landroidx/leanback/system/Settings;->mOutlineClippingDisabled:Z

    :cond_3
    :goto_1
    return-void
.end method

.method private getCustomizations(Landroid/content/Context;)Landroidx/leanback/system/Settings$Customizations;
    .locals 4

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 162
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.support.v17.leanback.action.PARTNER_CUSTOMIZATION"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 169
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 170
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 172
    invoke-static {v2}, Landroidx/leanback/system/Settings;->isSystemApp(Landroid/content/pm/ResolveInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    :try_start_0
    invoke-virtual {p0, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    if-eqz v1, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    move-object v2, v3

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    goto :goto_2

    .line 182
    :cond_3
    new-instance v0, Landroidx/leanback/system/Settings$Customizations;

    invoke-direct {v0, v1, v2}, Landroidx/leanback/system/Settings$Customizations;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    :goto_2
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Landroidx/leanback/system/Settings;
    .locals 1

    .line 62
    sget-object v0, Landroidx/leanback/system/Settings;->sInstance:Landroidx/leanback/system/Settings;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Landroidx/leanback/system/Settings;

    invoke-direct {v0, p0}, Landroidx/leanback/system/Settings;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroidx/leanback/system/Settings;->sInstance:Landroidx/leanback/system/Settings;

    .line 65
    :cond_0
    sget-object p0, Landroidx/leanback/system/Settings;->sInstance:Landroidx/leanback/system/Settings;

    return-object p0
.end method

.method private static isSystemApp(Landroid/content/pm/ResolveInfo;)Z
    .locals 1

    .line 186
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public isOutlineClippingDisabled()Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Landroidx/leanback/system/Settings;->mOutlineClippingDisabled:Z

    return p0
.end method

.method public preferStaticShadows()Z
    .locals 0

    .line 81
    iget-boolean p0, p0, Landroidx/leanback/system/Settings;->mPreferStaticShadows:Z

    return p0
.end method
