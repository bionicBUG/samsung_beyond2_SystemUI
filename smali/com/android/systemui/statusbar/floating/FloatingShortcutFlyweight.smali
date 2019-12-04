.class public Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;
.super Ljava/lang/Object;
.source "FloatingShortcutFlyweight.java"


# instance fields
.field private mAppIcon:Landroid/graphics/drawable/Drawable;

.field private mAppTitle:Ljava/lang/String;

.field private mComponentName:Landroid/content/ComponentName;

.field private mIsEnabled:Z

.field private mLaunchIntent:Landroid/content/Intent;

.field mShortcutIdx:I

.field mShortcutProperty:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 24
    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->mAppTitle:Ljava/lang/String;

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 26
    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->mLaunchIntent:Landroid/content/Intent;

    .line 27
    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->mComponentName:Landroid/content/ComponentName;

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->mIsEnabled:Z

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->mShortcutIdx:I

    return-void
.end method


# virtual methods
.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getAppTitle()Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->mAppTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getLaunchIntent()Landroid/content/Intent;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->mLaunchIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getShortcutIndex()I
    .locals 0

    .line 49
    iget p0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->mShortcutIdx:I

    return p0
.end method

.method public getShortcutProperty()I
    .locals 0

    .line 53
    iget p0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->mShortcutProperty:I

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 81
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->mIsEnabled:Z

    return p0
.end method

.method public setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setAppTitle(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->mAppTitle:Ljava/lang/String;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->mIsEnabled:Z

    return-void
.end method

.method public setLaunchIntent(Landroid/content/Intent;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->mLaunchIntent:Landroid/content/Intent;

    return-void
.end method

.method public setShortcutIndex(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->mShortcutIdx:I

    return-void
.end method

.method public setShortcutProperty(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->mShortcutProperty:I

    return-void
.end method
