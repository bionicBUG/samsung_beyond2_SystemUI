.class public Lcom/android/systemui/recents/SecScreenPinningRequest;
.super Ljava/lang/Object;
.source "SecScreenPinningRequest.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;


# instance fields
.field private final mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

.field private mAppName:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field public final mIntentBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mIsExcluded:Z

.field private mNavBarMode:I

.field private mTaskId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    new-instance v0, Lcom/android/systemui/recents/SecScreenPinningRequest$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/SecScreenPinningRequest$1;-><init>(Lcom/android/systemui/recents/SecScreenPinningRequest;)V

    iput-object v0, p0, Lcom/android/systemui/recents/SecScreenPinningRequest;->mIntentBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 55
    iput-object p1, p0, Lcom/android/systemui/recents/SecScreenPinningRequest;->mContext:Landroid/content/Context;

    .line 56
    iget-object p1, p0, Lcom/android/systemui/recents/SecScreenPinningRequest;->mContext:Landroid/content/Context;

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/android/systemui/recents/SecScreenPinningRequest;->mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    .line 58
    const-class p1, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->addListener(Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/recents/SecScreenPinningRequest;->mNavBarMode:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recents/SecScreenPinningRequest;)Landroid/app/AlertDialog;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/recents/SecScreenPinningRequest;->mDialog:Landroid/app/AlertDialog;

    return-object p0
.end method


