.class public Lcom/android/systemui/keyguard/WorkLockActivityHelper;
.super Ljava/lang/Object;
.source "WorkLockActivityHelper.java"


# instance fields
.field private blankView:Landroid/view/View;

.field private isFocus:Z

.field private isblankView:Z

.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mUserId:I

.field private mwLockScreen:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;I)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->blankView:Landroid/view/View;

    .line 26
    iput-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mwLockScreen:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    .line 27
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->isblankView:Z

    .line 28
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->isFocus:Z

    .line 29
    iput-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mContext:Landroid/content/Context;

    .line 34
    iput-object p1, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mActivity:Landroid/app/Activity;

    .line 36
    iput p3, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mUserId:I

    return-void
.end method

.method private setContentblank(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 83
    iget-object p1, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->blankView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 85
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->isblankView:Z

    .line 87
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 88
    invoke-virtual {p0, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    const/high16 p1, 0x8000000

    .line 89
    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    .line 90
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x700

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mwLockScreen:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1

    .line 99
    iget-object v1, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 100
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->isblankView:Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onResumeWLA()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->isblankView:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->setContentblank(Z)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->isblankView:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 76
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->setContentblank(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setContentForWLA()V
    .locals 8

    .line 41
    iget-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/android/systemui/R$layout;->switcher_workwindow_lock:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 42
    iget-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/android/systemui/R$id;->switcher_workwindow_lock_screen:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mwLockScreen:Landroid/widget/RelativeLayout;

    .line 43
    iget-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/android/systemui/R$id;->switcher_unlock_workwindow:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    .line 44
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 46
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "componentName"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 47
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 49
    iget-object v4, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 50
    invoke-virtual {v4, v3, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 51
    iget-object v6, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/systemui/R$string;->unlock_workwindow_appname:I

    .line 52
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    .line 53
    invoke-virtual {v5, v4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v2

    .line 51
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mActivity:Landroid/app/Activity;

    sget v5, Lcom/android/systemui/R$id;->switcher_pkgIcon:I

    invoke-virtual {v0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 56
    iget-object v5, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Landroid/os/UserHandle;

    iget v7, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mUserId:I

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v3, v2, v6}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v3

    .line 57
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 58
    new-instance v5, Landroid/os/UserHandle;

    iget v6, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mUserId:I

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "WorkLockActivityHelper"

    const-string v4, "Failed to load icon and label"

    .line 60
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    :goto_0
    new-instance v0, Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->blankView:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->blankView:Landroid/view/View;

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 64
    iget-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-direct {p0, v1}, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->setContentblank(Z)V

    goto :goto_1

    .line 67
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->setContentblank(Z)V

    :goto_1
    return-void
.end method
