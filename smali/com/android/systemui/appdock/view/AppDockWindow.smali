.class public Lcom/android/systemui/appdock/view/AppDockWindow;
.super Landroid/app/Dialog;
.source "AppDockWindow.java"

# interfaces
.implements Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTaskCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/appdock/view/AppDockWindow$AppDockBroadcastReceiver;,
        Lcom/android/systemui/appdock/view/AppDockWindow$EventBusObject;
    }
.end annotation


# instance fields
.field mAnimationHelper:Lcom/android/systemui/appdock/utils/AppDockAnimationHelper;

.field mAppDockBroadcastReceiver:Lcom/android/systemui/appdock/view/AppDockWindow$AppDockBroadcastReceiver;

.field mCheckStateAfterShowing:Z

.field mDimBgView:Landroid/view/View;

.field mDragLayer:Lcom/android/systemui/appdock/view/AppDockDragLayer;

.field mEventBusObject:Lcom/android/systemui/appdock/view/AppDockWindow$EventBusObject;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mSideView:Lcom/android/systemui/appdock/view/AppDockSideView;

.field mStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 54
    sget v0, Lcom/android/systemui/R$style;->TransparentFullscreenWindowTheme:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 248
    new-instance p1, Lcom/android/systemui/appdock/view/AppDockWindow$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/appdock/view/AppDockWindow$2;-><init>(Lcom/android/systemui/appdock/view/AppDockWindow;)V

    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockWindow;->mStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 372
    new-instance p1, Lcom/android/systemui/appdock/view/AppDockWindow$4;

    invoke-direct {p1, p0}, Lcom/android/systemui/appdock/view/AppDockWindow$4;-><init>(Lcom/android/systemui/appdock/view/AppDockWindow;)V

    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockWindow;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 55
    invoke-static {}, Lcom/android/systemui/appdock/utils/LogHelper;->debug()V

    .line 56
    invoke-virtual {p0}, Landroid/app/Dialog;->create()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/appdock/view/AppDockWindow;Z)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/android/systemui/appdock/view/AppDockWindow;->startBlurAnimator(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/appdock/view/AppDockWindow;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/systemui/appdock/view/AppDockWindow;->onTaskChanged()V

    return-void
.end method

.method private initInternal()V
    .locals 2

    .line 70
    sget v0, Lcom/android/systemui/R$id;->appdock_drag_layer:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/appdock/view/AppDockDragLayer;

    iput-object v0, p0, Lcom/android/systemui/appdock/view/AppDockWindow;->mDragLayer:Lcom/android/systemui/appdock/view/AppDockDragLayer;

    .line 71
    sget v0, Lcom/android/systemui/R$id;->appdock_dim_bg_view:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/appdock/view/AppDockWindow;->mDimBgView:Landroid/view/View;

    .line 72
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockWindow;->mDimBgView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/appdock/view/-$$Lambda$AppDockWindow$a7701xyNNfUuTH3lePzV1YRV24M;

    invoke-direct {v1, p0}, Lcom/android/systemui/appdock/view/-$$Lambda$AppDockWindow$a7701xyNNfUuTH3lePzV1YRV24M;-><init>(Lcom/android/systemui/appdock/view/AppDockWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    sget v0, Lcom/android/systemui/R$id;->appdock_side_view:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/appdock/view/AppDockSideView;

    iput-object v0, p0, Lcom/android/systemui/appdock/view/AppDockWindow;->mSideView:Lcom/android/systemui/appdock/view/AppDockSideView;

    .line 75
    new-instance v0, Lcom/android/systemui/appdock/view/AppDockWindow$EventBusObject;

    invoke-direct {v0, p0}, Lcom/android/systemui/appdock/view/AppDockWindow$EventBusObject;-><init>(Lcom/android/systemui/appdock/view/AppDockWindow;)V

    iput-object v0, p0, Lcom/android/systemui/appdock/view/AppDockWindow;->mEventBusObject:Lcom/android/systemui/appdock/view/AppDockWindow$EventBusObject;

    .line 76
    new-instance v0, Lcom/android/systemui/appdock/utils/AppDockAnimationHelper;

    invoke-direct {v0}, Lcom/android/systemui/appdock/utils/AppDockAnimationHelper;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/appdock/view/AppDockWindow;->mAnimationHelper:Lcom/android/systemui/appdock/utils/AppDockAnimationHelper;

    .line 78
    new-instance v0, Lcom/android/systemui/appdock/view/AppDockWindow$AppDockBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/systemui/appdock/view/AppDockWindow$AppDockBroadcastReceiver;-><init>(Lcom/android/systemui/appdock/view/AppDockWindow;)V

    iput-object v0, p0, Lcom/android/systemui/appdock/view/AppDockWindow;->mAppDockBroadcastReceiver:Lcom/android/systemui/appdock/view/AppDockWindow$AppDockBroadcastReceiver;

    return-void
.end method

.method private initWindowParams()V
    .locals 3

    .line 89
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    const/16 v1, 0x8b2

    .line 91
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x402

    .line 92
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, -0x2

    .line 94
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 95
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 96
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/4 v1, 0x1

    .line 97
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/16 v1, 0x40

    .line 99
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    const-string v1, "MW : AppDockWindow"

    .line 100
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v1, 0x11

    .line 101
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v1, 0x3dcccccd    # 0.1f

    .line 102
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 103
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private loadAppList()V
    .locals 1

    .line 191
    invoke-static {}, Lcom/android/systemui/appdock/utils/LogHelper;->debug()V

    .line 192
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->get(Landroid/content/Context;)Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->preload(Lcom/android/systemui/appdock/model/AppDockAppListLoader$LoadingTaskCallbacks;)V

    return-void
.end method

.method private onTaskChanged()V
    .locals 0

    return-void
.end method

.method private registerCallStateListener()V
    .locals 2

    const/4 v0, 0x0

    .line 362
    iput-boolean v0, p0, Lcom/android/systemui/appdock/view/AppDockWindow;->mCheckStateAfterShowing:Z

    .line 363
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockWindow;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v1, 0x20

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method private registerReceiver()V
    .locals 2

    .line 160
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 161
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 162
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.systemui.statusbar.ANIMATING"

    .line 163
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockWindow;->mAppDockBroadcastReceiver:Lcom/android/systemui/appdock/view/AppDockWindow$AppDockBroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private reloadAppList()V
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockWindow;->mSideView:Lcom/android/systemui/appdock/view/AppDockSideView;

    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockSideView;->reload()V

    return-void
.end method

.method private startBlurAnimator(Z)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 120
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "isEnter=%b"

    invoke-static {v1, v0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    const p1, 0x3dcccccd    # 0.1f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 121
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/appdock/view/AppDockWindow;->updateBlurAmount(F)V

    return-void
.end method

.method private unregisterCallStateListener()V
    .locals 2

    .line 368
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockWindow;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method private updateBlurAmount(F)V
    .locals 1

    .line 125
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 126
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 127
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private updateSystemUiVisibility()V
    .locals 1

    .line 116
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x700

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method


# virtual methods
.method public composeEnterAnimation(Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 6

    .line 317
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 320
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/animation/PropertyValuesHolder;

    .line 321
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v1, v1, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v1, v4

    .line 322
    invoke-static {v3, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v2, v4

    .line 321
    invoke-static {p1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 323
    sget-object v1, Lcom/android/systemui/appdock/utils/AppDockAnimationHelper;->easeOutCirc:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x15e

    .line 324
    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 325
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object p0
.end method

.method public composeExitAnimation(Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 8

    .line 332
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 334
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/animation/PropertyValuesHolder;

    .line 335
    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    .line 336
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v6

    const/4 v7, 0x0

    aput v6, v5, v7

    aput v1, v5, v2

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v3, v7

    .line 335
    invoke-static {p1, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 337
    sget-object v1, Lcom/android/systemui/appdock/utils/AppDockAnimationHelper;->exitInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x15e

    .line 338
    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 339
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object p0
.end method

.method public dismiss()V
    .locals 0

    .line 274
    invoke-static {}, Lcom/android/systemui/appdock/utils/LogHelper;->debug()V

    .line 275
    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockWindow;->startExitAnimation()V

    return-void
.end method

.method public executeDismiss()V
    .locals 1

    .line 279
    invoke-static {}, Lcom/android/systemui/appdock/utils/LogHelper;->debug()V

    .line 280
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 281
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->get(Landroid/content/Context;)Lcom/android/systemui/appdock/view/AppDockHandlerViewController;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->showAndHide(Z)V

    return-void
.end method

.method public synthetic lambda$initInternal$0$AppDockWindow(Landroid/view/View;)V
    .locals 0

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockWindow;->startExitAnimation()V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 208
    sget v0, Lcom/android/systemui/R$id;->appdock_grid_content:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/appdock/view/AppDockGridContentView;

    .line 209
    invoke-virtual {v0}, Lcom/android/systemui/appdock/view/AppDockGridContentView;->getState()Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;->SEARCH:Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;

    if-ne v0, v1, :cond_0

    .line 210
    sget v0, Lcom/android/systemui/R$id;->appdock_search_edit_clear:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    return-void

    .line 214
    :cond_0
    invoke-static {}, Lcom/android/systemui/appdock/AppDockStateManager;->get()Lcom/android/systemui/appdock/AppDockStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/appdock/AppDockStateManager;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    invoke-static {}, Lcom/android/systemui/appdock/AppDockStateManager;->get()Lcom/android/systemui/appdock/AppDockStateManager;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/appdock/AppDockStateManager$EditAction;->ACTION_EDIT_CANCEL:Lcom/android/systemui/appdock/AppDockStateManager$EditAction;

    invoke-virtual {v0, v1}, Lcom/android/systemui/appdock/AppDockStateManager;->updateEditMode(Lcom/android/systemui/appdock/AppDockStateManager$EditAction;)V

    .line 216
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockWindow;->mDragLayer:Lcom/android/systemui/appdock/view/AppDockDragLayer;

    invoke-static {p0}, Lcom/android/systemui/appdock/utils/AppDockAnimationHelper;->requestLayoutChangeAnimation(Landroid/view/View;)V

    return-void

    .line 220
    :cond_1
    invoke-static {}, Lcom/android/systemui/appdock/AppDockStateManager;->get()Lcom/android/systemui/appdock/AppDockStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/appdock/AppDockStateManager;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 221
    invoke-static {}, Lcom/android/systemui/appdock/AppDockStateManager;->get()Lcom/android/systemui/appdock/AppDockStateManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/appdock/AppDockStateManager;->setExpanded(Z)V

    .line 222
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockWindow;->mDragLayer:Lcom/android/systemui/appdock/view/AppDockDragLayer;

    invoke-static {p0}, Lcom/android/systemui/appdock/utils/AppDockAnimationHelper;->requestLayoutChangeAnimation(Landroid/view/View;)V

    return-void

    .line 226
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockWindow;->startExitAnimation()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 61
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 62
    sget p1, Lcom/android/systemui/R$layout;->window_winner_appdock:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 63
    invoke-static {}, Lcom/android/systemui/appdock/utils/LogHelper;->debug()V

    .line 65
    invoke-direct {p0}, Lcom/android/systemui/appdock/view/AppDockWindow;->initWindowParams()V

    .line 66
    invoke-direct {p0}, Lcom/android/systemui/appdock/view/AppDockWindow;->initInternal()V

    return-void
.end method

.method public onPostExecute()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockWindow;->mSideView:Lcom/android/systemui/appdock/view/AppDockSideView;

    invoke-virtual {v0}, Lcom/android/systemui/appdock/view/AppDockSideView;->getProgressView()Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 203
    invoke-direct {p0}, Lcom/android/systemui/appdock/view/AppDockWindow;->reloadAppList()V

    return-void
.end method

.method public onPreExecute()V
    .locals 1

    .line 197
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockWindow;->mSideView:Lcom/android/systemui/appdock/view/AppDockSideView;

    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockSideView;->getProgressView()Landroid/widget/ProgressBar;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 132
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 133
    invoke-static {}, Lcom/android/systemui/appdock/utils/LogHelper;->debug()V

    .line 135
    invoke-static {}, Lcom/android/systemui/appdock/AppDockStateManager;->get()Lcom/android/systemui/appdock/AppDockStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/appdock/AppDockStateManager;->resetStates()V

    const/4 v0, 0x0

    .line 136
    invoke-static {v0}, Lcom/android/systemui/appdock/utils/AppDockAnimationHelper;->setIsLayoutChangeAnimRunning(Z)V

    .line 137
    invoke-static {}, Lcom/android/systemui/appdock/event/EventBus;->getDefault()Lcom/android/systemui/appdock/event/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/appdock/view/AppDockWindow;->mEventBusObject:Lcom/android/systemui/appdock/view/AppDockWindow$EventBusObject;

    invoke-virtual {v0, v1}, Lcom/android/systemui/appdock/event/EventBus;->register(Ljava/lang/Object;)V

    .line 138
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/appdock/view/AppDockWindow;->mStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 140
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockWindow;->mSideView:Lcom/android/systemui/appdock/view/AppDockSideView;

    invoke-virtual {v0}, Lcom/android/systemui/appdock/view/AppDockSideView;->onStart()V

    .line 141
    invoke-direct {p0}, Lcom/android/systemui/appdock/view/AppDockWindow;->loadAppList()V

    .line 143
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockWindow;->mDragLayer:Lcom/android/systemui/appdock/view/AppDockDragLayer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/appdock/view/AppDockWindow$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/appdock/view/AppDockWindow$1;-><init>(Lcom/android/systemui/appdock/view/AppDockWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x1

    .line 154
    invoke-direct {p0, v0}, Lcom/android/systemui/appdock/view/AppDockWindow;->startBlurAnimator(Z)V

    .line 155
    invoke-direct {p0}, Lcom/android/systemui/appdock/view/AppDockWindow;->registerReceiver()V

    .line 156
    invoke-direct {p0}, Lcom/android/systemui/appdock/view/AppDockWindow;->registerCallStateListener()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 169
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 170
    invoke-static {}, Lcom/android/systemui/appdock/utils/LogHelper;->debug()V

    .line 171
    invoke-static {}, Lcom/android/systemui/appdock/event/EventBus;->getDefault()Lcom/android/systemui/appdock/event/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/appdock/view/AppDockWindow;->mEventBusObject:Lcom/android/systemui/appdock/view/AppDockWindow$EventBusObject;

    invoke-virtual {v0, v1}, Lcom/android/systemui/appdock/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 172
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/appdock/view/AppDockWindow;->mStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 174
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockWindow;->mSideView:Lcom/android/systemui/appdock/view/AppDockSideView;

    invoke-virtual {v0}, Lcom/android/systemui/appdock/view/AppDockSideView;->onStop()V

    .line 176
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->get(Landroid/content/Context;)Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->clearIconCache()V

    .line 178
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/appdock/view/AppDockWindow;->mAppDockBroadcastReceiver:Lcom/android/systemui/appdock/view/AppDockWindow$AppDockBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 179
    invoke-direct {p0}, Lcom/android/systemui/appdock/view/AppDockWindow;->unregisterCallStateListener()V

    .line 181
    invoke-static {}, Lcom/android/systemui/appdock/AppDockStateManager;->get()Lcom/android/systemui/appdock/AppDockStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/appdock/AppDockStateManager;->isInEditMode()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 182
    invoke-static {}, Lcom/android/systemui/appdock/AppDockStateManager;->get()Lcom/android/systemui/appdock/AppDockStateManager;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/appdock/AppDockStateManager$EditAction;->ACTION_EDIT_CANCEL:Lcom/android/systemui/appdock/AppDockStateManager$EditAction;

    invoke-virtual {p0, v0}, Lcom/android/systemui/appdock/AppDockStateManager;->updateEditMode(Lcom/android/systemui/appdock/AppDockStateManager$EditAction;)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 83
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowFocusChanged : hasFocus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-direct {p0}, Lcom/android/systemui/appdock/view/AppDockWindow;->updateSystemUiVisibility()V

    return-void
.end method

.method public startEnterAnimation()V
    .locals 7

    .line 285
    invoke-static {}, Lcom/android/systemui/appdock/utils/LogHelper;->debug()V

    .line 287
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockWindow;->mDimBgView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 289
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 290
    iget-object v1, p0, Lcom/android/systemui/appdock/view/AppDockWindow;->mDimBgView:Landroid/view/View;

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/animation/PropertyValuesHolder;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v2, v5

    .line 291
    invoke-static {v4, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v3, v5

    .line 290
    invoke-static {v1, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 292
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 293
    iget-object v1, p0, Lcom/android/systemui/appdock/view/AppDockWindow;->mSideView:Lcom/android/systemui/appdock/view/AppDockSideView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/appdock/view/AppDockWindow;->composeEnterAnimation(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 294
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public startExitAnimation()V
    .locals 7

    .line 298
    invoke-static {}, Lcom/android/systemui/appdock/utils/LogHelper;->debug()V

    const/4 v0, 0x0

    .line 299
    invoke-direct {p0, v0}, Lcom/android/systemui/appdock/view/AppDockWindow;->startBlurAnimator(Z)V

    .line 301
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 303
    iget-object v2, p0, Lcom/android/systemui/appdock/view/AppDockWindow;->mDimBgView:Landroid/view/View;

    const/4 v3, 0x1

    new-array v4, v3, [Landroid/animation/PropertyValuesHolder;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v3, [F

    const/4 v6, 0x0

    aput v6, v3, v0

    .line 304
    invoke-static {v5, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v4, v0

    .line 303
    invoke-static {v2, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 305
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 306
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockWindow;->mSideView:Lcom/android/systemui/appdock/view/AppDockSideView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/appdock/view/AppDockWindow;->composeExitAnimation(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 307
    new-instance v0, Lcom/android/systemui/appdock/view/AppDockWindow$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/appdock/view/AppDockWindow$3;-><init>(Lcom/android/systemui/appdock/view/AppDockWindow;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 313
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