# virtual methods
.method public checkUnableToPin()Z
    .locals 1

    .line 271
    iget-boolean p0, p0, Lcom/android/systemui/recents/SecScreenPinningRequest;->mIsExcluded:Z

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    .line 274
    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public clearPrompt()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/android/systemui/recents/SecScreenPinningRequest;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/recents/SecScreenPinningRequest;->unregisterReceivers()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/android/systemui/recents/SecScreenPinningRequest;->mDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public synthetic lambda$showPrompt$0$SecScreenPinningRequest(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/recents/SecScreenPinningRequest;->clearPrompt()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 p1, -0x1

    if-ne p1, p2, :cond_1

    .line 223
    invoke-virtual {p0}, Lcom/android/systemui/recents/SecScreenPinningRequest;->checkUnableToPin()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 224
    iget-object p1, p0, Lcom/android/systemui/recents/SecScreenPinningRequest;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->lock_to_app_unable_to_pin_toast:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/recents/SecScreenPinningRequest;->mAppName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 226
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 230
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p1

    iget p2, p0, Lcom/android/systemui/recents/SecScreenPinningRequest;->mTaskId:I

    invoke-interface {p1, p2}, Landroid/app/IActivityTaskManager;->startSystemLockTaskMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :catch_0
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/SecScreenPinningRequest;->clearPrompt()V

    return-void
.end method

.method public onNavigationModeChanged(I)V
    .locals 0

    .line 283
    iput p1, p0, Lcom/android/systemui/recents/SecScreenPinningRequest;->mNavBarMode:I

    return-void
.end method

.method public registerReceivers()V
    .locals 2

    .line 255
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 256
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 257
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.systemui.statusbar.ANIMATING"

    .line 258
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Lcom/android/systemui/recents/SecScreenPinningRequest;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/recents/SecScreenPinningRequest;->mIntentBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public showPrompt(I)V
    .locals 12

    .line 70
    iget-object v0, p0, Lcom/android/systemui/recents/SecScreenPinningRequest;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget v0, p0, Lcom/android/systemui/recents/SecScreenPinningRequest;->mTaskId:I

    if-ne v0, p1, :cond_0

    return-void

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/SecScreenPinningRequest;->clearPrompt()V

    .line 78
    :cond_1
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v0

    .line 80
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    .line 81
    invoke-static {}, Landroid/app/ActivityTaskManager;->getMaxRecentTasksStatic()I

    move-result v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 80
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRecentTasks(II)Ljava/util/List;

    move-result-object v1

    .line 83
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_5

    .line 85
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 86
    iget-object v7, v6, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v7, :cond_2

    .line 87
    iget-object v7, v6, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    goto :goto_1

    :cond_2
    iget-object v7, v6, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 88
    :goto_1
    invoke-static {}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/PackageManagerWrapper;

    move-result-object v8

    iget v9, v6, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    .line 89
    invoke-virtual {v8, v7, v9}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    .line 90
    iget v8, v6, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    if-ne v8, p1, :cond_4

    .line 91
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    iget v2, v6, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 92
    invoke-virtual {v1, v7, v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getBadgedActivityLabel(Landroid/content/pm/ActivityInfo;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/SecScreenPinningRequest;->mAppName:Ljava/lang/String;

    .line 93
    iget-object v1, v6, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    move v1, v5

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    iput-boolean v1, p0, Lcom/android/systemui/recents/SecScreenPinningRequest;->mIsExcluded:Z

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 98
    :cond_5
    :goto_3
    iput p1, p0, Lcom/android/systemui/recents/SecScreenPinningRequest;->mTaskId:I

    .line 101
    sget-boolean p1, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    if-eqz p1, :cond_6

    .line 102
    iget p1, p0, Lcom/android/systemui/recents/SecScreenPinningRequest;->mNavBarMode:I

    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    goto :goto_4

    :cond_6
    move p1, v3

    .line 105
    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/recents/SecScreenPinningRequest;->registerReceivers()V

    .line 106
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/recents/SecScreenPinningRequest;->mContext:Landroid/content/Context;

    const v4, 0x1030132

    invoke-direct {v1, v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 110
    iget-object v2, p0, Lcom/android/systemui/recents/SecScreenPinningRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    const/4 v6, 0x2

    if-ne v2, v6, :cond_7

    .line 111
    sget p1, Lcom/android/systemui/R$string;->lock_to_app_dex_title:I

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 112
    sget p1, Lcom/android/systemui/R$string;->lock_to_app_dex_desc:I

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 113
    sget p1, Lcom/android/systemui/R$string;->ok:I

    new-instance v0, Lcom/android/systemui/recents/-$$Lambda$SecScreenPinningRequest$Ww1NI_chI6E_2j1qhWSbq6IobPY;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/-$$Lambda$SecScreenPinningRequest$Ww1NI_chI6E_2j1qhWSbq6IobPY;-><init>(Lcom/android/systemui/recents/SecScreenPinningRequest;)V

    invoke-virtual {v1, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_13

    .line 115
    :cond_7
    iget-boolean v2, p0, Lcom/android/systemui/recents/SecScreenPinningRequest;->mIsExcluded:Z

    if-eqz v2, :cond_8

    .line 116
    iget-object p1, p0, Lcom/android/systemui/recents/SecScreenPinningRequest;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->lock_to_app_unable_to_pin_title:I

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/systemui/recents/SecScreenPinningRequest;->mAppName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 117
    sget p1, Lcom/android/systemui/R$string;->lock_to_app_unable_to_pin_desc:I

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const p1, 0x104000a

    .line 118
    invoke-virtual {v1, p1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_13

    .line 120
    :cond_8
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v6, p0, Lcom/android/systemui/recents/SecScreenPinningRequest;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 122
    iget-object v4, p0, Lcom/android/systemui/recents/SecScreenPinningRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getDisplayId()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->hasSoftNavigationBar(I)Z

    move-result v4

    if-eqz v4, :cond_a

    if-eqz p1, :cond_9

    .line 124
    sget v4, Lcom/android/systemui/R$layout;->screen_pinning_content_view_gesture:I

    goto :goto_5

    .line 125
    :cond_9
    sget v4, Lcom/android/systemui/R$layout;->screen_pinning_content_view_swkey:I

    goto :goto_5

    .line 126
    :cond_a
    sget v4, Lcom/android/systemui/R$layout;->screen_pinning_content_view_hwkey:I

    :goto_5
    const/4 v6, 0x0

    .line 121
    invoke-virtual {v2, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 129
    iget-object v4, p0, Lcom/android/systemui/recents/SecScreenPinningRequest;->mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v4, :cond_b

    .line 130
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_b

    move v4, v5

    goto :goto_6

    :cond_b
    move v4, v3

    :goto_6
    if-eqz v4, :cond_c

    .line 131
    iget-object v4, p0, Lcom/android/systemui/recents/SecScreenPinningRequest;->mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    .line 132
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v4

    if-eqz v4, :cond_c

    move v4, v5

    goto :goto_7

    :cond_c
    move v4, v3

    .line 134
    :goto_7
    sget v7, Lcom/android/systemui/R$id;->pinning_desc_optional:I

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 135
    iget-object v8, p0, Lcom/android/systemui/recents/SecScreenPinningRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getDisplayId()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->hasSoftNavigationBar(I)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 136
    iget-object v8, p0, Lcom/android/systemui/recents/SecScreenPinningRequest;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_d

    sget v9, Lcom/android/systemui/R$string;->screen_pinning_msg_in_gesture:I

    goto :goto_8

    :cond_d
    if-eqz v4, :cond_e

    .line 138
    sget v9, Lcom/android/systemui/R$string;->lock_to_app_recent_and_back_softkey_accessibility:I

    goto :goto_8

    .line 139
    :cond_e
    sget v9, Lcom/android/systemui/R$string;->lock_to_app_recent_and_back_softkey:I

    .line 136
    :goto_8
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 141
    :cond_f
    iget-object v8, p0, Lcom/android/systemui/recents/SecScreenPinningRequest;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_10

    .line 142
    sget v9, Lcom/android/systemui/R$string;->lock_to_app_recent_and_back_accessibility:I

    goto :goto_9

    .line 143
    :cond_10
    sget v9, Lcom/android/systemui/R$string;->lock_to_app_recent_and_back:I

    .line 141
    :goto_9
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_a
    if-nez p1, :cond_1c

    .line 148
    iget-object p1, p0, Lcom/android/systemui/recents/SecScreenPinningRequest;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 149
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    if-ne p1, v5, :cond_11

    goto :goto_b

    :cond_11
    move v5, v3

    .line 151
    :goto_b
    iget-object p1, p0, Lcom/android/systemui/recents/SecScreenPinningRequest;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v7, "navigationbar_key_order"

    invoke-static {p1, v7, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const-string v7, "ro.product.first_api_level"

    .line 156
    invoke-static {v7, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/16 v8, 0x1c

    if-ne v7, v8, :cond_12

    .line 163
    sget v7, Lcom/android/systemui/R$drawable;->pin_windows_ic_recent:I

    .line 164
    sget v8, Lcom/android/systemui/R$drawable;->pin_windows_ic_back:I

    goto :goto_d

    .line 166
    :cond_12
    iget-object v7, p0, Lcom/android/systemui/recents/SecScreenPinningRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getDisplayId()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->hasSoftNavigationBar(I)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 167
    sget v7, Lcom/android/systemui/R$drawable;->pin_windows_ic_recent:I

    goto :goto_c

    .line 168
    :cond_13
    sget v7, Lcom/android/systemui/R$drawable;->pin_windows_ic_recent_hw_delta:I

    .line 169
    :goto_c
    iget-object v8, p0, Lcom/android/systemui/recents/SecScreenPinningRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getDisplayId()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->hasSoftNavigationBar(I)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 170
    sget v8, Lcom/android/systemui/R$drawable;->pin_windows_ic_back:I

    goto :goto_d

    .line 171
    :cond_14
    sget v8, Lcom/android/systemui/R$drawable;->pin_windows_ic_back_hw_delta:I

    .line 174
    :goto_d
    iget-object v9, p0, Lcom/android/systemui/recents/SecScreenPinningRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 175
    iget-object v10, p0, Lcom/android/systemui/recents/SecScreenPinningRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getDisplayId()I

    move-result v10

    invoke-virtual {v0, v10}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->hasSoftNavigationBar(I)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 176
    sget v10, Lcom/android/systemui/R$color;->screen_pinning_dialog_button:I

    goto :goto_e

    .line 177
    :cond_15
    sget v10, Lcom/android/systemui/R$color;->screen_pinning_dialog_button_hw:I

    .line 174
    :goto_e
    invoke-virtual {v9, v10, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    .line 178
    sget v9, Lcom/android/systemui/R$id;->left_key:I

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 179
    sget v10, Lcom/android/systemui/R$id;->right_key:I

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    if-nez p1, :cond_16

    move v11, v7

    goto :goto_f

    :cond_16
    move v11, v8

    .line 180
    :goto_f
    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p1, :cond_17

    goto :goto_10

    :cond_17
    move v7, v8

    .line 181
    :goto_10
    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 182
    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 183
    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 185
    iget-object v6, p0, Lcom/android/systemui/recents/SecScreenPinningRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getDisplayId()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->hasSoftNavigationBar(I)Z

    move-result v0

    if-eqz v0, :cond_19

    if-eqz v5, :cond_19

    const/high16 v0, -0x40800000    # -1.0f

    if-nez p1, :cond_18

    .line 187
    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    goto :goto_11

    .line 189
    :cond_18
    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 192
    :cond_19
    :goto_11
    sget v0, Lcom/android/systemui/R$id;->right_gesture:I

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 193
    sget v5, Lcom/android/systemui/R$id;->left_gesture:I

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v4, :cond_1b

    const/4 v4, 0x4

    if-nez p1, :cond_1a

    .line 197
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 198
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_12

    .line 200
    :cond_1a
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_12

    .line 204
    :cond_1b
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 205
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 208
    :cond_1c
    :goto_12
    iget-object p1, p0, Lcom/android/systemui/recents/SecScreenPinningRequest;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->lock_to_app_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 209
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 210
    sget p1, Lcom/android/systemui/R$string;->lock_to_app_positive:I

    invoke-virtual {v1, p1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 213
    :goto_13
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/recents/SecScreenPinningRequest;->mDialog:Landroid/app/AlertDialog;

    .line 214
    iget-object p1, p0, Lcom/android/systemui/recents/SecScreenPinningRequest;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d8

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 215
    iget-object p1, p0, Lcom/android/systemui/recents/SecScreenPinningRequest;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 217
    iget-object p0, p0, Lcom/android/systemui/recents/SecScreenPinningRequest;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public unregisterReceivers()V
    .locals 1

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/SecScreenPinningRequest;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/recents/SecScreenPinningRequest;->mIntentBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 266
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    return-void
.end method
